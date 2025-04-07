---@meta
---@class Entity
Entity = {}

---@return lightuserdata
function Entity:GetGUID() end

function Entity:Retire() end

function Entity:SetName() end

function Entity:GetName() end

function Entity:SetAABB() end

function Entity:SetPrefabName() end

function Entity:GetPrefabName() end

function Entity:IsValid() end

---@param tag string
function Entity:AddTag(tag) end

---@param tag string
function Entity:RemoveTag(tag) end

---@param tag string
---@return boolean
function Entity:HasTag(tag) end

function Entity:IsAwake() end

function Entity:WorldToLocalSpace() end

function Entity:LocalToWorldSpace() end

function Entity:LocalToWorldSpaceIncParent() end

function Entity:SetParent() end

function Entity:GetParent() end

function Entity:SetPlatform() end

function Entity:GetPlatform() end

---@param b boolean?
function Entity:Show(b) end

---@param b boolean?
function Entity:Hide(b) end

function Entity:IsVisible() end

---@param b boolean
function Entity:SetInLimbo(b) end

function Entity:FrustumCheck() end

function Entity:SetCanSleep() end

function Entity:CallPrefabConstructionComplete() end

function Entity:SetClickable() end

function Entity:SetSelected() end

function Entity:GetDebugString() end

function Entity:MoveToFront() end

function Entity:MoveToBack() end

function Entity:FlushLocalDirtyNetVars() end

function Entity:SetPristine() end

function Entity:EnableMovementPrediction() end

function Entity:CanPredictMovement() end

function Entity:SetIsPredictingMovement() end

function Entity:FlattenMovementPrediction() end

function Entity:GetHistoryData() end

function Entity:GetAnimStateData() end

---@return AccountManager
function Entity:AddAccountManager() end

---@return AnimState
function Entity:AddAnimState() end

function Entity:AddClientSleepable() end

---@return DebugRender
function Entity:AddDebugRender() end

---@return EnvelopeManager
function Entity:AddEnvelopeManager() end

---@return Follower
function Entity:AddFollower() end

---@return FontManager
function Entity:AddFontManager() end

---@return GraphicsOptions
function Entity:AddGraphicsOptions() end

---@return GroundCreep
function Entity:AddGroundCreep() end

---@return GroundCreepEntity
function Entity:AddGroundCreepEntity() end

---@return Image
function Entity:AddImage() end

---@return Label
function Entity:AddLabel() end

---@return Light
function Entity:AddLight() end

---@return MapLayerManager
function Entity:AddMapLayerManager() end

---@return Network
function Entity:AddNetwork() end

---@return PostProcessor
function Entity:AddPostProcessor() end

---@return RoadManager
function Entity:AddRoadManager() end

---@return ShadowManager
function Entity:AddShadowManager() end

---@return DynamicShadow
function Entity:AddDynamicShadow() end

---@return SoundEmitter
function Entity:AddSoundEmitter() end

---@return Transform
function Entity:AddTransform() end

---@return TwitchOptions
function Entity:AddTwitchOptions() end

---@return ImageWidget
function Entity:AddImageWidget() end

---@return LightWatcher
function Entity:AddLightWatcher() end

---@return Map
function Entity:AddMap() end

---@return MapExplorer
function Entity:AddMapExplorer() end

---@return MapGenSim
function Entity:AddMapGenSim() end

---@return MiniMap
function Entity:AddMiniMap() end

---@return MiniMapEntity
function Entity:AddMiniMapEntity() end

---@return ParticleEmitter
function Entity:AddParticleEmitter() end

---@return Pathfinder
function Entity:AddPathfinder() end

---@return Physics
function Entity:AddPhysics() end

---@return PhysicsWaker
function Entity:AddPhysicsWaker() end

function Entity:AddServerNonSleepable() end

---@return StaticShadow
function Entity:AddStaticShadow() end

function Entity:AddShardClient() end

function Entity:AddShardNetwork() end

---@return TextEditWidget
function Entity:AddTextEditWidget() end

---@return TextWidget
function Entity:AddTextWidget() end

---@return UITransform
function Entity:AddUITransform() end

---@return VFXEffect
function Entity:AddVFXEffect() end

---@return VideoWidget
function Entity:AddVideoWidget() end

---@return WaveComponent
function Entity:AddWaveComponent() end
