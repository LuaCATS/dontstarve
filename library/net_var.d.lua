---@meta

---@class NetVar
local NetVar = {}
function NetVar:setlocal(value) end

function NetVar:set(value) end

function NetVar:value() end

---@param guid lightuserdata
---@param member_var_name string
---@param changed_event_name string
---@return NetVar
function net_bool(guid, member_var_name, changed_event_name) end

net_float = net_bool

net_byte = net_bool

net_shortint = net_bool

net_ushortint = net_bool

net_int = net_bool

net_uint = net_bool

net_bool = net_bool

net_hash = net_bool

net_string = net_bool

net_entity = net_bool

net_tinybyte = net_bool

net_smallbyte = net_bool

net_bytearray = net_bool

net_smallbytearray = net_bool

net_ushortarray = net_bool
