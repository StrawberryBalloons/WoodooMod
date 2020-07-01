name = "Woodoo"
description = "Adds Woodoo to the list of playable characters."
author = "Opalwreck and StrawberryBalloons"
version = "0.2"
dont_starve_compatible = false
reign_of_giants_compatible = false
shipwrecked_compatible = false
dst_compatible = true
all_clients_require_mod = true

-- This is the URL name of the mod's thread on the forum; the part after the index.php? and before the first & in the URL
-- Example:
-- http://forums.kleientertainment.com/index.php?/files/file/202-sample-mods/
-- becomes
-- /files/file/202-sample-mods/
forumthread = ""

-- This lets other players know if your mod is out of date, update it to match the current version in the game
api_version = 1

icon_atlas = "modicon.xml"
icon = "modicon.tex"

server_filter_tags = {
"character",
"Woodoo",
}

configuration_options =
{
    {
        name = "MAX_TEMP",
        label = "Overheating",
        options =    {
                        {description = "Disabled", data = 2},
                        {description = "Enabled", data = 1},
                    },
        default = 2,
        hover = "Disabled by default."
    },
	
    {
        name = "FIREDMG_SCALE",
        label = "Fire damage scale",
        options =    {
                        {description = "x1", data = 1},
                        {description = "x2", data = 2},
                        {description = "x3", data = 3},
                        {description = "x4", data = 4},
                    },
        default = 3,
        hover = "Default is x3."
    },

}