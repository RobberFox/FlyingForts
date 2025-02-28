-- Adding sandbag hit sound to `sbsandbag` --
local projectile_list = { "machinegun", "minigun", "sniper", "sniper2" }
for _,name in ipairs(projectile_list) do
	local projectile = FindProjectile(name)
	if projectile then
		projectile.Effects.ImpactDevice =
		{
			["sandbags"] = "effects/bullet_sandbag_hit.lua",
			["sbsandbags"] = "effects/bullet_sandbag_hit.lua",
		}
	end
end

table.insert(Projectiles,
{
	SaveName = "sbjetair",

	ProjectileType = "bullet",
	ProjectileSprite = path .. "/effects/media/blank.png",
	ProjectileSpriteMipMap = false,
	ExpiresOnFreeFall = false,
	DrawBlurredProjectile = true,
	ProjectileMass = 0.25,
	ProjectileDrag = 0.0,
	MaxAge = 0.01,
	DeflectedByShields = true,
	DeflectedByTerrain = false,
	ExplodeOnTouch = false,
	ProjectileThickness = 0.5,
	ProjectileShootDownRadius = 14,
	Impact = 250000,
	ProjectileDamage = 0.0,
	WeaponDamageBonus = 0.0,
	SpeedIndicatorFactor = 5.0,
	BeamTileRate = 0.02,
	BeamScrollRate = 0.0,
	Gravity = 0,
	Effects =
	{
		Impact =
		{
			["default"] = path .. "/effects/empty.lua",
		},
		Deflect =
		{
			["default"] = path .. "/effects/empty.lua",
		},
	},
})

table.insert(Projectiles,
{
	SaveName = "sbnukebomb",

	ProjectileType = "mortar",
	DrawBlurredProjectile = false,
	ProjectileMass = 20.0,
	ProjectileDrag = 0.1,
	ProjectileIncendiary = false,
	DeflectedByShields = false,
	ExplodeOnTouch = true,
	ProjectileThickness = 4.0,
	ProjectileShootDownRadius = 15,
	Impact = 200000,
	DisableShields = true,
	BeamTileRate = 0.02,
	BeamScrollRate = 0.0,
	ProjectileDamage = 400.0,
	ProjectileSplashDamage = 100,
	ProjectileSplashDamageMaxRadius = 360.0,
	SpeedIndicatorFactor = 0.05,
	Gravity = 400,

	TrailEffect = path .. "/effects/nukebombtrail.lua",

	Projectile =
	{
		Root =
		{
			Name = "Root",
			Angle = 0,
			Sprite = path .. "/weapons/sbbombbay/nuke.png",

		},
	},
	Effects =
	{
		Impact =
		{
			["device"] = "effects/missile_structure_hit.lua",
			["antiair"] = "effects/missile_structure_hit.lua",
			["foundations"] = "effects/missile_ground_hit.lua",
			["rocks01"] = "effects/missile_ground_hit.lua",
			["shield"] = "effects/missile_structure_hit.lua",
			["default"] = "effects/missile_structure_hit.lua",
		},
		Deflect =
		{
			["armour"] = "effects/armor_ricochet.lua",
			["door"] = "effects/armor_ricochet.lua",
		},
	},
	DamageMultiplier =
	{
		{ SaveName = "sandbags", Direct = 0.8, Splash = 0.8 },
		{ SaveName = "sbsandbags", Direct = 0.8, Splash = 0.8 },
		{ SaveName = "sbantigravity", Direct = 1.45, Splash = 1.45 },
	},
})

