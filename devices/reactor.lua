HitPoints = 1000.0
Repairable = true

Sprites =
{
	{
		Name = "piston_anim",

		States =
		{
			Normal =
			{
				Frames =
				{
					{ texture = "devices/reactor/reactor_piston01.dds" },
					blendColour = false,
					blendCoordinates = false,
					mipmap = true,
				},
				NextState = "Normal",
			},
		},
	},
	{
		Name = "reactor-base",
		States =
		{
			Normal = { Frames = { { texture = "devices/reactor/base.dds" }, mipmap = true, }, },
		},
	},
}


NodeEffects =
{
}

Root =
{
	Name = "Reactor",
	Angle = 0,
	Pivot = { 0, -0.045 },
	PivotOffset = { 0, 0 },
	Sprite = "reactor-base",

	ChildrenInFront =
	{
		{
			Name = "Head1",
			Angle = 0,
			Pivot = { 0.37, -0.12},
			PivotOffset = { 0, 0 },
			Sprite = "piston_anim",
		},
		{
			Name = "Head2",
			Angle = -78,
			Pivot = { -0.37, -0.12},
			PivotOffset = { 0, 0 },
			Sprite = "piston_anim",
		},
		{
			Name = "Head3",
			Angle = 180,
			Pivot = { -0.37, 0.24},
			PivotOffset = { 0, 0 },
			Sprite = "piston_anim",
		},
		{
			Name = "Head4",
			Angle = 102,
			Pivot = { 0.37, 0.24},
			PivotOffset = { 0, 0 },
			Sprite = "piston_anim",
		},
	},
}
