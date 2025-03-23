
Sprites =
{
	{
		Name = "WelderAnim",

		States =
		{
			Normal =
			{
				Frames =
				{

					{ texture = "devices/upgradecentre/Welder_00041.tga" },
					blendColour = false,
					blendCoordinates = false,
					mipmap = true,
				},
				NextState = "Normal",
			},
		},
	},
	{
		Name = "SignAnim",

		States =
		{
			Normal =
			{
				Frames =
				{
					{ texture = "devices/upgradecentre/Sign02.tga" },
					blendColour = false,
					blendCoordinates = false,
					mipmap = true,
				},
				NextState = "Normal",
			},
		},
	},
	{
		Name = "upgradecentre-base",
		States =
		{
			Normal = { Frames = { { texture = "devices/upgradecentre/base.tga" }, mipmap = true, }, },
		},
	},
}

Root =
{
	Name = "UpgradeCentre",
	Angle = 0,
	Pivot = { 0, -0.575 },
	PivotOffset = { 0, 0 },
	Sprite = "upgradecentre-base",

	ChildrenInFront =
	{
		{
			Name = "Head",
			Angle = 0,
			Pivot = { -0.173, -0.2 },
			PivotOffset = { 0, 0 },
			Sprite = "SignAnim",
		},
	},

	ChildrenBehind =
	{
		{
			Name = "Welder",
			Angle = 0,
			Pivot = { -0.125, 0.2 },
			PivotOffset = { 0, 0 },
			Sprite = "WelderAnim",
		},
	},
}