sbHangFlakDetonation = { Effect = "mods/weapon_pack/effects/flak_explode.lua", Projectile = { Count = 50, Type = "shrapnel", Speed = 2000, StdDev = 1.5 }, Offset = 0, Terminate = true, }
table.insert(Projectiles,
{
	SaveName = "sbhangflak",

	ProjectileType = "bullet",
	ProjectileSprite = "weapons/media/bullet",
	ProjectileSpriteMipMap = false,
	DrawBlurredProjectile = true,
	ProjectileMass = 0.2,
	ProjectileDrag = 0,
	DeflectedByShields = false,
	ExplodeOnTouch = true,
	ProjectileThickness = 2.0,
	ProjectileShootDownRadius = 150,
	ProjectileShootDownRadiusBeamWidth = 15,
	CollisionLookaheadDist = 120,
	Impact = 10000,
	ProjectileDamage = 6.0,
	AntiAirDamage = 0,
	WeaponDamageBonus = 6.0,
	SpeedIndicatorFactor = 5.0,
	BeamTileRate = 0.02,
	BeamScrollRate = 0.0,

	Effects =
	{
		Impact =
		{
			["firebeam"] = sbHangFlakDetonation,
			["default"] = sbHangFlakDetonation,
		},
		Deflect =
		{
			["bracing"] = "effects/bullet_bracing_hit.lua",
			["backbracing"] = "effects/bullet_bracing_hit.lua",
			["armour"] = "effects/bullet_armor_ricochet.lua",
			["door"] = "effects/bullet_armor_ricochet.lua",
			["shield"] = "effects/energy_shield_ricochet.lua",
			["default"] = "effects/bullet_bracing_hit.lua",
		},
		Age =
		{
			t300 = sbHangFlakDetonation,
		},
	},
})


---------------------твикс-------------------------
table.insert(Projectiles,
{
	SaveName = "sbhangcannon",

	ProjectileType = "mortar",
	ProjectileSprite = "weapons/media/bullet",
	ProjectileSpriteMipMap = false,
	DrawBlurredProjectile = true,
	ProjectileMass = 16,
	ProjectileDrag = 0,
	Impact = 20000,
	DisableShields = false,
	DeflectedByShields = false,
	PassesThroughMaterials = false,
	ExplodeOnTouch = false,
	ProjectileIncendiary = true,
	IncendiaryRadius = 50,
	IncendiaryRadiusHeated = 60,
	ProjectileThickness = 7.5,
	ProjectileShootDownRadius = 60,
	BeamTileRate = 0.02,
	BeamScrollRate = 0.0,
	ProjectileDamage = 100.0,
	ProjectileSplashDamage = 50.0, -- low splash damage
	ProjectileSplashDamageMaxRadius = 100.0,
	ProjectileSplashMaxForce = 10000, -- moderate shockwave
	AntiAirHitpoints = 40,
	SpeedIndicatorFactor = 0.25,

	TrailEffect = "mods/weapon_pack/effects/20mmcannon_trail.lua",

	Effects =
	{
		Impact =
		{
			--			["device"] = "effects/impact_medium.lua",
			--			["foundations"] = "effects/impact_medium.lua",
			--			["rocks01"] = "effects/impact_heavy_ground.lua",
			--			["bracing"] = "effects/impact_medium.lua",
			--			["armour"] = "effects/impact_medium.lua",
			--			["door"] = "effects/impact_medium.lua",
			["shield"] = "effects/impact_shield.lua",
			["default"] = "effects/impact_heavy.lua",
		},	
		Deflect =
		{
			["armour"] = { Effect = "effects/armor_ricochet.lua", Splash = false },
			["door"] = { Effect = "effects/armor_ricochet.lua", Splash = false },
			["shield"] = { Effect = "effects/energy_shield_ricochet.lua", Splash = false },
		},
	},
})

sbhangcanno2 = {Projectile = { Count = 2, Type = "sbhangcannon", Speed = 8000, StdDev = 0.015 }, Offset = 0, Terminate = true, }
table.insert(Projectiles,
{
	SaveName = "sbhangcanno1",
	Effects =
	{
		Age =
		{
			t1 = sbhangcanno2

		},
	},
})


------------------------- тандерболт------------------------------
table.insert(Sprites,
{
	Name = "sbthunderprojectile",

	States =
	{
		Normal =  
		{  
			Frames =
			{
				{ texture = path .. "/weapons/sblightning/thunder1.tga" },
				{ texture = path .. "/weapons/sblightning/thunder2.tga" },
				{ texture = path .. "/weapons/sblightning/thunder3.tga" },
				duration = 0.03,
				mipmap = true,
			},
			NextState = "Normal",
		},

	},
})

