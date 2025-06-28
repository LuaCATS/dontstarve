local helper = require("plugins.astHelper")
local guide = require("parser.guide")
local fs = require("bee.filesystem")

local function addTableInit(tableAst, valueAst)
	tableAst.value = valueAst
	valueAst.parent = tableAst
end

local typenames = {
	inst = "entityscript",
	act = "bufferedaction",
}
function OnTransformAst(uri, ast)
	local ctors = {}
	local className

	local CustomAsts = {
		Class = function(source)
			local wants = {
				["local"] = true,
				["setglobal"] = true,
				["return"] = true,
			}
			--可能没有变量 直接返回的
			local classnameNode = guide.getParentTypes(source, wants)
			if not classnameNode then
				return
			end
			---@type string
			local filename = fs.path(uri):stem():string()
			local classname = (classnameNode.type == "return" or filename:find("_replica")) and filename
				or guide.getKeyName(classnameNode)
			if not classname then
				return
			end
			classname = classname:lower()
			className = classname

			local arg1 = guide.getParam(source, 1)
			if not arg1 then
				return
			end

			local base
			local ctor
			local initTable = guide.getParam(source, 3)
			if arg1.type == "function" then
				ctor = arg1
			elseif guide.isGlobal(arg1) or arg1.type == "getlocal" then
				base = arg1
				ctor = guide.getParam(source, 2)
			end

			if base then
				local base_name = guide.getKeyName(base)
				assert(base_name, "base class name is nil")
				classname = classname .. ":" .. base_name:lower()
			end

			if ctor then
				if #guide.getParams(ctor) == 2 then
					local inst_param = guide.getParam(ctor, 2)
					if inst_param and guide.getKeyName(inst_param) == "inst" then
						helper.addParamTypeDoc(ast, typenames.inst, inst_param)
					end
				end

				local self_param = guide.getParam(ctor, 1)
				if self_param and guide.getKeyName(self_param) == "self" then
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
				if ctor then
					local args = {}
					for i, arg in ipairs(ctor.args) do
						local paramName = guide.getKeyName(arg)
						if typenames[paramName] then
							paramName = paramName .. ":" .. typenames[paramName]
						end
						args[#args + 1] = paramName
					end
					local func = ("fun(%s):%s"):format(table.concat(args, ","), className)
					helper.InsertDoc(ast, helper.buildComment("overload", func, classnameNode.start))
				end
				helper.addClassDoc(ast, classnameNode, classname)
			end
		end,
		Prefab = function(source)
			local prefab_name_node = guide.getParam(source, 1)
			local ctor_node = guide.getParam(source, 2)
			if not prefab_name_node or not ctor_node then
				return
			end
			local prefab_name = guide.getKeyNameOfLiteral(prefab_name_node)
			if not prefab_name then
				return
			end
			-- 判断ctor是直接声明还是引用
			if guide.isGet(ctor_node) then
				local ctor_fn_name = guide.getKeyName(ctor_node)
				assert(ctor_fn_name, "ctor function name is nil")
				-- search ctor_node
				for i, v in ipairs(ast.locals) do
					if guide.getKeyName(v) == ctor_fn_name then
						ctor_node = v
						break
					end
				end
			end
			local CreateEntity_node =
				guide.eachSourceType(ctor_node, 'call', function(source)
					local name = guide.getKeyName(source.node)
					if name ~= 'CreateEntity' then
						return
					end
					return source
				end)
			-- local inst = CreateEntity(...)
			if not CreateEntity_node then
				return
			end
			local inst_node = guide.getParentTypes(CreateEntity_node, { ["local"] = true })
			if not inst_node then
				return
			end
			local class_comment = prefab_name .. ":" .. typenames.inst
			helper.addClassDoc(ast, inst_node, class_comment)
		end
	}


	---add class
	guide.eachSourceType(ast, "call", function(source)
		local node = source.node
		if not guide.isGet(node) then
			return
		end
		if not guide.isGlobal(node) then
			return
		end
		local name = guide.getKeyName(node)
		if not name then
			return
		end
		if not CustomAsts[name] then
			return
		end
		return CustomAsts[name](source)
	end)
	--- 给所有的本地函数的 self 参数挂类型
	guide.eachSourceType(ast, "function", function(src)
		if guide.getParentBlock(src).type ~= "main" then
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
			if className and name == "self" and src.parent.type ~= "setmethod" and src.parent.type ~= "setfield" then
				helper.addParamTypeDoc(ast, className, param)
			elseif typenames[name] then
				helper.addParamTypeDoc(ast, typenames[name], param)
			end
		end
	end)
	return ast
end

return OnTransformAst
