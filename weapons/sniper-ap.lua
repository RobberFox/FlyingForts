dofile("ui/uihelper.lua")

if dlc2_Ammunition == nil then
	dlc2_Ammunition =
	{
		{}, -- use default values
	}
end

table.insert(dlc2_Ammunition,
{
		StringId = "Double Sniper Shot",
		Sprite = "hud-context-DefaultAmmo",
		Projectile = "sniper",
		RoundsEachBurst = 2,
		RoundPeriod = 0.25,
})