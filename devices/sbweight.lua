ConstructEffect = "effects/device_construct.lua"
CompleteEffect = "effects/device_complete.lua"
Scale = 1.0
SelectionWidth = 40.0
SelectionHeight = 40.0
SelectionOffset = { 0.0, -40.5 }
Mass = 300.0
HitPoints = 100.0
EnergyProductionRate = 0.0
MetalProductionRate = 0.0
EnergyStorageCapacity = 0.0
MetalStorageCapacity = 0.0
MinWindEfficiency = 1
MaxWindHeight = 0
MaxRotationalSpeed = 0
DeviceSplashDamage = 0
DeviceSplashDamageMaxRadius = 0
DeviceSplashDamageDelay = 0.2
IgnitePlatformOnDestruct = false
StructureSplashDamage = 0
StructureSplashDamageMaxRadius = 0
DestroyEffect = "effects/battery_explode.lua"

dofile("effects/device_smoke.lua")
SmokeEmitter = StandardDeviceSmokeEmitter

Sprites =
{
	{
		Name = "sbweight-base",
		States =
		{
			Normal = { Frames = { { texture = path .. "/devices/sbweight/base.tga" }, mipmap = true, }, },
		},
	},
}

Root =
{
	Name = "Battery",
	Angle = 0,
	Pivot = { 0, -0.235 },
	PivotOffset = { 0, 0 },
	Sprite = "sbweight-base",
}
