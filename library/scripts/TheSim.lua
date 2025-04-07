---@meta
TheSim = {}

function TheSim:CountEntities() end

---@return Entity
function TheSim:CreateEntity() end

---@return entityscript[]
function TheSim:FindEntities(x, y, z, radius, must_have_tags, cant_have_tags, must_have_one_of_tags) end
function TheSim:FindEntities_Registered() end
function TheSim:FindFirstEntityWithTag() end
function TheSim:GetEntitiesAtScreenPoint() end
function TheSim:GetEntityAtScreenPoint() end
function TheSim:GetNumberOfEntities() end
function TheSim:HideAnimOnEntitiesWithTag() end
function TheSim:ReskinEntity() end
function TheSim:ShowAnimOnEntitiesWithTag() end

function TheSim:SpawnPrefab() end
function TheSim:GetLightAtPoint() end
function TheSim:WorldPointInPoly(x, z, poly) end
function TheSim:SetActiveAreaCenterpoint() end
function TheSim:HasPlayerSkeletons() end

function TheSim:GetIsSplitScreen() end
function TheSim:GetScreenSize() end
function TheSim:ProjectScreenPos() end
function TheSim:SetCameraDir() end
function TheSim:SetCameraFOV() end
function TheSim:SetCameraPos() end
function TheSim:SetCameraUp() end
function TheSim:SetUIRoot() end

function TheSim:GetMouseButtonState() end
function TheSim:GetAnalogControl() end
function TheSim:GetDigitalControl() end

-- Mouse
function TheSim:IsKeyDown() end
function TheSim:GetPosition() end
-- gets mouse position
function TheSim:GetScreenPos() end

function TheSim:GetUsersName() end
function TheSim:GetClipboardData() end
function TheSim:QueryServer() end
-- REST client, there are examples in the code for how to do GET/POST requests

function TheSim:ApplyWordFilter() end
function TheSim:DecodeKleiData() end
-- used for profanity filter

function TheSim:GetTick() end
function TheSim:GetTickTime() end
function TheSim:GetRealTime() end
-- time functions

function TheSim:GetGameID() end
-- can be used to check if it is "DS" or "DST"

function TheSim:GenerateNewWorld() end
-- not sure if it should be called directly

function TheSim:GetTimeScale() end
function TheSim:SetTimeScale() end
-- can be used to pause the game (exactly this function is used by Global Pause mod)

function TheSim:TogglePause() end
-- it is present as a commented string once in a code. I'm not sure if it can be used in practice and how it will interact with

function TheSim:AtlasContains() end

function TheSim:SetVisualAmbientColour() end
function TheSim:SetAmbientColour() end
-- I guess it is used to set seasonal colors.
-- Related APIS: "ambientlighting"

function TheSim:SetRenderPassDefaultEffect() end
function TheSim:SetErosionTexture() end
-- these are called only once

function TheSim:LoadFont() end
function TheSim:UnloadFont() end
function TheSim:AdjustFontAdvance() end
function TheSim:SetupFontFallbacks() end

function TheSim:ClearDSP() end
function TheSim:GetSoundVolume() end
function TheSim:RemapSoundEvent() end
function TheSim:SetSoundVolume() end
function TheSim:SetReverbPreset() end
-- E.G: Changes how sound should be in caves
function TheSim:SetLowPassFilter() end
function TheSim:SetHighPassFilter() end
-- I'm not a musician, I have no idea what it does. But it sounds music related.

function TheSim:LoadPrefabs() end
function TheSim:UnloadPrefabs() end
function TheSim:RegisterPrefab() end
function TheSim:UnregisterAllPrefabs() end
function TheSim:UnregisterPrefabs() end
function TheSim:UnloadAllPrefabs() end
-- Never called in base scripts. Must be dangerous.

-- P.S. `TheSim:SpawnPrefab` is listed in above

function TheSim:ForceAbort() end
-- Used to shut down the game in case of errors from mods.

function TheSim:Quit() end
function TheSim:Reset() end

