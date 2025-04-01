local store = FindDevice("store")
if store then
	store.Enabled = false
end

local battery = FindDevice("battery")
if battery then
	battery.Enabled = false
end

table.insert(Sprites, ButtonSprite("hud-sbantigravity-icon", "HUD/HUD-gravity", nil, ButtonSpriteBottom, nil, nil, path))
table.insert(Sprites, DetailSprite("hud-detail-sbantigravity", "HUD-Details-sbantigravity", path))
local sbantigravity = {
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
}
table.insert(Devices, 1, sbantigravity)

table.insert(Sprites, ButtonSprite("hud-sbsuperweight-icon", "HUD/HUD-sbsuperweight", nil, ButtonSpriteBottom, nil, nil, path))
table.insert(Sprites, DetailSprite("hud-detail-sbsuperweight", "HUD-Details-sbsuperweight", path))
local sbsuperweight = {
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
}
InsertDeviceBehind("sbantigravity", sbsuperweight)

table.insert(Sprites, ButtonSprite("hud-superantigravity-icon", "HUD/HUD-supergravity", nil, ButtonSpriteBottom, nil, nil, path))
table.insert(Sprites, DetailSprite("hud-detail-sbsuperantigravity", "HUD-Details-sbsuperantigravity", path))
local superantigravity =
{
	Enabled = true,
	SaveName = "superantigravity",
	FileName = path .. "/devices/superantigravity.lua",
	Icon = "hud-superantigravity-icon",
	Detail = "hud-detail-sbsuperantigravity",
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
}
InsertDeviceBehind("sbsuperweight", superantigravity)

table.insert(Sprites, DetailSprite("hud-detail-sbweight", "HUD-Details-sbweight", path))
table.insert(Sprites, ButtonSprite("hud-sbweight-icon", "HUD/HUD-sbweight", nil, ButtonSpriteBottom, nil, nil, path))
local sbweight = {
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
}
InsertDeviceBehind("superantigravity", sbweight)

table.insert(Sprites, ButtonSprite("hud-sbballoon-icon", "HUD/HUD-balloon", nil, ButtonSpriteBottom, nil, nil, path))
table.insert(Sprites, DetailSprite("hud-detail-sbballoon", "HUD-Details-sbballoon", path))
local sbballoon = {
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
}
InsertDeviceBehind("sbweight", sbballoon)

table.insert(Sprites, ButtonSprite("hud-sbreactor-icon", "HUD/HUD-sbreactor", nil, ButtonSpriteBottom, nil, nil, path))
table.insert(Sprites, DetailSprite("hud-detail-sbreactor", "HUD-Details-sbreactor", path))
local sbreactor = {
	SaveName = "sbreactor",
	FileName = path .. "/devices/sbreactor.lua",
	Icon = "hud-sbreactor-icon",
	Detail = "hud-detail-sbreactor",
	Enabled = true,
	BuildTimeComplete = 60,
	ScrapPeriod = 60,
	MetalCost = 1000,
	EnergyCost = 7500,
	MetalRepairCost = 1200,
	EnergyRepairCost = 3000,
	AllowOverlap = false,
	MaxUpAngle = StandardMaxUpAngle,
	ScoreWeight = 10,
	BuildOnGroundOnly = false,
	NoReclaim = true,
	TeamOwned = true,
	SpotterTarget = true,
	SelectEffect = "ui/hud/devices/ui_devices",
}
InsertDeviceBehind("sbballoon", sbreactor)

local sbbarrel = {
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
}
InsertDeviceBehind("sbreactor", sbbarrel)

table.insert(Sprites, ButtonSprite("hud-sbminicore-icon", "HUD/HUD-minicore", nil, ButtonSpriteBottom, nil, nil, path))
table.insert(Sprites, DetailSprite("hud-detail-sbminicore", "HUD-Details-sbminicore", path))
local sbminicore = {
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
}
InsertDeviceBehind("sandbags", sbminicore)

table.insert(Sprites, ButtonSprite("hud-sandbags-large-icon", "HUD/HUD-SandbagsLarge", nil, ButtonSpriteBottom, nil, nil, path))
table.insert(Sprites, DetailSprite("hud-detail-sandbags-large", "HUD-Details-SandBagsLarge", path))
local sbsandbags = {
	SaveName = "sbsandbags",
	FileName = path .. "/devices/sbsandbags.lua",
	Icon = "hud-sandbags-large-icon",
	Detail = "hud-detail-sandbags-large",
	BuildTimeComplete = 30,
	ScrapPeriod = 3,
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
}
InsertDeviceBehind("sandbags", sbsandbags)
