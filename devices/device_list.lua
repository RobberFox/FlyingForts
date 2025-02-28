local reactor = FindDevice("reactor")
if reactor then
	reactor.Enabled = true
	reactor.EnergyCost = 7500
	reactor.MetalCost = 1000
	reactor.BuildTimeComplete = 60
end

local store = FindDevice("store")
if store then
	store.Enabled = false
end

local battery = FindDevice("battery")
if battery then
	battery.Enabled = false
end

local sandbagfastscrap = FindDevice("sandbags")
if sandbagfastscrap then
	sandbagfastscrap.ScrapPeriod = 1.5
end

table.insert(Sprites, DetailSprite("hud-detail-sbantigravity", "sbantigravity", path))
table.insert(Sprites, ButtonSprite("hud-sbantigravity-icon", "HUD/HUD-gravity", nil, ButtonSpriteBottom, nil, nil, path))
table.insert(Devices, 1,
{
	Enabled = true,
	SaveName = "sbantigravity",
	FileName = path .. "/devices/sbantigravity.lua",
	Icon = "hud-sbantigravity-icon",
	Detail = "hud-detail-sbantigravity",
	BuildTimeIntermediate = 0.1,
	BuildTimeComplete = 0.0,
	ScrapPeriod = 0,
	MetalCost = 200,
	EnergyCost = 1500,
	MetalRepairCost = 0,
	EnergyRepairCost = 0,
	MetalReclaimMin = 0.25,
	MetalReclaimMax = 0.5,
	EnergyReclaimMin = 0.1,
	EnergyReclaimMax = 0.5,
	MaxUpAngle = 60,
	BuildOnGroundOnly = false,
	SelectEffect = "ui/hud/devices/ui_devices",
})

table.insert(Devices, IndexOfDevice("reactor") + 1,
{
	SaveName = "sbbarrel",
	FileName = path .. "/devices/sbbarrel.lua",
	Icon = "hud-explosivebarrel-icon",
	Detail = "hud-detail-explosivebarrel",
	Enabled = true,
	BuildTimeComplete = 1,
	ScrapPeriod = 0,
	MetalCost = 10,
	EnergyCost = 10,
	MetalRepairCost = 10,
	EnergyRepairCost = 10,
	MaxUpAngle = 60,
	BuildOnGroundOnly = false,
	NoReclaim = false,
	CanMove = false,
	Repairable = true,
	SelectEffect = "ui/hud/devices/ui_devices",
})

table.insert(Sprites, DetailSprite("hud-detail-sbballoon", "sbballoon", path))
table.insert(Sprites, ButtonSprite("hud-sbballoon-icon", "HUD/HUD-balloon", nil, ButtonSpriteBottom, nil, nil, path))
table.insert(Devices, IndexOfDevice("sbbarrel") + 1,
{
	Enabled = true,
	SaveName = "sbballoon",
	FileName = path .. "/devices/sbballoon.lua",
	Icon = "hud-sbballoon-icon",
	Detail = "hud-detail-sbballoon",
	BuildTimeIntermediate = 0.1,
	BuildTimeComplete = 0.0,
	ScrapPeriod = 0,
	MetalCost = 10,
	EnergyCost = 300,
	MetalRepairCost = 0,
	EnergyRepairCost = 0,
	MetalReclaimMin = 0.25,
	MetalReclaimMax = 0.5,
	EnergyReclaimMin = 0.1,
	EnergyReclaimMax = 0.5,
	MaxUpAngle = 47,
	BuildOnGroundOnly = false,
	PopulationCap = 150,
	SelectEffect = "ui/hud/devices/ui_devices",
})
table.insert(Sprites, DetailSprite("hud-detail-sbweight", "sbweight", path))
table.insert(Sprites, ButtonSprite("hud-sbweight-icon", "HUD/HUD-sbweight", nil, ButtonSpriteBottom, nil, nil, path))
table.insert(Devices, IndexOfDevice("sbballoon") + 1,
{
	Enabled = true,
	SaveName = "sbweight",
	FileName = path .. "/devices/sbweight.lua",
	Icon = "hud-sbweight-icon",
	Detail = "hud-detail-sbweight",
	BuildTimeIntermediate = 0.1,
	BuildTimeComplete = 0.0,
	ScrapPeriod = 0,
	MetalCost = 10,
	EnergyCost = 300,
	MetalRepairCost = 0,
	EnergyRepairCost = 0,
	MetalReclaimMin = 0.25,
	MetalReclaimMax = 0.5,
	EnergyReclaimMin = 0.1,
	EnergyReclaimMax = 0.5,
	MaxUpAngle = 47,
	BuildOnGroundOnly = false,
	SelectEffect = "ui/hud/devices/ui_devices",
})

