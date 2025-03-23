
Sprites =
{
	{
		Name = "WelderAnimation",

		States =
		{
			Normal =
			{
				Frames =
				{
					{ texture = "devices/tier2workshop/Welder_00041.tga" },
					blendColour = false,
					blendCoordinates = false,
					mipmap = true,
				},
				NextState = "Normal",
			},
		},
	},
	{
		Name = "SignAnimation",

		States =
		{
			Normal =
			{
				Frames =
				{
					{ texture = "devices/tier2workshop/Sign02.tga" },

					duration = 0.5,
					blendColour = false,
					blendCoordinates = false,
					mipmap = true,
				},
				NextState = "Normal",
			},
		},
	},
	{
		Name = "workshop-base",
		States =
		{
			Normal = { Frames = { { texture = "devices/tier2workshop/base.dds" }, mipmap = true, }, },
		},
	},
}

Root =
{
	Name = "Workshop",
	Angle = 0,
	Pivot = { 0, -0.565 },
	PivotOffset = { 0, 0 },
	Sprite = "workshop-base",

	ChildrenInFront =
	{
		{
			Name = "Head",
			Angle = 0,
			Pivot = { 0.174, -0.2 },
			PivotOffset = { 0, 0 },
			Sprite = "SignAnimation",
		},
	},

	ChildrenBehind =
	{
		{
			Name = "Welder",
			Angle = 0,
			Pivot = { -0.06, 0.1 },
			PivotOffset = { 0, 0 },
			Sprite = "WelderAnimation",
		},
	},
}