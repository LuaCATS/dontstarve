---@meta

---@return entityscript
function CreateEntity(name) end

---@generic T
---@param name `T`
---@return `T`|entityscript
function SpawnPrefab(name, skin, skin_id, creator) end

---@return entityscript
function ReplacePrefab(original_inst, name, skin, skin_id, creator) end
