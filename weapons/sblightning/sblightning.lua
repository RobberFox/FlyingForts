Scale = 1
SelectionWidth = 58.0
SelectionHeight = 45
SelectionOffset = { -25.0, 54 }
RecessionBox =
{
	Size = { 80, 25 },
	Offset = { -100, 60 },
}

WeaponMass = 80.0
HitPoints = 200.0
EnergyProductionRate = 0.0
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
StructureSplashDamage = 30
StructureSplashDamageMaxRadius = 100

FireEffect = path .. "/effects/lightningfire.lua"
ShellEffect = "effects/shell_eject_small.lua"
ConstructEffect = "effects/device_construct.lua"
CompleteEffect = "effects/device_complete.lua"
DestroyEffect = "mods/weapon_pack/effects/flak_weapon_explode.lua"
ReloadEffect = path .. "/effects/lightningcharge.lua"
FireEndEffect = "mods/weapon_pack/effects/cooldown_flak.lua"
ReloadEffectOffset = -0.5
RetriggerFireEffect = false
Projectile = "ThunderShotgun"
BarrelLength = 60.0
MinFireClearance = 500
FireClearanceOffsetInner = 20
FireClearanceOffsetOuter = 40
ReloadTime = 20
MinFireSpeed = 10000.0
MaxFireSpeed = 10000.1
MinFireRadius = 200.0
MaxFireRadius = 1200.0
MinFireSpread = 5
MinVisibility = 1
MaxVisibilityHeight = 500
MinFireAngle = -85
MaxFireAngle = 15
KickbackMean = 15
KickbackStdDev = 3
MouseSensitivityFactor = 0.5
PanDuration = 0
FireStdDev = 0.075
FireStdDevAuto = 0.075
Recoil = 20000
EnergyFireCost = 6000.0
MetalFireCost = 0
ShowFireAngle = true
RoundsEachBurst = 12
RoundPeriod = 0
UniformSpray = true
ReloadFramePeriod = (ReloadTime + RoundsEachBurst*RoundPeriod)/12
DoorCloseDelay = 1
AutofireCloseDoorTicks = DoorCloseDelay*25
DisruptionBlocksFire = true


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
		Name = "sblightning-base",
		States =
		{
			Normal = { Frames = { { texture = path .. "/weapons/sblightning/base.tga" }, mipmap = true, }, },
			Idle = Normal,
		},
	},
	{
		Name = "sblightning-head",
		States =
		{
			Normal = { Frames = { { texture = path .. "/weapons/sblightning/lightninghead.tga" }, mipmap = true, }, },
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
	Sprite = "sblightning-base",
	UserData = 0,
	
	ChildrenBehind =
	{
		{
			Name = "Head",
			Angle = 0,
			Pivot = { 0.0, 0.0 },
			PivotOffset = { 0.0, 0.0 },
			Sprite = "sblightning-head",
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
