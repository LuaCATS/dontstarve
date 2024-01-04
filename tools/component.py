import sys
Name = sys.argv[1]


import io
f = io.open(f"engine_component/{Name}.d.lua", 'w+')

f.write(f"""
---@meta

---@class {Name}
local {Name} = {{}}
""")


