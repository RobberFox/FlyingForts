
LifeSpan = 5.1

SoundEvent = "mods/dlc1_weapons/effects/smoke.lua"
Effects =
{
	{
		Type = "sparks",
		TimeToTrigger = 0.0,
		SparkCount = 25,
		LocalPosition = { x = 0, y = 0 },	
		Texture = path .. "/effects/media/cloud",

		Gravity = 0,						
		
		EvenDistribution =					
		{
			Min = -70,						
			Max = 70,						
			StdDev = 5,						
		},

		Keyframes =							
		{
			{
				Angle = -70,				
				RadialOffsetMin = 0,		
				RadialOffsetMax = 20,		
				ScaleMean = 2,				
				ScaleStdDev = 0.2,			
				SpeedStretch = 0,			
				SpeedMean = 0,				
				SpeedStdDev = 3,			
				Drag = 0.2,					
				RotationMean = 0,			
				RotationStdDev = 45,		
				RotationalSpeedMean = -180,	
				RotationalSpeedStdDev = 0,	
				AgeMean = 2,				
				AgeStdDev = .5,				
				AlphaKeys = { 0.1, 0.5 },	
				ScaleKeys = { 0.1, 0.5 },	
			},
			{
				Angle = 0,					
				RadialOffsetMin = 0,		
				RadialOffsetMax = 20,		
				ScaleMean = 2.5,			
				ScaleStdDev = 0.1,			
				SpeedStretch = 0,			
				SpeedMean = 0,				
				SpeedStdDev = 15,			
				Drag = 0.1,					
				RotationMean = 0,			
				RotationStdDev = 45,		
				RotationalSpeedMean = 5,	
				RotationalSpeedStdDev = 0,	
				AgeMean = 3,				
				AgeStdDev = .5,				
				AlphaKeys = { 0.1, 0.5 },	
				ScaleKeys = { 0.1, 0.5 },	
			},
			{
				Angle = 70,					
				RadialOffsetMin = 0,		
				RadialOffsetMax = 20,		
				ScaleMean = 2,				
				ScaleStdDev = 0.2,			
				SpeedStretch = 0,			
				SpeedMean = 0,				
				SpeedStdDev = 3,			
				Drag = 0.2,					
				RotationMean = 0,			
				RotationStdDev = 45,		
				RotationalSpeedMean = 180,	
				RotationalSpeedStdDev = 0,	
				AgeMean = 2,				
				AgeStdDev = .5,				
				AlphaKeys = { 0.1, 0.5 },	
				ScaleKeys = { 0.1, 0.5 },	
			},
		},
	},
}