function TheSim:GetBuildDate() end
function TheSim:GetDebugPhysicsRenderEnabled() end
function TheSim:GetDebugRenderEnabled() end
function TheSim:IsDebugPaused() end
function TheSim:ShouldInitDebugger() end
function TheSim:SetDebugCameraRotation() end
function TheSim:SetDebugCameraTarget() end
function TheSim:SetDebugRenderEnabled() end
function TheSim:Step() end
function TheSim:ToggleDebugCamera() end
function TheSim:ToggleDebugPause() end
function TheSim:ToggleDebugTexture() end
function TheSim:UpdateDebugTexture() end

function TheSim:ToggleFrameProfiler() end
function TheSim:TogglePerfGraph() end

function TheSim:ProfilerPop() end
function TheSim:ProfilerPush() end
-- These two are used in pair. As I understand, you can see how long it takes to execute your code. (I haven't tried it myself, don't know how to use it in practice yet)

function TheSim:SetMemoryTracking() end
function TheSim:SetMemInfoTrackingInterval() end
function TheSim:SetListener() end
-- Saw this in some debug functions (debugsound, followcamera). Not sure what it does

function TheSim:PrintTextureInfo() end
function TheSim:DumpMemoryStats() end
function TheSim:FileBugReport() end
function TheSim:LogBulkMetric() end
function TheSim:LuaPrint() end

function TheSim:ShouldPlayIntroMovie() end
function TheSim:CanReadConfigurationDirectory() end
function TheSim:CanWriteConfigurationDirectory() end
function TheSim:HasEnoughFreeDiskSpace() end
function TheSim:SetInstanceParameters() end
function TheSim:IsNetbookMode() end
function TheSim:SetNetbookMode() end
function TheSim:GetDataCollectionSetting() end
function TheSim:GetLocalSetting() end
function TheSim:GetSetting() end
function TheSim:SetDataCollectionSetting() end
function TheSim:SetSetting() end

function TheSim:ReportAction() end
function TheSim:SendCommandToInstance() end

function TheSim:Profile() end
function TheSim:SendProfileStats() end
function TheSim:UpdateDeviceCaps() end
-- something related to player profile

function TheSim:GetStashedPlayInstance() end
function TheSim:StashPlayInstance() end
-- something about saving the game/sending stats to Klei? Not sure. Used in

function TheSim:OnAssetPathResolve() end
function TheSim:GetFileModificationTime() end
function TheSim:AddBatchVerifyFileExists() end
function TheSim:ClearFileSystemAliases() end
function TheSim:RenderOneFrame() end
-- used in keepAlive function. Looks like it is used to avoid the operating system thinking that the game is dead and render a frame from time to time
function TheSim:LoadKlumpFile() end
function TheSim:LoadKlumpString() end
-- not sure what klump file is, but there is klump.lua for these
function TheSim:PauseFileExistsAsync() end
function TheSim:PreloadFile() end
function TheSim:StartFileExistsAsync() end
function TheSim:VerifyFileExistsAsync() end
function TheSim:PurgeLuaFileCache() end

function TheSim:DownloadMOTDImage() end
function TheSim:DownloadMOTDImages() end
function TheSim:GetMOTDImage() end
function TheSim:GetMOTDQueryURL() end
function TheSim:HasMOTDImage() end
function TheSim:LoadMOTDImage() end
function TheSim:SetMOTDTarget() end

function TheSim:CheckPersistentStringExists() end
function TheSim:ErasePersistentString() end
function TheSim:GetPersistentString() end
function TheSim:GetPersistentStringInClusterSlot() end
function TheSim:SetPersistentString() end
function TheSim:SetPersistentStringInClusterSlot() end

function TheSim:GetModDirectoryNames() end
function TheSim:GetWorkshopVersion() end
function TheSim:StartWorkshopQuery() end
function TheSim:ShouldWarnModsLoaded() end
function TheSim:GetClientModsDownloading() end
function TheSim:GetServerModsDownloading() end
function TheSim:QueueDownloadTempMod() end
function TheSim:StartDownloadTempMods() end

