---@meta
---@class AccountManager

local AccountManager = {}

function AccountManager:Login() end

function AccountManager:Logout() end

function AccountManager:CreateAccount() end

function AccountManager:AddGameKeyToAccount() end

function AccountManager:RecoverPassword() end

function AccountManager:ValidateToken() end

function AccountManager:GetToken() end

function AccountManager:GetUsername() end

function AccountManager:TokenPurpose() end

function AccountManager:VisitAccountPage() end

function AccountManager:HasAuthToken() end

function AccountManager:IsWaitingForResponse() end

function AccountManager:MustUpgradeClient() end

function AccountManager:IsBanned() end

function AccountManager:CommunicationSucceeded() end

function AccountManager:HasSteamTicket() end

function AccountManager:CancelLogin() end

return AccountManager