table.insert(Projectiles,
{
	SaveName = "sbthunder",

	ProjectileType = "mortar",
	ProjectileSprite = "sbthunderprojectile",
	ProjectileSpriteMipMap = false,
	DrawBlurredProjectile = true,
	ProjectileMass = 16,
	ProjectileDrag = 0,
	Impact = 0,
	DisableShields = true,
	DeflectedByShields = false,
	PassesThroughMaterials = false,
	ExplodeOnTouch = false,
	ProjectileThickness = 7.5,
	ProjectileShootDownRadius = 60,
	BeamTileRate = 0.02,
	BeamScrollRate = 0.0,
	ProjectileDamage = 900.0,
	AntiAirHitpoints = 900,
	SpeedIndicatorFactor = 0.25,
	ProjectileIncendiary = true,
	IncendiaryRadius = 35,
	IncendiaryRaduisHeated = 70,
	ProjectileSplashDamage = 0.01, -- low splash damage
	ProjectileSplashDamageMaxRadius = 0.01,
	PassesEnemyPortals = true,
	IgnitesBackgroundMaterials = true,
	IgnitesBackgroundMaterialsPassing = true,
	IgnitesBackgroundMaterialsPassingSource = false,
	Gravity = 0,

	TrailEffect = path .. "/effects/thundertrail.lua",

	DamageMultiplier =
	{
		{ SaveName = "shield", Direct = 0, },
	},

	Effects =
	{
		Impact =
		{
			["default"] = path .. "/effects/thunderimpact.lua",
		},	
		Deflect =
		{
			["armour"] = { Effect = "effects/armor_ricochet.lua", Splash = false },
			["door"] = { Effect = "effects/armor_ricochet.lua", Splash = false },
			["shield"] = { Effect = "effects/energy_shield_ricochet.lua", Splash = false },
		},
	},
})

table.insert(Projectiles,
{
	SaveName = "interceptor",

	ProjectileType = "bullet",
	ProjectileSprite = "weapons/media/bullet",
	ProjectileSpriteMipMap = false,
	DrawBlurredProjectile = true,
	ProjectileMass = 0.005,
	ProjectileDrag = 0,
	DeflectedByShields = true,
	ExplodeOnTouch = false,
	ProjectileThickness = 2.0,
	ProjectileShootDownRadius = 30,
	Impact = 10000,
	ProjectileDamage = 5.0,
	AntiAirDamage = 1000.0,
	WeaponDamageBonus = 0,
	SpeedIndicatorFactor = 5.0,
	BeamTileRate = 0.02,
	BeamScrollRate = 0.0,

	MomentumThreshold =
	{
		["armour"] = { ProjectileIncendiary = true },
	},

	Effects =
	{
		Impact =
		{
			["device"] = "effects/impact_light.lua",
			["foundations"] = "effects/ground_hit.lua",
			["rocks01"] = "effects/ground_hit.lua",
			["bracing"] = "effects/bracing_bullet_hit.lua",
			["backbracing"] = "effects/bracing_bullet_hit.lua",
			["armour"] = "effects/armor_bullet_hit.lua",
			["door"] = "effects/armor_bullet_hit.lua",
			["shield"] = "effects/impact_light.lua",
			["laser"] = { Terminate = false, },
			["default"] = "effects/impact_light.lua",
		},
		Deflect =
		{
			["bracing"] = "effects/bracing_bullet_hit.lua",
			["backbracing"] = "effects/bracing_bullet_hit.lua",
			["armour"] = "effects/armor_bullet_ricochet.lua",
			["door"] = "effects/armor_bullet_ricochet.lua",
			["shield"] = "effects/energy_shield_ricochet.lua",
			["default"] = "effects/bracing_bullet_hit.lua",
		},
	},
})


