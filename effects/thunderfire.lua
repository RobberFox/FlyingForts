--  age (in seconds) at which the explosion actor deletes itself
--  make sure this exceedes the age of all effects
LifeSpan = 5.0
SoundEvent = "mods/sbFFsoundbank/effects/thunderfire"
Sprites =
{
	{
		Name = "sbthunderfire",

		States =
		{
			Normal =
			{
				Frames =
				{
					{ texture = path .. "/effects/media/thunder1.tga" },
					{ texture = path .. "/effects/media/thunder2.tga" },
					{ texture = path .. "/effects/media/thunder3.tga" },
					{ texture = path .. "/effects/media/thunder4.tga" },
					{ texture = path .. "/effects/media/thunder5.tga", duration = 0.05 },
					{ texture = path .. "/effects/media/thunder6.tga", duration = 0.05 },
					{ texture = path .. "/effects/media/thunder7.tga", duration = 0.05 },
					{ texture = path .. "/effects/media/RocketEMP09.png", duration = 0.03 },
					{ texture = path .. "/effects/media/RocketEMP10.png", duration = 0.03 },
					{ texture = path .. "/effects/media/RocketEMP11.png", duration = 0.03 },
					{ texture = path .. "/effects/media/RocketEMP12.png", duration = 0.03},
					{ texture = path .. "/effects/media/RocketEMP13.png", duration = 0.03 },
					{ texture = path .. "/effects/media/thunder7.tga", colour = { 1, 1, 1, 0.0 }, duration = 5 }, -- just makes a blank frame long enough to last the rest of the effect
					duration = 0.1,
					blendColour = false,
					blendCoordinates = false,
				},
				--RandomPlayLength = 2,
				NextState = "Normal",
			},
		},
	},
}

Effects =
{
	{
		Type = "sound",
		TimeToTrigger = 0,
		TimeToTriggerStdDev = 0.00,
		FadeInPeriod = 0.0,
		LocalPosition = { x = 0, y = 0, z = 0 },
		Sound = path .. "/effects/media/thundercharge.ogg",
		Volume = 0.20,
		Priority = 192,
		Repeat = false,
		RandomiseStart = false,
	},
	{
		Type = "sound",
		TimeToTrigger = 0.5,
		TimeToTriggerStdDev = 0.00,
		FadeInPeriod = 0.0,
		LocalPosition = { x = 0, y = 0, z = 0 },
		Sound = path .. "/effects/media/thundershoot.ogg",
		Volume = 0.30,
		Priority = 192,
		Repeat = false,
		RandomiseStart = false,
	},
	{
		Type = "sprite",
		TimeToTrigger = 0,
		LocalPosition = { x = 0, y = 0, z = 0 },
		LocalVelocity = { x = 0, y = 0, z = 0 },
		Acceleration = { x = 0, y = 0, z = 0 },
		Drag = 0.0,
		Sprite = "sbthunderfire",
		Additive = false,
		TimeToLive = 2,
		Angle = -90,
		InitialSize = 1.5,
		ExpansionRate = 0,
		AngularVelocity = 0,
		RandomAngularVelocityMagnitude = 0,
		KillParticleOnEffectCancel = true,
		Colour1 = { 255, 255, 255, 255 },
		Colour2 = { 255, 255, 255, 255 },
	},

}
