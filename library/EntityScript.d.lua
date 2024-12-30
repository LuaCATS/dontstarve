---@meta
---@class entityscript
local EntityScript = {}

---@type AccountManager
EntityScript.AccountManager = {}
---@type AnimState
EntityScript.AnimState = {}
---@type DebugRender
EntityScript.DebugRender = {}
---@type EnvelopeManager
EntityScript.EnvelopeManager = {}
---@type Follower
EntityScript.Follower = {}
---@type FontManager
EntityScript.FontManager = {}
---@type GraphicsOptions
EntityScript.GraphicsOptions = {}
---@type GroundCreep
EntityScript.GroundCreep = {}
---@type GroundCreepEntity
EntityScript.GroundCreepEntity = {}
---@type Image
EntityScript.Image = {}
---@type Label
EntityScript.Label = {}
---@type Light
EntityScript.Light = {}
---@type MapLayerManager
EntityScript.MapLayerManager = {}
---@type Network
EntityScript.Network = {}
---@type PostProcessor
EntityScript.PostProcessor = {}
---@type RoadManager
EntityScript.RoadManager = {}
---@type ShadowManager
EntityScript.ShadowManager = {}
---@type DynamicShadow
EntityScript.DynamicShadow = {}
---@type SoundEmitter
EntityScript.SoundEmitter = {}
---@type Transform
EntityScript.Transform = {}
---@type TwitchOptions
EntityScript.TwitchOptions = {}
---@type ImageWidget
EntityScript.ImageWidget = {}
---@type LightWatcher
EntityScript.LightWatcher = {}
---@type Map
EntityScript.Map = {}
---@type MapExplorer
EntityScript.MapExplorer = {}
---@type MapGenSim
EntityScript.MapGenSim = {}
---@type MiniMap
EntityScript.MiniMap = {}
---@type MiniMapEntity
EntityScript.MiniMapEntity = {}
---@type ParticleEmitter
EntityScript.ParticleEmitter = {}
---@type Pathfinder
EntityScript.Pathfinder = {}
---@type Physics
EntityScript.Physics = {}
---@type PhysicsWaker
EntityScript.PhysicsWaker = {}
---@type StaticShadow
EntityScript.StaticShadow = {}
---@type TextEditWidget
EntityScript.TextEditWidget = {}
---@type TextWidget
EntityScript.TextWidget = {}
---@type UITransform
EntityScript.UITransform = {}
---@type VFXEffect
EntityScript.VFXEffect = {}
---@type VideoWidget
EntityScript.VideoWidget = {}
---@type WaveComponent
EntityScript.WaveComponent = {}

---@type Entity
EntityScript.entity = {}

---@type EntityScriptComponents
EntityScript.components = {}

---@type replica
EntityScript.replica = {}

---@generic T
---@param name `T`
---@return T
function EntityScript:AddComponent(name) end