table.insert(Projectiles,
{
	SaveName = "ThunderShotgun",

	ProjectileType = "mortar",
	ProjectileSprite = "sbthunderprojectile",
	ProjectileSpriteMipMap = false,
	DrawBlurredProjectile = true,
	ProjectileMass = 16,
	ProjectileDrag = 0,
	Impact = 0,
	DisableShields = false,
	DeflectedByShields = false,
	PassesThroughMaterials = false,
	ExplodeOnTouch = false,
	ProjectileThickness = 7.5,
	ProjectileShootDownRadius = 60,
	BeamTileRate = 0.02,
	BeamScrollRate = 0.0,
	ProjectileDamage = 175.0,
	AntiAirHitpoints = 30,
	SpeedIndicatorFactor = 0.25,
	ProjectileIncendiary = false,
	--	IncendiaryRadius = 35,
	--	IncendiaryRaduisHeated = 70,
	ProjectileSplashDamage = 0.01, -- low splash damage
	ProjectileSplashDamageMaxRadius = 0.01,
	PassesEnemyPortals = true,
	IgnitesBackgroundMaterials = false,
	IgnitesBackgroundMaterialsPassing = false,
	IgnitesBackgroundMaterialsPassingSource = false,
	Gravity = 0,

	TrailEffect = path .. "/effects/thundertrail.lua",

	DamageMultiplier =
	{
		{ SaveName = "armour", Direct = 0.2,},
		{ SaveName = "door", Direct = 0.2,},
		{ SaveName = "bracing", Direct = 0.5,},
	},

	Effects =
	{
		Impact =
		{
			["default"] = path .. "/effects/thunderimpact.lua",
		},	
		Deflect =
		{
			["armour"] = { Effect = "effects/armor_ricochet.lua", Splash = false },
			["door"] = { Effect = "effects/armor_ricochet.lua", Splash = false },
			["shield"] = { Effect = "effects/energy_shield_ricochet.lua", Splash = false },
		},
	},
})


machinegun = FindProjectile("machinegun")
if machinegun then
	shard = DeepCopy(machinegun)
	shard.SaveName = "shard"
	shard.MaxAge = 0.25
	shard.DrawFromAge = 2/FrameRate
	shard.ProjectileDamage = 3
	shard.ProjectileShootDownRadius = 9
	shard.DamageMultiplier =
	{
		{ SaveName = "bracing", Direct = 1.5, Splash = 1 },
		{ SaveName = "barrel", Direct = 0.2, Splash = 1 },
		{ SaveName = "reactor", Direct = 0.1, Splash = 1 },
		{ SaveName = "mortar", Direct = 1.5, Splash = 1 },
		{ SaveName = "mortar2", Direct = 1.5, Splash = 1 },
		{ SaveName = "machinegun", Direct = 0.2, Splash = 1 },
		{ SaveName = "minigun", Direct = 0.2, Splash = 1 },
	}
	table.insert(Projectiles, shard)
end





function InheritMaterialEffect(materialSaveName, effectInheritance)
	for k, v in ipairs(Projectiles) do
		if v.Effects then
			-- Impact
			if v.Effects.Impact then
				if v.Effects.Impact[effectInheritance] then
					v.Effects.Impact[materialSaveName] = v.Effects.Impact[effectInheritance]
				elseif v.Effects.Impact["default"] then
					v.Effects.Impact[materialSaveName] = v.Effects.Impact["default"]
				else
					v.Effects.Impact[materialSaveName] = "effects/impact_light.lua"
				end
			end

			-- Deflect
			if v.Effects.Deflect then
				if v.Effects.Deflect[effectInheritance] then
					v.Effects.Deflect[materialSaveName] = v.Effects.Deflect[effectInheritance]
				elseif v.Effects.Deflect["default"] then
					v.Effects.Deflect[materialSaveName] = v.Effects.Deflect["default"]
				else	-- Some projectiles do not have a default value
					v.Effects.Deflect[materialSaveName] = "effects/armor_bullet_ricochet.lua"
				end
			end

			-- Penetrate
			if v.Effects.Penetrate then
				if v.Effects.Penetrate[effectInheritance] then
					v.Effects.Penetrate[materialSaveName] = v.Effects.Penetrate[effectInheritance]
				elseif v.Effects.Penetrate["default"] then
					v.Effects.Penetrate[materialSaveName] = v.Effects.Penetrate["default"]
				else	-- Some projectiles do not have a default value
					v.Effects.Penetrate[materialSaveName] = "effects/armor_bullet_hit.lua"
				end
			end
		end
	end

	-- -- For correct node hit sounds
	if NodeImpacts[effectInheritance] then
		NodeImpacts[materialSaveName] = NodeImpacts[effectInheritance]
	else
		NodeImpacts[materialSaveName] = NodeImpacts["default"]
	end
