local helper = require 'plugins.astHelper'
local guide = require 'parser.guide'
local fs = require 'bee.filesystem'

local function addTableInit(tableAst, valueAst)
    tableAst.value = valueAst
    valueAst.parent = tableAst
end

local typename = 'EntityScript'
function OnTransformAst(uri, ast)
    local ctors ={}
    local className
    ---add class
    guide.eachSourceType(ast, "call", function (source)
        local node = source.node
        if not guide.isGet(node) then
            return
        end
        if not guide.isGlobal(node) then
            return
        end
        if guide.getKeyName(node) ~= 'Class' then
            return
        end
        local wants = {
            ['local'] = true,
            ['setglobal'] = true,
            ['return'] = true
        }
        --可能没有变量 直接返回的
        local classnameNode = guide.getParentTypes(source, wants)
        if not classnameNode then
            return
        end
        local classname
        if classnameNode.type == 'return' then
            -- 文件名作为类名
            classname = fs.path(uri):stem():string()
            classnameNode = nil
        else
            classname = guide.getKeyName(classnameNode)
        end
        if not classname then
            return
        end

        className = classname

        local arg1 = guide.getParam(source, 1)
        if not arg1 then
            return
        end

        local base
        local ctor
        local initTable = guide.getParam(source, 3)
        if arg1.type == 'function' then
            ctor = arg1
        elseif guide.isGlobal(arg1) or arg1.type == 'getlocal' then
            base = arg1
            ctor = guide.getParam(source, 2)
        end

        if base then
            classname = classname .. ":" .. guide.getKeyName(base)
        end

        if ctor then
            if #guide.getParams(ctor) == 2 then
                local inst_param = guide.getParam(ctor, 2)
                if inst_param and guide.getKeyName(inst_param) == 'inst' then
                    helper.addParamTypeDoc(ast, typename, inst_param)
                end
            end

            local self_param = guide.getParam(ctor, 1)
            if self_param and guide.getKeyName(self_param) == 'self' then
                helper.addClassDocAtParam(ast, classname, ctor, 1)
                if initTable then
                    -- 无视这个比较好
                    --addTableInit(self_param, initTable)
                    --helper.removeArg(source, 3)
                end
            end

            ctors[ctor] = classname
        end
        
        if classnameNode then
            helper.addClassDoc(ast, classnameNode, classname)
        end
    end)
    --- 给所有的本地函数的 self 参数挂类型
    guide.eachSourceType(ast, "function", function (src)
        if guide.getParentBlock(src).type ~= 'main' then
            return
        end
        if ctors[src] then
            return
        end
        local params = guide.getParams(src)
        if not params then
            return
        end

        for i, param in ipairs(params) do
            local name = guide.getKeyName(param)
            if className and src.parent.type ~= 'setmethod' and name == 'self'  then
                helper.addParamTypeDoc(ast, className, param)
            elseif name == 'inst' then
                helper.addParamTypeDoc(ast, typename, param)
            end
        end
    end)
    return ast
end

return OnTransformAst