local old_require = require
local target_path = "plugins.test"
local fs = require "bee.filesystem"
local plugin_root = os.getenv("PLUGIN_ROOT")
assert(plugin_root, "PLUGIN_ROOT environment variable is not set")
local library_root = plugin_root .. "/library"
package.path =  library_root .. "/?.lua;" .. library_root .. "/?/init.lua;" .. package.path
local real_test_file = fs.path(plugin_root)/ 'test' / "plugin_test.lua"
require = function (name)
    if (name) == target_path then
        return dofile(real_test_file:string())
    end
    if name == 'plugin.dontstarve' then
        return dofile((plugin_root .. '/plugin/dontstarve.lua'):gsub('\\', '/'))
    end
    return old_require(name)
end