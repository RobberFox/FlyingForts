table.insert(Sprites, ButtonSprite("hud-group-sbjet", "groups/Group-sbjet", GroupButtonSpriteBottom, GroupButtonSpriteBottom, nil, nil, path))
table.insert(Sprites, ButtonSprite("hud-sbpropeller-icon", "HUD/HUD-propeller", nil, ButtonSpriteBottom, nil, nil, path))
table.insert(Sprites, DetailSprite("hud-detail-sbjet", "HUD-Details-sbjet", path))
table.insert(Weapons, IndexOfWeapon("machinegun"),
{
	Enabled = true,
	SaveName = "sbjet",
	FileName = path .. "/weapons/sbjet.lua",
	Icon = "hud-sbpropeller-icon",
	GroupButton = "hud-group-sbjet",
	Detail = "hud-detail-sbjet",
	BuildTimeIntermediate = 10.0,
	BuildTimeComplete = 30.0,
	ScrapPeriod = 3,
	MetalCost = 200,
	EnergyCost = 3000,
	MetalRepairCost = 15,
	EnergyRepairCost = 250,
	MetalReclaimMin = 0.25,
	MetalReclaimMax = 0.5,
	EnergyReclaimMin = 0.1,
	EnergyReclaimMax = 0.5,
	MaxSpotterAssistance = 0, -- machinegun doesn't benefit from spotters
	MaxUpAngle = 30,
	BuildOnGroundOnly = false,
	SelectEffect = "ui/hud/weapons/ui_weapons",
	Upgrades =
	{
		{
			Enabled = true,
			SaveName = "sbrocket",
			MetalCost = 650,
			EnergyCost = 3700,
		},
	},
})

table.insert(Sprites, ButtonSprite("hud-group-sbbomb", "groups/Group-sbbomb", GroupButtonSpriteBottom, GroupButtonSpriteBottom, nil, nil, path))
table.insert(Sprites, ButtonSprite("hud-sbbombbay-icon", "HUD/HUD-sbbombbay", nil, ButtonSpriteBottom, nil, nil, path))
table.insert(Sprites, DetailSprite("hud-detail-sbbomb", "HUD-Details-sbbomb", path))
table.insert(Weapons, IndexOfWeapon("sbthunderbolt") + 1,
{
	Enabled = true,
	SaveName = "sbcarpetbomb",
	FileName = path .. "/weapons/sbbombbay/sbcarpetbomb.lua",
	Icon = "hud-sbbombbay-icon",
	GroupButton = "hud-group-sbbomb",
	Detail = "hud-detail-sbbomb",
	Prerequisite = "sbiontech",
	BuildTimeIntermediate = 1.0,
	BuildTimeComplete = 50.0,
	ScrapPeriod = 3,
	MetalCost = 700,
	EnergyCost = 5500,
	MetalRepairCost = 15,
	EnergyRepairCost = 250,
	MetalReclaimMin = 0.25,
	MetalReclaimMax = 0.5,
	EnergyReclaimMin = 0.1,
	EnergyReclaimMax = 0.5,
	MaxSpotterAssistance = 0, -- machinegun doesn't benefit from spotters
	MaxUpAngle = 30,
	BuildOnGroundOnly = false,
	SelectEffect = "ui/hud/weapons/ui_weapons",
	PopulationCap = 10,
})

table.insert(Sprites, ButtonSprite("hud-sbhangflak-icon", "HUD/HUD-sbhangflak", nil, ButtonSpriteBottom, nil, nil, path))
table.insert(Sprites, DetailSprite("hud-detail-sbhangflak", "HUD-Details-sbdownflak", path))
table.insert(Weapons, IndexOfWeapon("rocket") + 1,
{
	Enabled = true,
	SaveName = "sbhangflak",
	FileName = path .. "/weapons/sbhangflak/sbhangflak.lua",
	Icon = "hud-sbhangflak-icon",
	GroupButton = "hud-group-flak",
	Detail = "hud-detail-sbhangflak",
	Prerequisite = "armoury",
	BuildTimeIntermediate = 1.0,
	BuildTimeComplete = 25.0,
	ScrapPeriod = 3,
	MetalCost = 225,
	EnergyCost = 1500,
	MetalRepairCost = 15,
	EnergyRepairCost = 250,
	MetalReclaimMin = 0.25,
	MetalReclaimMax = 0.5,
	EnergyReclaimMin = 0.1,
	EnergyReclaimMax = 0.5,
	MaxSpotterAssistance = 0, -- machinegun doesn't benefit from spotters
	MaxUpAngle = 30,
	BuildOnGroundOnly = false,
	SelectEffect = "ui/hud/weapons/ui_weapons",
	Upgrades =
	{
		["sbjet"] =
		{
			Enabled = true,
			SaveName = "sbhangcannon",
			MetalCost = 600,
			EnergyCost = 3500,
		},
	},
})


