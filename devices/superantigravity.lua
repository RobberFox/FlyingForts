ConstructEffect = "effects/device_construct.lua"
CompleteEffect = "effects/device_complete.lua"
Scale = 1.5
SelectionWidth = 40.0
SelectionHeight = 40.0
SelectionOffset = { 0.0, -40.5 }
Mass = -9000.0
HitPoints = 1000.0
EnergyProductionRate = -15.0
MetalProductionRate = 0.0
EnergyStorageCapacity = 0.0
MetalStorageCapacity = 0.0
MinWindEfficiency = 1
MaxWindHeight = 0
MaxRotationalSpeed = 0
DeviceSplashDamage = 100
DeviceSplashDamageMaxRadius = 200
DeviceSplashDamageDelay = 0.2
IgnitePlatformOnDestruct = true
StructureSplashDamage = 250
StructureSplashDamageMaxRadius = 200
IncendiaryRadius = 200
IncendiaryRadiusHeated = 150
EMPRadius = 500
EMPDuration = 20
DestroyEffect = path .. "/effects/antigravity_explode.lua"

dofile("effects/device_smoke.lua")
SmokeEmitter = StandardDeviceSmokeEmitter

Sprites =
{
	{
		Name = "superantigravity-base",
		States =
		{
			Normal = { Frames = { { texture = path .. "/devices/superantigravity/base.tga" }, mipmap = true, }, },
		},
	},
}

Root =
{
	Name = "Battery",
	Scale = 1.5,
	Angle = 0,
	Pivot = { 0, -0.33 },
	PivotOffset = { 0, 0 },
	Sprite = "superantigravity-base",
}
