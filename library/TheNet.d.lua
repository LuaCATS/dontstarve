---@meta

---@class NetworkProxy
local NetworkProxy = {}

function NetworkProxy:GetIsServer() end

function NetworkProxy:GetIsHosting() end

function NetworkProxy:GetIsClient() end

function NetworkProxy:GetIsServerOwner() end

function NetworkProxy:GetIsMasterSimulation() end

function NetworkProxy:GetNetUpdates() end

function NetworkProxy:CallRPC() end

function NetworkProxy:SendRPCToServer() end

function NetworkProxy:SendModRPCToServer() end

function NetworkProxy:CallClientRPC() end

function NetworkProxy:SendRPCToClient() end

function NetworkProxy:SendModRPCToClient() end

function NetworkProxy:CallShardRPC() end

function NetworkProxy:SendRPCToShard() end

function NetworkProxy:SendModRPCToShard() end

function NetworkProxy:SendSlashCmdToServer() end

function NetworkProxy:SendSpawnRequestToServer() end

function NetworkProxy:SendResumeRequestToServer() end

function NetworkProxy:SendWorldResetRequestToServer() end

function NetworkProxy:SendWorldRollbackRequestToServer() end

function NetworkProxy:SendWorldSaveRequestToMaster() end

function NetworkProxy:SendLobbyCharacterRequestToServer() end

function NetworkProxy:SpawnSeamlessPlayerReplacement() end

function NetworkProxy:SetLobbyCharacter() end

function NetworkProxy:UpdatePlayingWithFriends() end

function NetworkProxy:StartServer() end

function NetworkProxy:StartClient() end

function NetworkProxy:StartCloudServerRequestProcess() end

function NetworkProxy:GetCloudServerRequestState() end

function NetworkProxy:CancelCloudServerRequest() end

function NetworkProxy:JoinServerResponse() end

function NetworkProxy:HasPendingConnection() end

function NetworkProxy:PrintNetwork() end

function NetworkProxy:Say() end

function NetworkProxy:Talker() end

function NetworkProxy:SystemMessage() end

function NetworkProxy:Announce() end

function NetworkProxy:AnnounceDeath() end

function NetworkProxy:AnnounceResurrect() end

function NetworkProxy:DiceRoll() end

function NetworkProxy:ReportListing() end

function NetworkProxy:GetPing() end

function NetworkProxy:GetAveragePing() end

function NetworkProxy:Kick() end

function NetworkProxy:Ban() end

function NetworkProxy:BanForTime() end

function NetworkProxy:GetBlacklist() end

function NetworkProxy:SetBlacklist() end

function NetworkProxy:SetPlayerMuted() end

function NetworkProxy:IsVoiceActive() end

function NetworkProxy:StartVote() end

function NetworkProxy:StopVote() end

function NetworkProxy:Vote() end

function NetworkProxy:AnnounceVoteResult() end

function NetworkProxy:Disconnect() end

function NetworkProxy:SearchServers() end

function NetworkProxy:SearchLANServers() end

function NetworkProxy:GetServerListings() end

function NetworkProxy:GetServerListingReadDirty() end

function NetworkProxy:GetServerListingFromActualIndex() end

function NetworkProxy:GetServerGameMode() end

function NetworkProxy:GetServerIntention() end

function NetworkProxy:GetServerPlaystyle() end

function NetworkProxy:GetServerMaxPlayers() end

function NetworkProxy:GetServerClanID() end

function NetworkProxy:GetServerClanOnly() end

function NetworkProxy:GetServerFriendsOnly() end

function NetworkProxy:GetServerPVP() end

function NetworkProxy:GetServerLANOnly() end

function NetworkProxy:StopSearchingServers() end

function NetworkProxy:IsSearchingServers() end

function NetworkProxy:DownloadServerDetails() end

function NetworkProxy:AutoJoinLanServer() end

function NetworkProxy:GetAutosaverEnabled() end

