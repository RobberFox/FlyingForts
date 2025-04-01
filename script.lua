dofile("scripts/forts.lua")

-- 30 SECOND DEATH TIMER
data.antigrav_count = { 0, 0 } -- side 1 and 2
data.timeRemaining = { 0, 0 } -- side 1 and 2

function Load()
	AddTextControl("", "AntigravsCount", "Antigravs = ", ANCHOR_TOP_LEFT, Vec3(900, 10, 0), false, "Normal")
	if GetChildCount("CountdownTimerPanel") == 0 then
		LoadControl("ui/screens/countdowntimerpanel.lua", "")
		ShowControl("", "CountdownTimerPanel", false)
	end
end

function Update(frame)
	for side = 1, 2, 1 do
		UpdateCountdownPanel(side)
		if data.timeRemaining[side] > 0 then
			data.timeRemaining[side] = data.timeRemaining[side] - data.updateDelta
			if data.timeRemaining[side] <= 0 then
				data.timeRemaining[side] = 0
				local id = SpawnEffect(path .. "/effects/antigrav_alarm.lua", Vec3(0, 0))
			end
		end
	end
end

function OnSeek()
	for side = 1, 2, 1 do
		UpdateCountdownPanel(side)
	end
end

function UpdateCountdownPanel(side)
	if GetLocalTeamId() % 100 == side then
		if (CutsceneActive() or data.timeRemaining[side] <= 0) then
			ShowControl("", "CountdownTimerPanel", false)
		else
			ShowControl("", "CountdownTimerPanel", true)
			SetControlText("", "CountdownTimer", TimeToString(data.timeRemaining[side] + 1))
		end
	end
end

function StartTimer(teamId, duration)
	local side = teamId % 100
	if data.timeRemaining[side] == 0 then
		data.timeRemaining[side] = duration
	end
end

function StopTimer(teamId)
	local side = teamId % 100
	data.timeRemaining[side] = 0
end

function AntigravCount(teamId)
	local side = teamId % 100
	local count = GetDeviceCountSide(side)
	local amount = 0

	for index = 0, count, 1 do
		local id = GetDeviceId(teamId, index)
		local saveName = GetDeviceType(id)
		if saveName == "sbantigravity" then
			amount = amount + 1
		elseif saveName == "superantigravity" then
			amount = amount + 3
		end
	end

	data.antigrav_count[side] = amount

	SetControlText("", "AntigravsCount", "Antigravs = "..string.format("%d; %d", data.antigrav_count[1], data.antigrav_count[2]))

	return amount
end

function CheckLimit(teamId, action)
	local result = AntigravCount(teamId)
	local limit = 25

	if action == "Placement" and result > limit then
		StartTimer(teamId, 30)
	end
	if action == "Removal" and result <= limit then
		StopTimer(teamId)
	end
end

-- Events
function OnDeviceCreated(teamId, deviceId, saveName, nodeA, nodeB, t, upgradedId)
	CheckLimit(teamId, "Placement")
end

function OnDeviceDeleted(teamId, deviceId, saveName, nodeA, nodeB, t)
	ScheduleCall(0.1, CheckLimit, teamId, "Removal")
end

function OnDeviceDestroyed(teamId, deviceId, saveName, nodeA, nodeB, t)
	CheckLimit(teamId, "Removal")
end

function OnDeviceTeamUpdated(oldTeamId, newTeamId, deviceId, saveName)
	if oldTeamId == 0 then
		CheckLimit(newTeamId, "Placement")
	end
	if newTeamId == 0 then
		CheckLimit(oldTeamId, "Removal")
	end
end

-- SUICIDE PREVENTION

function OnWeaponFired(teamId, saveName, weaponId, projectileNodeId, projectileNodeIdFrom)
	BlockFireInStructure(teamId, saveName, weaponId, projectileNodeId, projectileNodeIdFrom)
end

