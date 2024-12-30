---@meta

---@class Network
local Network = {}

function Network:IsBorrowed() end

---@param flag integer
function Network:AddUserFlag(flag) end

function Network:GetNetworkID() end

function Network:GetPlayerAge() end

---@return integer
function Network:GetUserFlags() end

function Network:SetPlayerAge() end

function Network:GetClientName() end

function Network:IsServerAdmin() end

function Network:SetPlayerSkin() end

---@param flag integer
function Network:RemoveUserFlag(flag) end

function Network:SetPlayerEquip() end

function Network:GetPlayerColour() end

function Network:IsConsecutiveMatch() end

function Network:SetClassifiedTarget() end

function Network:SetConsecutiveMatch() end

function Network:IsPlayingWithFriends() end

function Network:SetPlayerSkillSelection() end

function Network:GetUserID() end
