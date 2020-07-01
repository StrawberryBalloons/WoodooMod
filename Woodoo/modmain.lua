PrefabFiles = {
	"woodoo",
	"woodoo_none",
}

Assets = {
    Asset( "IMAGE", "images/saveslot_portraits/woodoo.tex" ),
    Asset( "ATLAS", "images/saveslot_portraits/woodoo.xml" ),

    Asset( "IMAGE", "images/selectscreen_portraits/woodoo.tex" ),
    Asset( "ATLAS", "images/selectscreen_portraits/woodoo.xml" ),
    
    Asset( "IMAGE", "images/selectscreen_portraits/woodoo_silho.tex" ),
    Asset( "ATLAS", "images/selectscreen_portraits/woodoo_silho.xml" ),

    Asset( "IMAGE", "bigportraits/woodoo.tex" ),
    Asset( "ATLAS", "bigportraits/woodoo.xml" ),
    
    Asset( "IMAGE", "images/map_icons/woodoo.tex" ),
    Asset( "ATLAS", "images/map_icons/woodoo.xml" ),
    
    Asset( "IMAGE", "images/avatars/avatar_woodoo.tex" ),
    Asset( "ATLAS", "images/avatars/avatar_woodoo.xml" ),
    
    Asset( "IMAGE", "images/avatars/avatar_ghost_woodoo.tex" ),
    Asset( "ATLAS", "images/avatars/avatar_ghost_woodoo.xml" ),
    
    Asset( "IMAGE", "images/avatars/self_inspect_woodoo.tex" ),
    Asset( "ATLAS", "images/avatars/self_inspect_woodoo.xml" ),
    
    Asset( "IMAGE", "images/names_woodoo.tex" ),
    Asset( "ATLAS", "images/names_woodoo.xml" ),
    
    Asset( "IMAGE", "images/names_gold_woodoo.tex" ),
    Asset( "ATLAS", "images/names_gold_woodoo.xml" ),
}

AddMinimapAtlas("images/map_icons/woodoo.xml")
local require = GLOBAL.require
local STRINGS = GLOBAL.STRINGS
local Ingredient = GLOBAL.Ingredient
local RECIPETABS = GLOBAL.RECIPETABS
STRINGS.CHARACTERS.WOODOO = require "speech_woodoo"

-- The character select screen lines
-- note: these are lower-case character name
GLOBAL.STRINGS.CHARACTER_TITLES.woodoo = "The Malefic Doll"
GLOBAL.STRINGS.CHARACTER_NAMES.woodoo = "woodoo" 
GLOBAL.STRINGS.CHARACTER_DESCRIPTIONS.woodoo = "*Excels at Dark Magic\n*Likes to share the pain\n*Doesn't know where he came from"
GLOBAL.STRINGS.CHARACTER_QUOTES.woodoo = "\"Fabric Rick!\""
STRINGS.CHARACTER_SURVIVABILITY.woodoo = "So bad it hurts"
-- The character's name as appears in-game 
STRINGS.NAMES.WOODOO = "Woodoo"
STRINGS.SKIN_NAMES.woodoo_none = "Woodoo"

-- Skins compatibility
-- The skins shown in the cycle view window on the character select screen.
-- A good place to see what you can put in here is in skinutils.lua, in the function GetSkinModes
local skin_modes = {
    { 
        type = "ghost_skin",
        anim_bank = "ghost",
        idle_anim = "idle", 
        scale = 0.75, 
        offset = { 0, -25 } 
    },
}

STRINGS.CHARACTERS.GENERIC.DESCRIBE.WOODOO = 
{
    GENERIC = "It's Woodoo!",
    ATTACKER = "That Woodoo looks shifty...",
    MURDERER = "Murderer!",
    REVIVER = "Woodoo, friend of ghosts.",
    GHOST = "Woodoo could use a heart.",
}

-- Add mod character to mod character list. Also specify a gender. Possible genders are MALE, FEMALE, ROBOT, NEUTRAL, and PLURAL.
AddModCharacter("woodoo", "MALE", skin_modes)