function NetworkProxy:SetCheckVersionOnQuery() end

function NetworkProxy:DoneLoadingMap() end

function NetworkProxy:BeginSession() end

function NetworkProxy:DeleteSession() end

function NetworkProxy:DeleteCluster() end

function NetworkProxy:IsDedicated() end

function NetworkProxy:IsDedicatedOfflineCluster() end

function NetworkProxy:GetDefaultServerIntention() end

function NetworkProxy:SetDefaultServerIntention() end

function NetworkProxy:SetServerPlaystyle() end

function NetworkProxy:GetDefaultServerName() end

function NetworkProxy:SetDefaultServerName() end

function NetworkProxy:GetDefaultGameMode() end

function NetworkProxy:SetDefaultGameMode() end

function NetworkProxy:GetDefaultServerDescription() end

function NetworkProxy:SetDefaultServerDescription() end

function NetworkProxy:GetDefaultServerLanguage() end

function NetworkProxy:SetDefaultServerLanguage() end

function NetworkProxy:GetDefaultServerPassword() end

function NetworkProxy:SetDefaultServerPassword() end

function NetworkProxy:SetServerPassword() end

function NetworkProxy:GetDefaultMaxPlayers() end

function NetworkProxy:SetDefaultMaxPlayers() end

function NetworkProxy:GetDefaultPvpSetting() end

function NetworkProxy:SetDefaultPvpSetting() end

function NetworkProxy:GetDefaultEncodeUserPath() end

function NetworkProxy:TryDefaultEncodeUserPath() end

function NetworkProxy:GetDefaultClanID() end

function NetworkProxy:GetDefaultClanOnly() end

function NetworkProxy:GetDefaultClanAdmins() end

function NetworkProxy:SetDefaultClanInfo() end

function NetworkProxy:IsClanIDValid() end

function NetworkProxy:SetCloudServerInitiatorUserId() end

function NetworkProxy:GetDefaultFriendsOnlyServer() end

function NetworkProxy:SetDefaultFriendsOnlyServer() end

function NetworkProxy:GetDefaultLANOnlyServer() end

function NetworkProxy:SetDefaultLANOnlyServer() end

function NetworkProxy:GetDefaultVoteEnabled() end

function NetworkProxy:SetServerTags() end

function NetworkProxy:GetSessionIdentifier() end

function NetworkProxy:GetAllowIncomingConnections() end

function NetworkProxy:SetAllowIncomingConnections() end

function NetworkProxy:GetAllowNewPlayersToConnect() end

function NetworkProxy:SetAllowNewPlayersToConnect() end

function NetworkProxy:SetGameData() end

function NetworkProxy:SetWorldGenData() end

function NetworkProxy:SetSeason() end

function NetworkProxy:GetWorldSessionFile() end

function NetworkProxy:GetWorldSessionFileInClusterSlot() end

function NetworkProxy:GetLocalClientUserSessionFile() end

function NetworkProxy:GetUserSessionFile() end

function NetworkProxy:GetUserSessionFileInClusterSlot() end

function NetworkProxy:GetPlayerSaveLocationInClusterSlot() end

function NetworkProxy:StartWorldSave() end

function NetworkProxy:SerializeWorldSession() end

function NetworkProxy:SerializeUserSession() end

function NetworkProxy:EndWorldSave() end

function NetworkProxy:DeserializeUserSession() end

function NetworkProxy:DeserializeUserSessionInClusterSlot() end

function NetworkProxy:DeleteUserSession() end

function NetworkProxy:GetCurrentSnapshot() end

function NetworkProxy:SetCurrentSnapshot() end

function NetworkProxy:IncrementSnapshot() end

function NetworkProxy:TruncateSnapshots() end

function NetworkProxy:TruncateSnapshotsInClusterSlot() end

function NetworkProxy:ListSnapshots() end

function NetworkProxy:ListSnapshotsInClusterSlot() end

function NetworkProxy:DeserializeAllLocalUserSessions() end

