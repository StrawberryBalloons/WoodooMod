
local MakePlayerCharacter = require "prefabs/player_common"


local assets = {
    Asset("SCRIPT", "scripts/prefabs/player_common.lua"),
}
-- Your character's stats
TUNING.WOODOO_HEALTH = 50
TUNING.WOODOO_HUNGER = 150
TUNING.WOODOO_SANITY = 150

-- Custom starting inventory
TUNING.GAMEMODE_STARTING_ITEMS.DEFAULT.WOODOO = {
	"twigs",
}

local start_inv = {}
for k, v in pairs(TUNING.GAMEMODE_STARTING_ITEMS) do
    start_inv[string.lower(k)] = v.WOODOO
end
local prefabs = FlattenTree(start_inv, true)

local function onbecamehuman(inst)
	inst.components.locomotor.walkspeed = TUNING.WILSON_WALK_SPEED
	inst.components.locomotor.runspeed = TUNING.WILSON_RUN_SPEED
end

local function onload(inst)
    inst:ListenForEvent("ms_respawnedfromghost", onbecamehuman)
    if not inst:HasTag("playerghost") then
        onbecamehuman(inst)
	inst.components.locomotor.walkspeed = TUNING.WILSON_WALK_SPEED
	inst.components.locomotor.runspeed = TUNING.WILSON_RUN_SPEED
    end

end

-- This initializes for both the server and client. Tags can be added here.
local common_postinit = function(inst) 
	inst.MiniMapEntity:SetIcon( "woodoo.tex" )
	--inst.components.talker.font = TALKINGFONT
	inst.components.talker.colour = Vector3(128/255, 179/255, 95/255)
end

local function emotesound(inst)
--inst.SoundEmitter:PlaySound((inst.talker_path_override or "dontstarve/characters/")..(inst.soundsname or inst.prefab).."/"..soundname, loop)
print("emotesound")
inst.SoundEmitter:PlaySound("dontstarve/characters/wilson/pose")
end

local master_postinit = function(inst)
	-- Set starting inventory
    inst.starting_inventory = start_inv[TheNet:GetServerGameMode()] or start_inv.default
	
	-- choose which sounds this character will play
	inst.soundsname = "wilson"
	-- a minimap icon must be specified


	-- todo: Add an example special power here.
	inst.components.combat.damagemultiplier = 0.9
	-- Stats	
	inst.components.health:SetMaxHealth(TUNING.WOODOO_HEALTH)
	inst.components.hunger:SetMax(TUNING.WOODOO_HUNGER)
	inst.components.sanity:SetMax(TUNING.WOODOO_SANITY)
	--inst.components.sanity.custom_rate_fn = SanityForWetness
	inst.wetness = inst.components.moisture:GetMoisture()	
	inst.components.moisture.maxDryingRate = 0.01
	inst.components.moisture.maxPlayerTempDrying = 4
	inst.components.moisture.maxmoisture = 100
	if inst.components.moisture:GetMoisture() > 70 then inst.components.sanity.dapperness = -TUNING.DAPPERNESS_LARGE * 0.5
	end
	inst.components.temperature.overheattemp = 69
	inst.components.temperature.inherentsummerinsulation = 25
	inst.components.temperature.maxtemp =  40 --(TUNING.WOODOOTEMP)
	inst.components.eater.ignoresspoilage = false
	inst.components.health.fire_damage_scale = 2
	inst.components.temperature.inherentinsulation = -75 --(TUNING.WOODOOFIRE)
	inst.components.insulator.insulation = TUNING.INSULATION_LARGE * 1.2
	inst.components.combat:SetDefaultDamage(10) 
	inst.components.hunger:SetRate(TUNING.SMALLBIRD_HUNGER/TUNING.SMALLBIRD_STARVE_TIME)
	inst.components.sanity.night_drain_mult = 0.5
    inst.components.sanity.neg_aura_mult = 0.5

	local Combat = Class(function(self, inst)
	inst.components.combat.attackrange = 2
	inst.components.combat.hitrange = 2
	inst.components.combat.min_attack_period = 2
	inst.components.combat:SetAttackPeriod(2)
    end)
 --pumpkin cookies
		inst.OnLoad = onload
    inst.OnNewSpawn = onload

end

return MakePlayerCharacter("woodoo", prefabs, assets, common_postinit, master_postinit)
