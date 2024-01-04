local keyword = "Class"
local var_regx = "%a[%w_]*"
local class_context_regx = ("()%%s*(%s)%%s*=%%s*Class%%s*(%%b())()"):format(var_regx)

local function create_class_define(islocal, class, base, param, body, props)
    -- classname[:base]
    --- field is_a function(self, klass):boolean
    --- field is_class function(self):boolean
    --- field is_instance function(obj):boolean
    --- field _ctor function(...):T
    local header = ("---@class %s"):format(class)

    return (
        [[

%s%s
%s=function%s
%s
%s
%s
%s
end
]]):format(header, base and (":%s"):format(base) or "",
        islocal and ("local %s"):format(class) or class, param,
        header,
        props ~= nil and ("local self = %s\n"):format(props) or "local self = {}\n",
        body,
        body:find("%s+return%s+self%s+") and "" or "return self")
end

local function handle_single_class(context)
    local base_regex = ("^%%s*(%s)%%s*,%%s*()"):format(var_regx)
    local base, pos = context:match(base_regex)
    if base then
        context = context:sub(pos)
    end
    local function_regx = "^%s*function%s*(%b())(.*)end()"
    local param, body, pos = context:match(function_regx)
    if not param then
        return
    end
    context = context:sub(pos)
    -- remove self,
    param = param:gsub("self%s*,*", "", 1)

    local props_regx = "^%s*,%s*(%b{})%s*$"
    local props = context:match(props_regx)

    return base, param, body, props
end

local function create_class(text)
    local pos = text:find(keyword, 0, true)
    if not pos then
        return
    end
    ---@type diff[]
    local diffs = {}
    for startpos, classname, context, endpos in text:gmatch(class_context_regx) do
        context = context:sub(2, #context - 1)
        local base, param, body, props = handle_single_class(context)
        if param then
            local localpos = text:find(("local%%s*%s"):format(classname))
            local islocal = localpos and startpos - localpos <= 32 or false
            if islocal then
                startpos = localpos
            end
            local new_context = create_class_define(islocal, classname, base, param, body, props)
            diffs[#diffs + 1] = {
                start = tonumber(startpos),
                finish = tonumber(endpos),
                text = new_context .. ([[
---@return boolean
function %s:is_a(klass) return true end
---@return boolean
function %s:is_class() return true end
---@return boolean
function %s.is_instance(obj) return true end
%s._ctor = %s
]]
                ):format(classname, classname, classname, classname, classname)
            }
        end
    end
    if #diffs == 0 then
        return
    end
    return diffs
end

---@param text string
local function create_function_param_inst(diffs, text)
    if not string.find(text, "inst", 1, true) then
        return diffs
    end
    for fn_def, endpos in text:gmatch("function%s*(%b())()") do
        if fn_def:find("[%s,]*inst[%s,]*") then
            diffs = diffs or {}
            diffs[#diffs + 1] = {
                start = endpos,
                finish = endpos,
                text = " ---@param inst EntityScript\n" .. text:sub(endpos, endpos)
            }
        end
    end
    return diffs
end
---@class diff
---@field start  integer # The number of bytes at the beginning of the replacement
---@field finish integer # The number of bytes at the end of the replacement
---@field text   string  # What to replace

---@param  uri  string # The uri of file
---@param  text string # The content of file
---@return nil|diff[]
function OnSetText(uri, text)
    local diffs = create_class(text)

    return create_function_param_inst(diffs, text)
end

return {
    handle_single_class = handle_single_class,
    create_class_define = create_class_define,
    create_class = create_class,
    create_function_param_inst = create_function_param_inst,
}