function BlockFireInStructure(teamId, saveName, weaponId, projectileNodeId, projectileNodeIdFrom)
	if projectileNodeIdFrom ~= 0 then -- i.e. not spawned by a weapon
		return
	end

	if GetProjectileParamFloat(GetNodeProjectileSaveName(projectileNodeId), teamId, "ProjectileDamage", 0) == 0 and not IsDeviceBeam(weaponId) then
		return -- Neglects weapons like the jet thruster
	end

	local side = teamId % 100
	if side ~= 1 and side ~= 2 then
		return
	end

	local firePos = GetWeaponHardpointPosition(weaponId)
	local angle = GetFireAngle(weaponId) - math.pi / 2
	local distance = 125
	local dx = distance * math.cos(angle)
	local dy = distance * math.sin(angle)
	local targetPos = Vec3(firePos.x + dx,firePos.y - dy)

	local initial_result = CastRayFromDevice(weaponId, targetPos, 0, RAY_EXCLUDE_NEUTRAL | RAY_PORTAL_BLOCKS, FIELD_DISRUPT_BUILDING)

	if GetRayHitMaterialSaveName() == "portal" then
		local exitPortalPos = GetExitPortalCenterPos(GetRayHitLinkNodeIdA(), GetRayHitLinkNodeIdB())
		local shiftedPos = Vec3(exitPortalPos.x + dx/10, exitPortalPos.y + dy/10) -- Can't be right on the portal, so I make it outside of it a bit.
		local leftover_targetPos = Vec3(exitPortalPos.x + dx, exitPortalPos.y + dy)

		local portal_result = CastRay(shiftedPos, leftover_targetPos, RAY_EXCLUDE_NEUTRAL | RAY_PORTAL_BLOCKS, FIELD_DISRUPT_BUILDING)
	end

	if GetRayHitSideId() ~= 0 and GetRayHitSideId() ~= side then
		BanWeapon(weaponId, saveName, projectileNodeId, true, 4)
	end
end

function GetPosDistance(pos1, pos2)
	local dx = pos1.x - pos2.x
	local dy = pos1.y - pos2.y
	return math.sqrt(dx * dx + dy * dy)
end

function GetExitPortalCenterPos(EntryPortalNodeA, EntryPortalNodeB)
	local ExitPortalNodeA = GetPortalDestinationA(EntryPortalNodeA, EntryPortalNodeB)
	local ExitPortalNodeB = GetPortalDestinationB(EntryPortalNodeA, EntryPortalNodeB)

	local ExitPortalNodePosA = NodePosition(ExitPortalNodeA)
	local ExitPortalNodePosB = NodePosition(ExitPortalNodeB)
	return Vec3( (ExitPortalNodePosA.x+ExitPortalNodePosB.x)/2, (ExitPortalNodePosA.y+ExitPortalNodePosB.y)/2 )
end

function BanWeapon(weaponId, saveName, projectileNodeId, Reload, EMPTime)
	if Reload then
		ScheduleCall(0.2, ReloadWeapon, weaponId)
	end
	if not IsDeviceBeam(weaponId) then
		DestroyProjectile(projectileNodeId)
	end
	if EMPTime then
		if saveName == "shotgun" or saveName == "rocket" then
			ScheduleCall(0.1, EMPDevice, weaponId, EMPTime)
		else
			EMPDevice(weaponId, EMPTime)
		end
	end
end

function BetterLog(log,showname)
	if log == nil then
		Notice("Error: Log is nil")
		return
	end

	if type(log) == "table" then
		if showname ~= nil then
			Notice(tostring(showname)..":")
		end
		for k, v in pairs(log) do
			if type(v) == "table" then
				BetterLog(v,k)
			else
				Notice(tostring(k)..": "..tostring(v))
			end
		end
	else
		if showname ~= nil then
			log = tostring(showname) .. ": " .. log
		end
		Notice(tostring(log))
	end
end
