ClaimsStructures = true
Scale = 1.0
SelectionWidth = 40.0
SelectionHeight = 40.0
SelectionOffset = { 0.0, -40.5 }
Mass = 40.0
HitPoints = 30.0
MinWindEfficiency = 1
MaxWindHeight = 0
MaxRotationalSpeed = 0
DeviceSplashDamage = 200
DeviceSplashDamageMaxRadius = 250
DeviceSplashDamageDelay = 0.3
IgnitePlatformOnDestruct = true
IncendiaryRadius = 120
IncendiaryRadiusHeated = 150
StructureSplashDamage = 200
StructureSplashDamageMaxRadius = 150
IgnitePlatformOnDestruct = true
Repairable = true
ConstructEffect = "effects/device_construct.lua"
DestroyEffect = "effects/barrel_explode.lua"
DestroyUnderwaterEffect = "mods/dlc2/effects/device_explode_submerged.lua"

dofile("effects/device_smoke.lua")
SmokeEmitter = StandardDeviceSmokeEmitter

Root =
{
	Name = "Control Barrel",
	Angle = 0,
	Pivot = { 0, -0.235 },
	PivotOffset = { 0, 0 },
	Sprite = "barrel-base",

	ChildrenInFront =
	{
	},
}
