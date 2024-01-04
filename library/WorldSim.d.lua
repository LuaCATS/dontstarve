---@meta

---@class WorldSim
WorldSim = {}
function WorldSim:SetResolveNoiseFunction() end

function WorldSim:SetValidateGroundTileFunction() end

function WorldSim:SetPointsBarrenOrReservedTile() end

function WorldSim:ResetAll() end

function WorldSim:AddExternalLink() end

function WorldSim:AddLink() end

function WorldSim:AddChild() end

function WorldSim:AddEdgePoints() end

function WorldSim:SetSiteFlags() end

function WorldSim:RemoveLink() end

function WorldSim:ClearNodeLinks() end

function WorldSim:SetNodeType() end

function WorldSim:ForceDisconectedCells() end

function WorldSim:SetWorldSize() end

function WorldSim:GetWorldSize() end

function WorldSim:GenerateVoronoiMap() end

function WorldSim:WorldGen_AddNewPositions() end

function WorldSim:WorldGen_InitializeNodePoints() end

function WorldSim:WorldGen_VoronoiPass() end

function WorldSim:WorldGen_Commit() end

function WorldSim:SetImpassibleTileType() end

function WorldSim:ConvertToTileMap() end

function WorldSim:SeparateIslands() end

function WorldSim:ForceConnectivity() end

function WorldSim:DrawRoads() end

function WorldSim:SetRoadParameters() end

function WorldSim:CreateNodeIdTileMap() end

function WorldSim:SetTileNodeId() end

function WorldSim:GenerateBlendedMap() end

function WorldSim:RunCA() end

function WorldSim:RunMaze() end

function WorldSim:GetPointsForMetaMaze() end

function WorldSim:GetEncodedMap() end

function WorldSim:ReplaceSingleNonLandTiles() end

function WorldSim:GetPointsForSite() end

function WorldSim:GetRandomPointsForSite() end

function WorldSim:GetSiteCentroid() end

function WorldSim:GetSitePolygon() end

function WorldSim:PointInSite() end

function WorldSim:GetSiteArea() end

function WorldSim:GetSite() end

function WorldSim:GetChildrenForSite() end

function WorldSim:GetVisualTileAtPosition() end

function WorldSim:GetRoad() end

function WorldSim:GetWormholes() end

function WorldSim:GetWormholesExtra() end

function WorldSim:ReserveSpace() end

function WorldSim:ReserveTile() end

function WorldSim:IsTileReserved() end

function WorldSim:SetTile() end

function WorldSim:GetTile() end

function WorldSim:DrawCellLine() end

function WorldSim:DrawGroundLine() end

function WorldSim:LuaPrint() end

function WorldSim:DetectDisconnect() end

function WorldSim:GenerateSessionIdentifier() end

function WorldSim:InitSaveString() end

function WorldSim:AppendSaveString() end

function WorldSim:RemoveLastCommaSaveString() end

function WorldSim:GetSaveString() end

function WorldSim:FinalizeSaveString() end