function TheSim:CleanAllMods() end
function TheSim:QueryTopMods() end
function TheSim:QueryWorkshopModName() end
function TheSim:SubscribeToMod() end
function TheSim:TryLockModDir() end
function TheSim:UnlockModDir() end
function TheSim:UpdateWorkshopMod() end
function TheSim:VerifyModVersions() end
function TheSim:RAILGetModDetailPage() end
-- some function specific to Windows ("WIN32_RAIL" is any windows?) platform used to load mod info pages

function TheSim:IsLoggedOn() end

function TheSim:IsDocumentsWritable() end
function TheSim:IsAppDataWritable() end
function TheSim:GetNumLaunches() end
function TheSim:SendGameStat() end
function TheSim:SendHardwareStats() end
-- game stats gathering functions

function TheSim:SendJSMessage() end
-- used on browser NACL platform to redirect users

function TheSim:SetDLCEnabled() end
function TheSim:IsDLCEnabled() end
function TheSim:IsDLCInstalled() end

-- Game demo things
function TheSim:SendUITrigger() end
function TheSim:IsDemoExpired() end

-- Steam stuff
function TheSim:IsBorrowed() end
function TheSim:GetSteamIDNumber() end
function TheSim:GetSteamBetaBranchName() end
function TheSim:GetUserHasLicenseForApp() end
function TheSim:QueryStats() end
function TheSim:AbortFileExistsAsync() end
function TheSim:AddTextureToStreamingGroup() end
function TheSim:AppendSaveString() end
function TheSim:ApplyLocalWordFilter() end
function TheSim:ClearAllDSP() end
function TheSim:ClearInput() end
function TheSim:ConvertSlotToCloudOrLocal() end
function TheSim:CopyLegacySessionToSlot() end
function TheSim:Crash() end
function TheSim:DebugPause() end
function TheSim:DebugPushJsonMessage() end
function TheSim:DebugStringScreen() end
function TheSim:DecodeAndUnzipString() end
function TheSim:DumpMemInfo() end
function TheSim:DuplicateSlot() end
function TheSim:EnsureShardIndexPathExists() end
function TheSim:FinalizeSaveString() end
function TheSim:GetAmbientColour() end
function TheSim:GetFolderForCloudSaveSlot() end
function TheSim:GetFPS() end
function TheSim:GetGroundViewDirection() end
function TheSim:GetNextCloudSaveSlot() end
function TheSim:GetSaveFiles() end
function TheSim:GetSaveString() end
function TheSim:GetStaticTick() end
function TheSim:GetSteamAppID() end
function TheSim:GetStep() end
function TheSim:GetUserPresetFiles() end
function TheSim:GetWindowSize() end
function TheSim:GetWorkshopVersionCompatible() end
function TheSim:HasValidLogFile() end
function TheSim:HasWindowFocus() end
function TheSim:Hook() end
function TheSim:InitSaveString() end
function TheSim:IsDataCollectionDisabled() end
function TheSim:IsPlaying() end
function TheSim:IsSteamChinaClient() end
function TheSim:LoadUserFile() end
function TheSim:LockModDir() end
function TheSim:MemTrackerPop() end
function TheSim:MemTrackerPush() end
function TheSim:OpenDocumentsFolder() end
function TheSim:OpenSaveFolder() end
function TheSim:PrintLoadedTextureInfo() end
function TheSim:RegisterFindTags() end
function TheSim:RemoveLastCommaSaveString() end
function TheSim:RequestPlayerID() end
function TheSim:ResetError() end
function TheSim:SetDebugPhysicsRenderEnabled() end
function TheSim:SetHoloTexture() end
function TheSim:StopAllSounds() end
function TheSim:ToggleDataProfiler() end
function TheSim:TurnOffReverb() end
function TheSim:UpdateRenderExtents() end
function TheSim:UserChooseDirectory() end
function TheSim:ValidateHeap() end
function TheSim:ZipAndEncodeString() end