table.insert(Sprites, DetailSprite("hud-detail-sbsuperweight", "sbsuperweight", path))
table.insert(Sprites, ButtonSprite("hud-sbsuperweight-icon", "HUD/HUD-sbsuperweight", nil, ButtonSpriteBottom, nil, nil, path))
table.insert(Devices, IndexOfDevice("sbweight") + 1,
{
	Enabled = true,
	SaveName = "sbsuperweight",
	FileName = path .. "/devices/sbsuperweight.lua",
	Icon = "hud-sbsuperweight-icon",
	Detail = "hud-detail-sbsuperweight",
	BuildTimeIntermediate = 0.1,
	BuildTimeComplete = 0.0,
	ScrapPeriod = 0,
	MetalCost = 50,
	EnergyCost = 500,
	MetalRepairCost = 0,
	EnergyRepairCost = 0,
	MetalReclaimMin = 0.25,
	MetalReclaimMax = 0.5,
	EnergyReclaimMin = 0.1,
	EnergyReclaimMax = 0.5,
	MaxUpAngle = 47,
	BuildOnGroundOnly = false,
	SelectEffect = "ui/hud/devices/ui_devices",
})

table.insert(Sprites, ButtonSprite("hud-superantigravity-icon", "HUD/HUD-supergravity", nil, ButtonSpriteBottom, nil, nil, path))
table.insert(Devices, IndexOfDevice("sbweight") + 1,
{
	Enabled = true,
	SaveName = "superantigravity",
	FileName = path .. "/devices/superantigravity.lua",
	Icon = "hud-superantigravity-icon",
	Detail = "hud-detail-sbantigravity",
	BuildTimeIntermediate = 0.1,
	BuildTimeComplete = 0.0,
	ScrapPeriod = 0,
	MetalCost = 500,
	EnergyCost = 5000,
	MetalRepairCost = 0,
	EnergyRepairCost = 0,
	MetalReclaimMin = 0.25,
	MetalReclaimMax = 0.5,
	EnergyReclaimMin = 0.1,
	EnergyReclaimMax = 0.5,
	MaxUpAngle = 60,
	BuildOnGroundOnly = false,
	SelectEffect = "ui/hud/devices/ui_devices",
})

table.insert(Sprites, DetailSprite("hud-detail-sbminicore", "sbminicore", path))
table.insert(Sprites, ButtonSprite("hud-sbminicore-icon", "HUD/HUD-minicore", nil, ButtonSpriteBottom, nil, nil, path))
table.insert(Devices, IndexOfDevice("turbine") + 1,
{
	Enabled = true,
	SaveName = "sbminicore",
	FileName = path .. "/devices/sbminicore.lua",
	Icon = "hud-sbminicore-icon",
	Detail = "hud-detail-sbminicore",
	BuildTimeIntermediate = 5,
	BuildTimeComplete = 20.0,
	ScrapPeriod = 1.5,
	MetalCost = 500,
	EnergyCost = 3000,
	MetalRepairCost = 0,
	EnergyRepairCost = 0,
	MetalReclaimMin = 0.25,
	MetalReclaimMax = 0.5,
	EnergyReclaimMin = 0.1,
	EnergyReclaimMax = 0.5,
	MaxUpAngle = StandardMaxUpAngle,
	BuildOnGroundOnly = false,
	SelectEffect = "ui/hud/devices/ui_devices",
})

table.insert(Sprites, DetailSprite("hud-detail-sandbags-large", "HUD-Details-SandBagsLarge", path))
table.insert(Sprites, ButtonSprite("hud-sandbags-large-icon", "HUD/HUD-SandbagsLarge", nil, ButtonSpriteBottom, nil, nil, path))
table.insert(Devices, IndexOfDevice("sandbags") + 1,
{
	SaveName = "sbsandbags",
	FileName = path .. "/devices/sbsandbags.lua",
	Icon = "hud-sandbags-large-icon",
	Detail = "hud-detail-sandbags-large",
	BuildTimeComplete = 30,
	ScrapPeriod = 8,
	MetalCost = 50,
	EnergyCost = 1000,
	MetalRepairCost = 20,
	EnergyRepairCost = 800,
	MetalReclaimMin = 0,
	MetalReclaimMax = 0,
	EnergyReclaimMin = 0,
	EnergyReclaimMax = 0,
	MaxUpAngle = 47,
	BuildOnGroundOnly = false,
	HasDummy = false,
	SelectEffect = "ui/hud/devices/ui_devices",
})

function IndexOfDevice(saveName)
	for k,v in ipairs(Devices) do
		if v.SaveName == saveName then
			return k
		end
	end
	return #Devices
end
