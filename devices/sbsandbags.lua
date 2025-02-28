ConstructEffect = "effects/device_construct.lua"
CompleteEffect = "effects/device_complete.lua"
HurtEffect = "effects/sandbags_hurt.lua"
HurtMinDelay = 1.5
Scale = 1
SelectionWidth = 44.0
SelectionHeight = 40.0
SelectionOffset = { 0.0, -40.5 }
Mass = 65.0
HitPoints = 600.0
EnergyProductionRate = 0.0
MetalProductionRate = 0.0
EnergyStorageCapacity = 0.0
MetalStorageCapacity = 0.0
MinWindEfficiency = 1
MaxWindHeight = 0
MaxRotationalSpeed = 0
DrawBracket = false
DrawBehindTerrain = true
NoReclaim = false
TeamOwned = true
BlockPenetration = true
DestroyEffect = "effects/sandbags_explode.lua"
DestroyUnderwaterEffect = "mods/dlc2/effects/device_explode_submerged_small.lua"
EMPVulnerability = 0

Sprites =
{
	{
		Name = "sbsandbags-base",
		States =
		{
			Normal = { Frames = { { texture = path .. "/devices/sbsandbags/base.tga" }, mipmap = true, }, },
		},
	},
}

Root =
{
	Name = "Large Sandbags",
	Angle = 0,
	Pivot = { 0, -0.57 },
	PivotOffset = { 0, 0 },
	Sprite = "sbsandbags-base",

	ChildrenInFront =
	{
	},
}
