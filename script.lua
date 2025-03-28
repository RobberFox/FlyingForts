--function OnNodeDestroyed(nodeId, selectable)
--  for linkIdx = 0, NodeLinkCount(nodeId)-1 do
--    ScheduleCall(1/FPS, CheckTarpStructure, NodeLinkedNodeId(nodeId, linkIdx))
--  end
--end
--
--function CheckTarpStructure(nodeId, checkedNodes)
--  local checkedNodes = checkedNodes or {}
--  
--  local newNeighbours = false
--  for linkIdx = 0, NodeLinkCount(nodeId)-1 do
--    local linkedNodeId = NodeLinkedNodeId(nodeId, linkIdx)
--    if not checkedNodes[linkedNodeId] then
--      newNeighbours = true
--      if GetLinkMaterialSaveName(nodeId, linkedNodeId) == "tarp" then
--        checkedNodes[nodeId] = true
--        CheckTarpStructure(linkedNodeId, checkedNodes)
--      else
--        return
--      end
--    end
--  end
--  
--  if not newNeighbours then
--    DestroyStructure(nodeId)
--  end
--end
