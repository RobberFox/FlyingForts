
Sprites =
{
	{
		Name = "FactorySign",

		States =
		{
			Normal =
			{
				Frames =
				{

					{ texture = "devices/tier3factory/Sign17.tga" },

					duration = 0.2,
					blendColour = false,
					blendCoordinates = false,
					mipmap = true,
				},
				NextState = "Normal",
			},
		},
	},
	{
		Name = "WorkerAnim",

		States =
		{
			Normal =
			{
				Frames =
				{

					{ texture = "devices/tier3factory/Worker_00044.tga" },
					blendColour = false,
					blendCoordinates = false,
					mipmap = true,
				},
				NextState = "Normal",
			},
		},
	},
	{
		Name = "factory-base",
		States =
		{
			Normal = { Frames = { { texture = "devices/tier3factory/base.tga" }, mipmap = true, }, },
		},
	},
}

Root =
{
	Name = "Factory",
	Angle = 0,
	Pivot = { 0, -0.58 },
	PivotOffset = { 0, 0 },
	Sprite = "factory-base",

	ChildrenInFront =
	{
		{
			Name = "Head",
			Angle = 0,
			Pivot = { -0.26, -0.15 },
			PivotOffset = { 0, 0 },
			Sprite = "FactorySign",
		},
		{
			Name = "Worker",
			Angle = 0,
			Pivot = { 0.188, 0.25 },
			PivotOffset = { 0, 0 },
			Sprite = "WorkerAnim",
		},
	},
}
