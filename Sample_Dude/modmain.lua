PrefabFiles = {
	"sample_dude",
}

Assets = {
    Asset( "IMAGE", "images/saveslot_portraits/sample_dude.tex" ),
    Asset( "ATLAS", "images/saveslot_portraits/sample_dude.xml" ),

    Asset( "IMAGE", "images/selectscreen_portraits/sample_dude.tex" ),
    Asset( "ATLAS", "images/selectscreen_portraits/sample_dude.xml" ),

    Asset( "IMAGE", "images/selectscreen_portraits/sample_dude.tex" ),
    Asset( "ATLAS", "images/selectscreen_portraits/sample_dude.xml" ),

    Asset( "IMAGE", "bigportraits/sample_dude.tex" ),
    Asset( "ATLAS", "bigportraits/sample_dude.xml" ),

}

GLOBAL.STRINGS.CHARACTER_TITLES.sample_dude = "The Template"
GLOBAL.STRINGS.CHARACTER_NAMES.sample_dude = "The Template"
GLOBAL.STRINGS.CHARACTER_DESCRIPTIONS.sample_dude = "* An example of how to create a mod character."
GLOBAL.STRINGS.CHARACTER_QUOTES.sample_dude = "\"I am a blank slate.\""

GLOBAL.STRINGS.CHARACTERS.SAMPLE_DUDE = {}
GLOBAL.STRINGS.CHARACTERS.SAMPLE_DUDE.DESCRIBE = {}

table.insert(GLOBAL.CHARACTER_GENDERS.MALE, "sample_dude")

AddModCharacter("sample_dude")