table.insert(Sprites, DetailSprite("hud-detail-sbdowncannonflying", "HUD-Details-sbdowncannonflying", path))
table.insert(Weapons, IndexOfWeapon("sbhangflak") + 2,
{
	Enabled = false,
	SaveName = "sbhangcannon",
	FileName = path .. "/weapons/sbhangflak/sbhangcannon.lua",
	Icon = "hud-sbhangflak-icon",
	GroupButton = "hud-group-cannon",
	Detail = "hud-detail-sbdowncannonflying",
	Prerequisite = "upgrade",
	BuildTimeIntermediate = 1.0,
	BuildTimeComplete = 60.0,
	ScrapPeriod = 5,
	MetalCost = 625,
	EnergyCost = 5000,
	MetalRepairCost = 15,
	EnergyRepairCost = 250,
	MetalReclaimMin = 0.25,
	MetalReclaimMax = 0.5,
	EnergyReclaimMin = 0.1,
	EnergyReclaimMax = 0.5,
	MaxSpotterAssistance = 0, -- machinegun doesn't benefit from spotters
	MaxUpAngle = 30,
	BuildOnGroundOnly = false,
	SelectEffect = "ui/hud/weapons/ui_weapons",		
})

table.insert(Sprites, ButtonSprite("hud-group-sbthunder", "groups/Group-sbthunder", GroupButtonSpriteBottom, GroupButtonSpriteBottom, nil, nil, path))
table.insert(Sprites, ButtonSprite("hud-sbthunder-icon", "HUD/HUD-sbthunder", nil, ButtonSpriteBottom, nil, nil, path))
table.insert(Sprites, DetailSprite("hud-detail-sbthunder", "HUD-Details-sbthunder", path))
table.insert(Weapons, IndexOfWeapon("sblightning") + 1,
{
	Enabled = true,
	SaveName = "sbthunderbolt",
	FileName = path .. "/weapons/sblightning/sbthunderbolt.lua",
	Icon = "hud-sbthunder-icon",
	GroupButton = "hud-group-sbthunder",
	Detail = "hud-detail-sbthunder",
	Prerequisite = "factory",
	BuildTimeIntermediate = 1.0,
	BuildTimeComplete = 100.0,
	ScrapPeriod = 3,
	MetalCost = 1000,
	EnergyCost = 6000,
	MetalRepairCost = 15,
	EnergyRepairCost = 250,
	MetalReclaimMin = 0.25,
	MetalReclaimMax = 0.5,
	EnergyReclaimMin = 0.1,
	EnergyReclaimMax = 0.5,
	MaxSpotterAssistance = 0, -- machinegun doesn't benefit from spotters
	MaxUpAngle = 30,
	BuildOnGroundOnly = false,
	SelectEffect = "ui/hud/weapons/ui_weapons",
	PopulationCap = 12
})

table.insert(Sprites, ButtonSprite("hud-group-sblightning", "groups/Group-sblightning", GroupButtonSpriteBottom, GroupButtonSpriteBottom, nil, nil, path))
table.insert(Sprites, ButtonSprite("hud-sblightning-icon", "HUD/HUD-sblightning", nil, ButtonSpriteBottom, nil, nil, path))
table.insert(Sprites, DetailSprite("hud-detail-sblightning", "HUD-Details-sblightning", path))
table.insert(Weapons,
{
	Enabled = false,
	SaveName = "sblightning",
	FileName = path .. "/weapons/sblightning/sblightning.lua",
	Icon = "hud-sblightning-icon",
	GroupButton = "hud-group-sblightning",
	Detail = "hud-detail-sblightning",
	Prerequisite = "sbiontech",
	BuildTimeIntermediate = 1.0,
	BuildTimeComplete = 80.0,
	ScrapPeriod = 3,
	MetalCost = 750,
	EnergyCost = 5000,
	MetalRepairCost = 15,
	EnergyRepairCost = 250,
	MetalReclaimMin = 0.25,
	MetalReclaimMax = 0.5,
	EnergyReclaimMin = 0.1,
	EnergyReclaimMax = 0.5,
	MaxSpotterAssistance = 0, -- machinegun doesn't benefit from spotters
	MaxUpAngle = 30,
	BuildOnGroundOnly = false,
	SelectEffect = "ui/hud/weapons/ui_weapons",
	PopulationCap = 12,
})


local h = FindWeapon("howitzer")
if h then
	h.PopulationCap = 6
end

local f = FindWeapon("flak")
if f then
	f.PopulationCap = 20
end
