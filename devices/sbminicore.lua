-- fort wars device file

ConstructEffect = "effects/device_construct.lua"
CompleteEffect = "effects/device_complete.lua"
Scale = 1.0
SelectionWidth = 40.0
SelectionHeight = 40.0
SelectionOffset = { 0.0, -40.5 }
Mass = 30.0
HitPoints = 100.0
EnergyProductionRate = 30.0
MetalProductionRate = 10.0
EnergyStorageCapacity = 13000.0
MetalStorageCapacity = 5000.0
MinWindEfficiency = 1
MaxWindHeight = 0
MaxRotationalSpeed = 0
IncendiaryRadius = 130
IncendiaryRadiusHeated = 150
StructureSplashDamage = 130
StructureSplashDamageMaxRadius = 130
DeviceSplashDamage = 100
DeviceSplashDamageMaxRadius = 150
DeviceSplashDamageDelay = 0.3
IgnitePlatformOnDestruct = false
DestroyEffect = "effects/battery_explode.lua"

dofile("effects/device_smoke.lua")
SmokeEmitter = StandardDeviceSmokeEmitter

Sprites =
{
	{
		Name = "sbminicore-base",
		States =
		{
			Normal = { Frames = { { texture = path .. "/devices/sbminicore/base.tga" }, mipmap = true, }, },
		},
	},
	{
		Name = "sbminicore_anim",

		States =
		{
			Normal =
			{
				Frames =
				{
					{ texture = path .. "/devices/sbminicore/reactor_core01.tga" },

					duration = 0.1,
					blendColour = false,
					blendCoordinates = false,
					mipmap = true,
				},
				NextState = "Normal",
			},
		},
	},
}

Root =
{
	Name = "Battery",
	Angle = 0,
	Pivot = { 0, -0.235 },
	PivotOffset = { 0, 0 },
	Sprite = "sbminicore-base",
	ChildrenInFront =
	{
		{
			Name = "Core",
			Angle = 0,
			Pivot = { 0, 0.06},
			PivotOffset = { 0, 0 },
			Sprite = "sbminicore_anim",
		},
	},
}
