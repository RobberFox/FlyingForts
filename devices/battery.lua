
Sprites =
{
	{
		Name = "battery_detail",

		States =
		{
			Normal =
			{
				Frames =
				{
					{ texture = "devices/battery/battery05.tga" },
					blendColour = false,
					blendCoordinates = false,
					mipmap = true,
				},
				NextState = "Normal",
			},
		},
	},
	{
		Name = "battery-base",
		States =
		{
			Normal = { Frames = { { texture = "devices/battery/base.tga" }, mipmap = true, }, },
		},
	},
}

NodeEffects =
{

}

Root =
{
	Name = "Battery",
	Angle = 0,
	Pivot = { 0, -0.235 },
	PivotOffset = { 0, 0 },
	Sprite = "battery-base",
	
	ChildrenInFront =
	{
		{
			Name = "Head",
			Angle = 0,
			Pivot = { 0, 0 },
			PivotOffset = { 0, 0 },
			Sprite = "battery_detail",
			UserData = 50,
		},
	},
}
