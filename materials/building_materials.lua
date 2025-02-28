StandardMaxLength = 160
StandardMaxLinkLength = 220

local portal = FindMaterial("portal")
local shield = FindMaterial("shield")

local bracingchange = FindMaterial("bracing")
if bracingchange then
	bracingchange.bracingchangeScrapTime = 1.0
end

local backbracingchange = FindMaterial("backbracing")
if backbracingchange then
	backbracingchange.ScrapTime = 1.0
end


local portalchange = FindMaterial("portal")
if portalchange then
	portalchange.MaxLength = StandardMaxLength
	portalchange.MaxLinkLength = StandardMaxLinkLength
end

local shieldchange = FindMaterial("shield")
if shieldchange then
	shieldchange.MaxLength = StandardMaxLength
	shieldchange.MaxLinkLength = StandardMaxLinkLength
	shield.HitPoints = 100
end

table.insert(Sprites, DetailSprite("hud-detail-sbcardboard", "sbcardboard", path))
table.insert(Sprites, ButtonSprite("hud-sbcardboard-icon", "HUD/Materials-cardboard", nil, 0.664, nil, nil, path))
table.insert(Materials,

{
	SaveName = "sbcardboard",
	Icon = "hud-sbcardboard-icon",
	Detail = "hud-detail-sbcardboard",
	Sprite = "sbcardboard",
	KeySpriteByDamage = true,
	Stiffness = 100000,
	MaxCompression = 0.95,
	MaxExpansion = 1.15,
	MinLength = StandardMinLength,
	MaxLength = StandardMaxLength,
	MaxLinkLength = StandardMaxLinkLength,
	Mass = 0.06,
	AirDrag = 6.8,
	HitPoints = 20,
	AbsorptionMomentumThreshold = 15,
	ReflectionMomentumThreshold = 20,
	PenetrationMomentumThreshold = 100,
	RicochetVariationFactor = 0.01,
	SpeedLossFactor = 1,
	MetalBuildCost = 0.03,
	MetalRepairCost = 0.0,
	MetalReclaim = 0.0,
	EnergyBuildCost = 0.3,
	EnergyRepairCost = 0.0,
	EnergyReclaim = 0.0,
	EnergyRunCost = 0.0,
	BuildTime = 1.5,
	ScrapTime = 0.5,
	RepairRateMultiplier = 1.0,
	CatchesFire = true,
	SupportsDevices = false,
	ReflectsBeams = false,
	Node = StandardNode,
	IsBehindDevices = false,
	AttachesCladding = true,
	BuildEffect = "effects/build_bracing.lua",
	DestroyEffect = "effects/bracing_destroy.lua",
	IsFogOfWarArmour = true,
	FogOfWarTargetSaveName = "bracing",
	FireDestroyEffect = "effects/destroy_fire.lua",
	FullExtrusion = true,
	RecessionTargetSaveName = "sbcardboardbg",
	ForegroundTargetSaveName = "bracing",
	DoorTargetSaveName = "door",
	SelectEffect = "ui/hud/materials/ui_materials",
	NodeImpacts =
	{
		["foundations"] = "effects/bounce_wood.lua",
		["rocks01"] = "effects/bounce_wood.lua",
		["default"] = "effects/bounce_wood.lua",
	},
})
table.insert(Sprites,

{
	Name = "sbcardboard",
	States =
	{
		Normal =
		{
			Frames =
			{
				-- durations must add up to 1 for the damage keying to work properly
				-- anything beyond 1 will never show
				{ texture = path .. "/materials/cardboard.png",},
				{ texture = path .. "/materials/cardboard-1.png",},
				{ texture = path .. "/materials/cardboard-2.png",},
				{ texture = path .. "/materials/cardboard-2.png",},
				mipmap = true,
				repeatS = false,
			},
		},
	},
})
table.insert(Sprites, DetailSprite("hud-detail-sbcardboardbg", "sbcardboardbg", path))
table.insert(Sprites, ButtonSprite("hud-sbcardboardbg-icon", "HUD/Materials-cardboardbg", nil, 0.664, nil, nil, path))
table.insert(Materials,

{
	SaveName = "sbcardboardbg",
	Icon = "hud-sbcardboardbg-icon",
	Detail = "hud-detail-sbcardboardbg",
	Sprite = "sbcardboardbg",
	KeySpriteByDamage = true,
	Stiffness = 100000,
	MaxCompression = 0.95,
	MaxExpansion = 1.15,
	MinLength = StandardMinLength,
	MaxLength = StandardMaxLength,
	MaxLinkLength = StandardMaxLinkLength,
	Mass = 0.06,
	AirDrag = 3.8,
	HitPoints = 15,
	ForegroundTargetSaveName = "bracing",
	RenderOrder = 0,
	AbsorptionMomentumThreshold = 15,
	ReflectionMomentumThreshold = 20,
	PenetrationMomentumThreshold = 100,
	RicochetVariationFactor = 0.01,
	SpeedLossFactor = 1,
	MetalBuildCost = 0.03,
	MetalRepairCost = 0.0,
	MetalReclaim = 0.0,
	EnergyBuildCost = 0.3,
	EnergyRepairCost = 0.0,
	EnergyReclaim = 0.0,
	EnergyRunCost = 0.0,
	BuildTime = 1.5,
	ScrapTime = 0.5,
	RepairRateMultiplier = 1.0,
	CatchesFire = true,
	SupportsDevices = false,
	ReflectsBeams = false,
	Node = StandardNode,
	IsBehindDevices = true,
	AttachesCladding = true,
	BackgroundCladding = true,
	CollidesWithWind = false,
	BuildEffect = "effects/build_bracing.lua",
	DestroyEffect = "effects/bracing_destroy.lua",
	IsFogOfWarArmour = true,
	FogOfWarTargetSaveName = "bracing",
	FireDestroyEffect = "effects/destroy_fire.lua",
	FullExtrusion = true,
	PoweredByDeviceOverlap = true,
	CollidesWithFriendlyProjectiles = false,
	CollidesWithEnemyProjectiles = false,
	CollidesWithFriendlyBeams = false,
	CollidesWithEnemyBeams = true,
	SelectEffect = "ui/hud/materials/ui_materials",
	NodeImpacts =
	{
		["foundations"] = "effects/bounce_wood.lua",
		["rocks01"] = "effects/bounce_wood.lua",
		["default"] = "effects/bounce_wood.lua",
	},
})
table.insert(Sprites,

{
	Name = "sbcardboardbg",
	States =
	{
		Normal =
		{
			Frames =
			{
				-- durations must add up to 1 for the damage keying to work properly
				-- anything beyond 1 will never show
				{ texture = path .. "/materials/cardboardbg.png",},
				{ texture = path .. "/materials/cardboardbg-1.png",},
				{ texture = path .. "/materials/cardboardbg-2.png",},
				{ texture = path .. "/materials/cardboardbg-2.png",},
				mipmap = true,
				repeatS = false,
			},
		},
	},
})
table.insert(Sprites, DetailSprite("hud-detail-sbtarp", "sbtarp", path))
table.insert(Sprites, ButtonSprite("hud-sbtarp-icon", "HUD/Materials-tarp", nil, 0.664, nil, nil, path))
table.insert(Materials,
{
	SaveName = "sbtarp",
	Icon = "hud-sbtarp-icon",
	Detail = "hud-detail-sbtarp",
	Sprite = "sbtarp",
	Enabled = true,
	RenderOrder = 7,
	Stiffness = 64000,
	SpringDamping = 5,
	AirDrag = 100.0,
	MaxCompression = 0.125,
	MaxExpansion = 6,
	Pretension = 0.0,
	MinLength = 70,
	MaxLength = 700,
	MaxSegmentLength = 25,
	Mass = 0.01,
	HitPoints = 20,
	ReflectionMomentumThreshold = 30,
	RicochetVariationFactor = 0,
	SpeedLossFactor = 1,
	MetalBuildCost = 0.35,
	MetalRepairCost = 0.2,
	MetalReclaim = 0.05,
	EnergyBuildCost = 2.0,
	EnergyRepairCost = 1.2,
	EnergyReclaim = 0.0,
	EnergyRunCost = 0.0,
	BuildTime = 0,
	ScrapTime = 0,
	RequiresFoundationSupport = false,
	AttachesCladding = false,
	SupportsDevices = false,
	AlignedLinksAllowed = true,
	CanBeTempBraced = false,
	ReflectsBeams = false,
	CatchesFire = true,
	ShowEndFireSegments = true,
	DegreesPerSecondMin = 100,
	DegreesPerSecondMax = 400,
	FireLateralOffsetStdDev = 3,
	CollidesWithFriendlyProjectiles = false,
	CollidesWithEnemyProjectiles = false,
	CollidesWithFriendlyBeams = false,
	CollidesWithEnemyBeams = false,
	AngleStressPrimaryThreshold = 360, -- no breakage
	AngleStressSecondaryThreshold = 360,
	Node = CableNode,
	IsBehindDevices = false,
	CollidesWithWind = false,
	ConductsPower = false,
	BuildEffect = "effects/build_cable.lua",
	KeySpriteByDamage = true,
	SelectEffect = "ui/hud/materials/ui_materials",
	NodeImpacts =
	{
		["foundations"] = "",
		["rocks01"] = "",
		["default"] = "",
	},
})

table.insert(Sprites,
{
	Name = "sbtarp",
	States =
	{
		Normal =
		{
			Frames =
			{
				-- durations must add up to 1 for the damage keying to work properly
				-- anything beyond 1 will never show
				{ texture = path .. "/materials/tarp.png",},
				{ texture = path .. "/materials/tarp-1.png",},
				{ texture = path .. "/materials/tarp-2.png",},
				{ texture = path .. "/materials/tarp-2.png",},
				mipmap = true,
				repeatS = false,
			},
		},
	},
})

for k,v in ipairs(Materials) do
	v.Stiffness = v.Stiffness * 1.25
end
