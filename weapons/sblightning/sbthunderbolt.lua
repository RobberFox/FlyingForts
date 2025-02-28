Scale = 1
SelectionWidth = 63.0
SelectionHeight = 45
SelectionOffset = { -25.0, 54 }
RecessionBox =
{
	Size = { 80, 25 },
	Offset = { -100, 60 },
}

WeaponMass = 80.0
HitPoints = 220.0
EnergyProductionRate = 0.0
MetalProductionRate = 0.0
EnergyStorageCapacity = 0.0
MetalStorageCapacity = 0.0
MinWindEfficiency = 1
MaxWindHeight = 0
MaxRotationalSpeed = 0
DeviceSplashDamage = 100
DeviceSplashDamageMaxRadius = 175
DeviceSplashDamageDelay = 0.2
IncendiaryRadius = 100
IncendiaryRadiusHeated = 100
IgnitePlatformOnDestruct = true
StructureSplashDamage = 40
StructureSplashDamageMaxRadius = 150

FireEffect = path .. "/effects/thunderfire.lua"
ShellEffect = "effects/shell_eject_small.lua"
ConstructEffect = "effects/device_construct.lua"
CompleteEffect = "effects/device_complete.lua"
DestroyEffect = "mods/weapon_pack/effects/flak_weapon_explode.lua"
ReloadEffect = path .. "/effects/thundercharge.lua"
FireEndEffect = "mods/weapon_pack/effects/cooldown_flak.lua"
ReloadEffectOffset = -0.5

FireDelay = 0.25

Projectile = "sbthunder"
BarrelLength = 60.0
MinFireClearance = 500
FireClearanceOffsetInner = 20
FireClearanceOffsetOuter = 40
ReloadTime = 40
ReloadTimeIncludesBurst = false
MinFireSpeed = 22000.0
MaxFireSpeed = 22000.1
MinFireRadius = 150.0
MaxFireRadius = 1200.0
MinFireSpread = 8
MinVisibility = 0.25
MaxVisibilityHeight = 500
MinFireAngle = -85
MaxFireAngle = 15
KickbackMean = 15
KickbackStdDev = 3
MouseSensitivityFactor = 0.5
PanDuration = 0
FireStdDev = 0.0
FireStdDevAuto = 0.0
Recoil = 20000
EnergyFireCost = 5000.0
MetalFireCost = 0
ShowFireAngle = true
RoundsEachBurst = 1
RoundPeriod = 0.00001
BeamDuration = 0.05
ReloadFramePeriod = (ReloadTime + RoundsEachBurst*RoundPeriod)/12

TargetIcon =
{
	Persistent = true,
	Texture = "ui/textures/mouse_target.tga",
	Width = 32,
	Height = 32,
}

dofile("effects/device_smoke.lua")
SmokeEmitter = StandardDeviceSmokeEmitter

Sprites =
{
	{
		Name = "sbthunderbolt-base",
		States =
		{
			Normal = { Frames = { { texture = path .. "/weapons/sblightning/base.tga" }, mipmap = true, }, },
			Idle = Normal,
		},
	},
	{
		Name = "sbthunderbolt-head",
		States =
		{
			Normal = { Frames = { { texture = path .. "/weapons/sblightning/thunderhead.tga" }, mipmap = true, }, },
			Idle = Normal,
		},
	},
}

NodeEffects =
{
	{
		NodeName = "Hardpoint0",
		EffectPath = "effects/weapon_overheated.lua",
		Automatic = false,
	},
}

Root =
{
	Name = "flak",
	Angle = 0,
	Pivot = { -0.0, 0.58 },
	PivotOffset = { 0, 0 },
	Sprite = "sbthunderbolt-base",
	UserData = 0,
	
	ChildrenBehind =
	{
		{
			Name = "Head",
			Angle = 0,
			Pivot = { 0.0, 0.0 },
			PivotOffset = { 0.0, 0.0 },
			Sprite = "sbthunderbolt-head",
			UserData = 50,

			ChildrenBehind =
			{
				{
					Name = "Hardpoint0",
					Angle = 90,
					Pivot = { 0.15, 0.01 },
					PivotOffset = { 0, 0 },
				},
				{
					Name = "Chamber",
					Angle = 0,
					Pivot = { 0.165, -0.05 },
					PivotOffset = { 0, 0 },
				},
			},
		},
	},
}
