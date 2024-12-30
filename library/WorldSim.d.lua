---@meta

---@class WorldSimActual
local WorldSimActual = {}

function WorldSimActual:SetResolveNoiseFunction() end

function WorldSimActual:SetValidateGroundTileFunction() end

function WorldSimActual:SetPointsBarrenOrReservedTile() end

function WorldSimActual:ResetAll() end

function WorldSimActual:AddExternalLink() end

function WorldSimActual:AddLink() end

function WorldSimActual:AddChild() end

function WorldSimActual:AddEdgePoints() end

function WorldSimActual:SetSiteFlags() end

function WorldSimActual:RemoveLink() end

function WorldSimActual:ClearNodeLinks() end

function WorldSimActual:SetNodeType() end

function WorldSimActual:ForceDisconectedCells() end

function WorldSimActual:SetWorldSize() end

function WorldSimActual:GetWorldSize() end

function WorldSimActual:GenerateVoronoiMap() end

function WorldSimActual:WorldGen_AddNewPositions() end

function WorldSimActual:WorldGen_InitializeNodePoints() end

function WorldSimActual:WorldGen_VoronoiPass() end

function WorldSimActual:WorldGen_Commit() end

function WorldSimActual:SetImpassibleTileType() end

function WorldSimActual:ConvertToTileMap() end

function WorldSimActual:SeparateIslands() end

function WorldSimActual:ForceConnectivity() end

function WorldSimActual:DrawRoads() end

function WorldSimActual:SetRoadParameters() end

function WorldSimActual:CreateNodeIdTileMap() end

function WorldSimActual:SetTileNodeId() end

function WorldSimActual:GenerateBlendedMap() end

function WorldSimActual:RunCA() end

function WorldSimActual:RunMaze() end

function WorldSimActual:GetPointsForMetaMaze() end

function WorldSimActual:GetEncodedMap() end

function WorldSimActual:ReplaceSingleNonLandTiles() end

function WorldSimActual:GetPointsForSite() end

function WorldSimActual:GetRandomPointsForSite() end

function WorldSimActual:GetSiteCentroid() end

function WorldSimActual:GetSitePolygon() end

function WorldSimActual:PointInSite() end

function WorldSimActual:GetSiteArea() end

function WorldSimActual:GetSite() end

function WorldSimActual:GetChildrenForSite() end

function WorldSimActual:GetVisualTileAtPosition() end

function WorldSimActual:GetRoad() end

function WorldSimActual:GetWormholes() end

function WorldSimActual:GetWormholesExtra() end

function WorldSimActual:ReserveSpace() end

function WorldSimActual:ReserveTile() end

function WorldSimActual:IsTileReserved() end

function WorldSimActual:SetTile() end

function WorldSimActual:GetTile() end

function WorldSimActual:DrawCellLine() end

function WorldSimActual:DrawGroundLine() end

function WorldSimActual:LuaPrint() end

function WorldSimActual:DetectDisconnect() end

function WorldSimActual:GenerateSessionIdentifier() end

function WorldSimActual:InitSaveString() end

function WorldSimActual:AppendSaveString() end

function WorldSimActual:RemoveLastCommaSaveString() end

function WorldSimActual:GetSaveString() end

function WorldSimActual:FinalizeSaveString() end

WorldSim = WorldSimActual
return WorldSimActual
