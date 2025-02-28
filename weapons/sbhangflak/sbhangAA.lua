
Scale = 1
SelectionWidth = 80.0
SelectionHeight = 45
SelectionOffset = { -47.0, 52 }
RecessionBox =
{
	Size = { 80, 25 },
	Offset = { -100, 60 },
}

Mass = 60.0
HitPoints = 100.0
EnergyProductionRate = 0.0
MetalProductionRate = 0.0
EnergyStorageCapacity = 0.0
MetalStorageCapacity = 0.0
MinWindEfficiency = 1
MaxWindHeight = 0
MaxRotationalSpeed = 0
IgnitePlatformOnDestruct = true
StructureSplashDamage = 50
StructureSplashDamageMaxRadius = 150

FireEffect = "mods/weapon_pack/effects/fire_flak.lua"
ShellEffect = "effects/shell_eject_small.lua"
ConstructEffect = "effects/device_construct.lua"
CompleteEffect = "effects/device_complete.lua"
DestroyEffect = "effects/machinegun_explode.lua"
ReloadEffect = "effects/reload_flak.lua"
FireEndEffect = "effects/cooldown_flak.lua"
ReloadEffectOffset = -1.5
RetriggerFireEffect = true
Projectile = "interceptor"
BarrelLength = 50.0
MinFireClearance = 200
FireClearanceOffsetInner = 20
FireClearanceOffsetOuter = 40
ReloadTime = 0.5
MinFireSpeed = 43000.0
MaxFireSpeed = 43000.1
MinFireRadius = 100.0
MaxFireRadius = 1300.0
MinFireSpread = 0
MaxFireSpread = 0
MinVisibility = 1
MaxVisibilityHeight = 500
MinFireAngle = -90
MaxFireAngle = 30
KickbackMean = 15
KickbackStdDev = 3
MouseSensitivityFactor = 0.6
PanDuration = 0
FireStdDev = 0
FireStdDevAuto = 0
Recoil = 20000
EnergyFireCost = 450
MetalFireCost = 5
ShowFireAngle = true
RoundsEachBurst = 1
RoundPeriod = 0
BeamDuration = 0
ReloadFramePeriod = (ReloadTime)
DoorCloseDelay = 1
AutofireCloseDoorTicks = DoorCloseDelay*25

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
		Name = "sbhangAA-base",
		States =
		{
			Normal = { Frames = { { texture = path .. "/weapons/sbhangflak/base.tga" }, mipmap = true, }, },
			Idle = Normal,
		},
	},
	{
		Name = "sbhangAA-head",
		States =
		{
			Normal = { Frames = { { texture = path .. "/weapons/sbhangflak/sbhangAAhead.tga" }, mipmap = true, }, },
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
	Pivot = { 0, 0.28  },
	PivotOffset = { 0, 0 },
	Sprite = "sbhangflak-base",
	UserData = 0,
	
	ChildrenBehind =
	{
		{
			Name = "Head",
			Angle = 0,
			Pivot = { 0, 0.25 },
			PivotOffset = { 0.05, 0.0 },
			Sprite = "sbhangAA-head",
			UserData = 50,

			ChildrenBehind =
			{
				{
					Name = "Hardpoint0",
					Angle = 90,
					Pivot = { 0, 0 },
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