end

sbff_oldApplyMod = ApplyMod
function ApplyMod()
	if sbff_oldApplyMod then sbff_oldApplyMod() end

	InheritMaterialEffect("sbcardboard", "bracing")	

	local sbsawvscardboard = FindProjectile("buzzsaw")
	if sbsawvscardboard then
		table.insert(sbsawvscardboard.DamageMultiplier, { SaveName = "sbcardboard", Direct = 999,})
		table.insert(sbsawvscardboard.DamageMultiplier, { SaveName = "sbcardboardbg", Direct = 999,})
	end
end

local missile2 = FindProjectile("missile2")
if missile2 then
	missile2.ProjectileSplashDamageMaxRadiu = missile2.ProjectileSplashDamageMaxRadius - 150
end

local cannon = FindProjectile("cannon")
if cannon then
	cannon.ProjectileSplashDamage = cannon.ProjectileSplashDamage + 10
end

--flaming versions
--firebeamversions
sbflametrail = "mods/weapon_pack/effects/flaming_trail.lua"
sbflametrailsmall = "mods/weapon_pack/effects/flaming_sniper_trail.lua"
--In older versions of forts, their built in function was broken. Its fixed now, but this still works so theres no point in removing it.
function sbMakeFlamingVersion(saveName, damageBoost, maxAge, trailEffect, incendiaryRadius, flareEffect, expireEffect)
	local projectile = FindProjectile(saveName)
	if not projectile then Log("Error: MakeFlamingVersion unable to find " .. saveName) return end

	projectile.CollidesWithBeams = true
	projectile.Effects.Impact["firebeam"] = { Effect = flareEffect, Projectile = { Count = 1, Type = "flaming" .. saveName, StdDev = 0 }, Splash = false, Terminate = true, KeepLifespan = true, PosT = 1, Offset = 0 }

	local flamingProjectile = DeepCopy(projectile)
	flamingProjectile.SaveName = "flaming" .. saveName
	if projectile.ProjectileType == "bullet" then
		flamingProjectile.ProjectileType = "mortar"
	end

	incendiaryRadius = incendiaryRadius or 0

	flamingProjectile.TrailEffect = path .. "/effects/" .. trailEffect .. ".lua"
	flamingProjectile.ProjectileIncendiary = true
	flamingProjectile.AlwaysIncendiary = true
	flamingProjectile.IncendiaryRadius = incendiaryRadius
	flamingProjectile.IncendiaryRadiusHeated = incendiaryRadius
	flamingProjectile.IncendiaryOffset = 0.5*incendiaryRadius
	flamingProjectile.MaxAge = maxAge
	flamingProjectile.Effects.Impact["firebeam"] = { Splash = false, Terminate = false, }

	if flamingProjectile.ProjectileSplashDamage then
		flamingProjectile.ProjectileSplashDamage = damageBoost*flamingProjectile.ProjectileSplashDamage
	else
		flamingProjectile.ProjectileDamage = damageBoost*flamingProjectile.ProjectileDamage
		flamingProjectile.WeaponDamageBonus = damageBoost*(flamingProjectile.WeaponDamageBonus or 0)
	end

	if expireEffect then
		flamingProjectile.Effects.Age = {}
		flamingProjectile.Effects.Age["t1000000"] = { Effect = expireEffect, Terminate = true, }
	end
	table.insert(Projectiles, flamingProjectile)
end
