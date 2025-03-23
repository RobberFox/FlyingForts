MaxRotationalSpeed = 0

NodeEffects =
{

}

Root =
{
	Name = "Turbine",
	Angle = 0,
	Pivot = { 0, -0.385 },
	PivotOffset = { 0, 0 },
	Sprite = "windturbine-base",

	ChildrenInFront =
	{
		{
			Name = "Head",
			Angle = 0,
			Pivot = { -0.11, -0.08 },
			PivotOffset = { 0, 0 },
			Sprite = "windturbine-head",
			UserData = 50,
		},
	},
}
