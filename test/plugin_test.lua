---@meta
local dt = require 'dontstave'

local function cmp(v1, v2, key)
    if v1 == v2 then
        return
    end
    if key then
        print("error:", key, "\n")
    else
        print("error:\n")
    end
    print("v1:\n", v1, "\n")
    print("v2:\n", v2, "\n")
    assert(false)
    return false
end

local function table_cmp(t1, t2)
    for key, value in pairs(t1) do
        if not cmp(t2[key], value, key) then
            return false
        end
    end
    return true
end

local function Test(input)
    local b1 = { dt.handle_single_class(input) }
    return function(output)
        table_cmp(b1, output)
        return function(output1)
            cmp(dt.create_class_define(false, "a", b1[1], b1[2], b1[3], b1[4]), output1, "class_define")
        end
    end
end

Test [[
    function()
end
]] {
    nil,
    "()",
    "\n",
    nil
}

Test [[
    jjsaid_1,function()
end
]] {
    "jjsaid_1",
    "()",
    "\n",
    nil
}

Test [[
    function()
end,{hh=1}
]] {
    nil,
    "()",
    "\n",
    "{hh=1}"
}

Test [[
    b,function(self)
end,{
        jj=1
    }
]] {
    "b",
    "()",
    "\n",
    [[{
        jj=1
    }]]
} [[

---@class a:b
a=function()
---@class a
local self = {
        jj=1
    }



end
]]


Test [[
    function(self)
end,{
        jj=1
    }
]] {
    nil,
    "()",
    "\n",
    [[{
        jj=1
    }]]
} [[

---@class a
a=function()
---@class a
local self = {
        jj=1
    }



end
]]


Test [[
    function(self)
return self
end
]] {
    nil,
    "()",
    "return self",
    nil
} [[

---@class a
a=function()
---@class a
local self = {}


return self

end
]]

Test [[
    function(self)
end
]] {
    nil,
    "()",
    "\n",
    [[{
        jj=1
    }]]
} [[

---@class a
a=function()
---@class a
local self = {}



end
]]



Test [[
    function(self)
        self.a=1
end
]] {
    nil,
    "()",
    "\n",
    [[{
        jj=1
    }]]
} [[

---@class a
a=function()
---@class a
local self = {}


        self.a=1

end
]]

function TEST_create_class(input)
    local diffs = dt.create_class(input)
    assert(diffs)
    return function(output)
        cmp(diffs[1].text, output)
    end
end

TEST_create_class [[hh=Class(function(self)end)]]([[

---@class hh
hh=function()
---@class hh
local self = {}


end
---@return boolean
function hh:is_a(klass) return true end
---@return boolean
function hh:is_class() return true end
---@return boolean
function hh.is_instance(obj) return true end
hh._ctor = hh
]])


TEST_create_class [[local hh=Class(function(self)end)]]([[

---@class hh
local hh=function()
---@class hh
local self = {}


end
---@return boolean
function hh:is_a(klass) return true end
---@return boolean
function hh:is_class() return true end
---@return boolean
function hh.is_instance(obj) return true end
hh._ctor = hh
]])

function TEST_create_function_param_inst(input)
    local diffs = dt.create_function_param_inst(nil, input)
    assert(diffs)
    return function(output)
        cmp(input:sub(1, diffs[1].start - 1) .. diffs[1].text .. input:sub(diffs[1].finish+1), output)
    end
end

TEST_create_function_param_inst [[a=function(inst)end]]([[a=function(inst) ---@param inst EntityScript
end]])


assert(dt.isInvaildLine("--end"))

assert(dt.isInvaildLine("--afkasjfasd;osak;dk end"))
assert(dt.isInvaildLine([[
    --afkasjfasd;osak;dk end]]))