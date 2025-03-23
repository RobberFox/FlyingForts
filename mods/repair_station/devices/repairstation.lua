Sprites =
{
	{
		Name = "sign_anim",

		States =
		{
			Normal =
			{
				Frames = { texture = "mods/repair_station/devices/repairstation/ExtinguisherArm_00000.png" },
			},
			
			Activate =
			{
				Frames = { texture = "mods/repair_station/devices/repairstation/ExtinguisherArm_00000.png" },
				NextState = "Active",
			},
			
			Active =
			{
				Frames =
				{
					{ texture = "mods/repair_station/devices/repairstation/RepairStationSign_00000.png" },
					blendColour = false,
					blendCoordinates = false,
					mipmap = true,
				},
				NextState = "Active",
			},
			
			Deactivate =
			{
				Frames = { texture = "mods/repair_station/devices/repairstation/ExtinguisherArm_00000.png" },
				NextState = "Normal",
			},
			
		},
	},
	{
		Name = "repair_anim",

		States =
		{
			Normal = { Frames = { { texture = "mods/repair_station/devices/repairstation/RepairArm_00000.png" }, mipmap = true, }, },
			Activate =
			{
				Frames =
				{
					{ texture = "mods/repair_station/devices/repairstation/RepairArm_00007.png" },
					blendColour = false,
					blendCoordinates = false,
					mipmap = true,
				},
				NextState = "Active",
			},
			
			Active =
			{
				Frames =
				{
					{ texture = "mods/repair_station/devices/repairstation/RepairArm_00016.png" },
					blendColour = false,
					blendCoordinates = false,
					mipmap = true,
				},
				NextState = "Active",
			},
			
			Deactivate =
			{
				Frames =
				{
					{ texture = "mods/repair_station/devices/repairstation/RepairArm_00036.png" },
					blendColour = false,
					blendCoordinates = false,
					mipmap = true,
				},
				NextState = "Normal",
			},
		},
	},
	{
		Name = "extinguisher_anim",
		States =
		{
			Normal = { Frames = { { texture = "mods/repair_station/devices/repairstation/ExtinguisherArm_00000.png" }, mipmap = true, }, },
			Activate =
			{
				Frames =
				{
					{ texture = "mods/repair_station/devices/repairstation/ExtinguisherArm_00000" },
					blendColour = false,
					blendCoordinates = false,
					mipmap = true,
				},
				NextState = "Active",
			},
			Active = { Frames = { { texture = "mods/repair_station/devices/repairstation/ExtinguisherArm_00009.png" }, mipmap = true, }, },
			Deactivate =
			{
				Frames =
				{
					{ texture = "mods/repair_station/devices/repairstation/ExtinguisherArm_00073" },
					blendColour = false,
					blendCoordinates = false,
					mipmap = true,
				},
				NextState = "Normal",
			},
		},
	},

		{
		Name = "repairstation-base",
		States =
		{
		Normal = { Frames = { { texture = "mods/repair_station/devices/repairstation/active.tga" }, mipmap = true, }, },
		Activate = { Frames = { { texture = "mods/repair_station/devices/repairstation/active.tga" }, mipmap = true, }, NextState = "Active", },
		Active = { Frames = { { texture = "mods/repair_station/devices/repairstation/active.tga" }, mipmap = true, }, },
		Deactivate = { Frames = { { texture = "mods/repair_station/devices/repairstation/active.tga" }, mipmap = true, }, NextState = "Normal", },
		},
	},
}

NodeEffects =
{

}

Root =
{
	Name = "RepairStation",
	Angle = 0,
	Pivot = { 0, -0.235 },
	PivotOffset = { 0, 0 },
	Sprite = "repairstation-base",
	
	ChildrenInFront =
	{
		{
			Name = "sign",
			Angle = 0,
			Pivot = { -0.01, -0.15 },
			PivotOffset = { 0, 0 },
			Sprite = "sign_anim",
			UserData = 40,
		},
		{
			Name = "Idle",
			Angle = 0,
			Pivot = { 0, 0 },
			PivotOffset = { 0, 0 },
		},
		{
			Name = "Active",
			Angle = 0,
			Pivot = { 0, 0 },
			PivotOffset = { 0, 0 },
		},
		{
			Name = "Extinguish",
			Angle = 0,
			Pivot = { 0.6, 0 },
			PivotOffset = { 0, 0 },
		},
	},
	
	ChildrenBehind =
	{
		{
			Name = "repair_arm",
			Angle = 0,
			Pivot = { -0.45, 0 },
			PivotOffset = { 0, 0 },
			Sprite = "repair_anim",
			UserData = 60,
		},
		{
			Name = "extinguisher_arm",
			Angle = 0,
			Pivot = { 0.48, 0.02 },
			PivotOffset = { 0, 0 },
			Sprite = "extinguisher_anim",
			UserData = 80,
		},
	},
}
