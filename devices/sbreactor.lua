DestroyEffect = "effects/mushroom_cloud.lua"
HurtEffect = "effects/reactor_hurt.lua"
ClaimsStructures = true
Scale = 1.0
SelectionWidth = 45.0
SelectionHeight = 85.0
SelectionOffset = { 0.0, 0.0 }
Mass = 40.0
HitPoints = 100.0
EnergyProductionRate = 100
MetalProductionRate = 5.0
EnergyStorageCapacity = 0 --4000.0
MetalStorageCapacity = 0 --1000.0
MinWindEfficiency = 1
MaxWindHeight = 0
MaxRotationalSpeed = 0
DeviceSplashDamage = 400
DeviceSplashDamageMaxRadius = 400
DeviceSplashDamageDelay = 0
IncendiaryRadius = 250
IncendiaryRadiusHeated = 350
StructureSplashDamage = 240
StructureSplashDamageMaxRadius = 200
HurtMinDelay = 3
Repairable = false
ExplodeWhenOutOfWorld = true

Sprites =
{
	{
		Name = "sbpiston_anim",

		States =
		{
			Normal =
			{
				Frames =
				{
					{ texture = path .. "/devices/sbreactor/reactor_piston01.tga" },
					blendColour = false,
					blendCoordinates = false,
					mipmap = true,
				},
				NextState = "Normal",
			},
		},
	},
	{
		Name = "sbreactor-base",
		States =
		{
			Normal = { Frames = { { texture = path .. "/devices/sbreactor/base.tga" }, mipmap = true, }, },
		},
	},
}

NodeEffects =
{
}

Root =
{
	Name = "Control Reactor",
	Angle = 0,
	Pivot = { 0, -0.045 },
	PivotOffset = { 0, 0 },
	Sprite = "sbreactor-base",

	ChildrenInFront =
	{
		{
			Name = "Head1",
			Angle = 0,
			Pivot = { 0.37, -0.12},
			PivotOffset = { 0, 0 },
			Sprite = "sbpiston_anim",
		},
		{
			Name = "Head2",
			Angle = -78,
			Pivot = { -0.37, -0.12},
			PivotOffset = { 0, 0 },
			Sprite = "sbpiston_anim",
		},
		{
			Name = "Head3",
			Angle = 180,
			Pivot = { -0.37, 0.24},
			PivotOffset = { 0, 0 },
			Sprite = "sbpiston_anim",
		},
		{
			Name = "Head4",
			Angle = 102,
			Pivot = { 0.37, 0.24},
			PivotOffset = { 0, 0 },
			Sprite = "sbpiston_anim",
		},
	},
}
