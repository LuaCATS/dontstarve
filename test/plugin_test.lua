local fs = require("bee.filesystem")
local files = require("files")
local scope = require("workspace.scope")

---@diagnostic disable: await-in-sync
local function TestPlugin(script, plugin, checker)
	files.open(TESTURI)
	files.setText(TESTURI, script, true)
	scope.getScope(TESTURI):set("pluginInterfaces", { { OnTransformAst = plugin } })
	local state = files.getState(TESTURI)
	checker(state)
	files.remove(TESTURI)
end

local old_path = package.path
local info = debug.getinfo(1, "S")
local search_path = (fs.path(info.source:sub(2)) / ".." / ".."):string()
package.path = package.path .. ";" .. search_path .. "/?.lua" .. ";" .. search_path .. "/?/init.lua"

local myplugin = require("plugin.dontstave")
package.path = old_path

local function AssertDocClass(doc, name)
	name = name or "m"
	assert(doc.class[1] == name)
	assert(doc.type == "doc.class")
end
local function AssertDocClassExtend(doc, extend)
	assert(doc.extends[1][1] == extend)
	assert(doc.extends[1].type == "doc.extends.name")
end
local function AssertParamType(doc, t)
	local extends = doc.extends
	assert(extends.type == "doc.type")
	assert(extends.types[1][1] == t)
end
local function AssertParamTypeEntityScript(doc)
	AssertParamType(doc, "EntityScript")
end
local function AssertParamTypeM(doc)
	AssertParamType(doc, "m")
end
TestPlugin(
	[[
return Class(function(self, inst)
    self.a = 1
end)
]],
	myplugin,
	function(state)
		AssertDocClass(state.ast[1][1].args[1].locals[1].bindDocs[1], "unittest")
		AssertParamTypeEntityScript(state.ast[1][1].args[1].args[1].bindDocs[1])
	end
)

TestPlugin(
	[[
local function f(self)end
]],
	myplugin,
	function(state)
		assert(not state.ast[1].value.args[1].bindDocs)
	end
)

TestPlugin(
	[[
local function f(inst)end
]],
	myplugin,
	function(state)
		AssertParamTypeEntityScript(state.ast[1].value.args[1].bindDocs[1])
	end
)

TestPlugin(
	[[
local m = Class(function()end)
]],
	myplugin,
	function(state)
		AssertDocClass(state.ast[1].bindDocs[1])
	end
)

TestPlugin(
	[[
m = Class(function()end)
]],
	myplugin,
	function(state)
		AssertDocClass(state.ast[1].bindDocs[1])
	end
)

TestPlugin(
	[[
m = Class(Base,function()end)
]],
	myplugin,
	function(state)
		AssertDocClass(state.ast[1].bindDocs[1])
		AssertDocClassExtend(state.ast[1].bindDocs[1], "Base")
	end
)

TestPlugin(
	[[
m = Class(Base,function(self)end, {a = 1})
]],
	myplugin,
	function(state)
		AssertDocClass(state.ast[1].bindDocs[1])
		AssertDocClassExtend(state.ast[1].bindDocs[1], "Base")
		local doc = state.ast[1].value.vararg.args[2].locals[1]
		AssertDocClass(doc.bindDocs[1])
		assert(doc.value)
		assert(doc.value.type == "table")
	end
)

TestPlugin(
	[[
local m = Class(function()end)
local function f(self,inst)end
]],
	myplugin,
	function(state)
		AssertParamTypeM(state.ast[2].value.args[1].bindDocs[1])
		AssertParamTypeEntityScript(state.ast[2].value.args[2].bindDocs[1])
	end
)

TestPlugin(
	[[
local m = Class(function()end)
function m:f()end
]],
	myplugin,
	function(state)
		assert(not state.ast[2].value.args[1].bindDocs)
	end
)

TestPlugin(
	[[
local m = Class(function()end)
local function f(self)end
]],
	myplugin,
	function(state)
		AssertParamTypeM(state.ast[2].value.args[1].bindDocs[1])
	end
)

TestPlugin(
	[[
    EntityScript = Class(function(self, entity)end)
]],
	myplugin,
	function(state)
		AssertDocClass(state.ast[1].bindDocs[1], "EntityScript")
	end
)