function NetworkProxy:CleanupSessionCache() end

function NetworkProxy:EncodeUserPath() end

function NetworkProxy:SetClientCacheSessionIdentifier() end

function NetworkProxy:GetClientTableForUser() end

function NetworkProxy:GetClientTable() end

function NetworkProxy:GetClientMetricsForUser() end

function NetworkProxy:GetNetIdForUser() end

function NetworkProxy:GetUserID() end

function NetworkProxy:GetPVPEnabled() end

function NetworkProxy:GetServerName() end

function NetworkProxy:GetServerDescription() end

function NetworkProxy:GetServerHasPassword() end

function NetworkProxy:GetServerModsDescription() end

function NetworkProxy:GetServerModsEnabled() end

function NetworkProxy:GetServerModNames() end

function NetworkProxy:GetServerIsDedicated() end

function NetworkProxy:GetServerIsClientHosted() end

function NetworkProxy:GetServerListing() end

function NetworkProxy:IsNetOverlayEnabled() end

function NetworkProxy:ViewNetProfile() end

function NetworkProxy:ViewNetFriends() end

function NetworkProxy:GenerateClusterToken() end

function NetworkProxy:ServerModsDownloadCompleted() end

function NetworkProxy:SendRemoteExecute() end

function NetworkProxy:NotifyLoadingState() end

function NetworkProxy:HasCachedUserID() end

function NetworkProxy:IsOnlineMode() end

function NetworkProxy:GetIsServerAdmin() end

function NetworkProxy:GetServerHasPresentAdmin() end

function NetworkProxy:NotifyAuthenticationFailure() end

function NetworkProxy:StopBroadcastingServer() end

function NetworkProxy:SetDeferredServerShutdownRequested() end

function NetworkProxy:GetDeferredServerShutdownRequested() end

function NetworkProxy:GetPlayerCount() end

function NetworkProxy:GetCountryCode() end

function NetworkProxy:GetLanguageCode() end

function NetworkProxy:GetFriendsList() end

function NetworkProxy:GetPartyTable() end

function NetworkProxy:InviteToParty() end

function NetworkProxy:JoinParty() end

function NetworkProxy:LeaveParty() end

function NetworkProxy:SetPartyServer() end

function NetworkProxy:PartyChat() end

function NetworkProxy:GetPartyChatHistory() end

function NetworkProxy:OnPlayerHistoryUpdated() end

function NetworkProxy:IsNetIDPlatformValid() end

function NetworkProxy:BeginServerModSetup() end

function NetworkProxy:ServerModSetup() end

function NetworkProxy:ServerModCollectionSetup() end

function NetworkProxy:DownloadServerMods() end

function NetworkProxy:AddToWhiteList() end

function NetworkProxy:IsWhiteListed() end

function NetworkProxy:RemoveFromWhiteList() end

function NetworkProxy:LoadPermissionLists() end

function NetworkProxy:GetNetworkStatistics() end

function NetworkProxy:GetLocalUserName() end

function NetworkProxy:SetIsClientInWorld() end

function NetworkProxy:SetIsWorldResetting() end

function NetworkProxy:SetIsWorldSaving() end

function NetworkProxy:SetIsMatchStarting() end

function NetworkProxy:GetChildProcessStatus() end

function NetworkProxy:GetChildProcessError() end

function NetworkProxy:AllowConnections() end

function NetworkProxy:GetCloudServerId() end

function NetworkProxy:IsConsecutiveMatchForPlayer() end

function NetworkProxy:GetItemsBranch() end

function NetworkProxy:SetServerPaused() end

function NetworkProxy:SetAutopaused() end

function NetworkProxy:IsServerPaused() end

function NetworkProxy:AdvanceFrame() end

function NetworkProxy:SetQuietBackendErrorsReason() end

function NetworkProxy:ToggleLANDebugging() end

TheNet = NetworkProxy

return NetworkProxy
