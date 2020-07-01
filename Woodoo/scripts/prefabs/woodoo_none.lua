local assets =
{
	Asset( "ANIM", "anim/woodoo.zip" ),
	Asset( "ANIM", "anim/ghost_woodoo_build.zip" ),
}

local skins =
{

	normal_skin = "woodoo",
	ghost_skin = "ghost_woodoo_build",
}

return CreatePrefabSkin("woodoo_none",
{
	base_prefab = "woodoo", 
	type = "base",
	skins = skins, 
	assets = assets,
	skin_tags = {"WOODOO", "CHARACTER", "BASE"},
	build_name_override = "woodoo",
	rarity = "Character",
	skip_item_gen = true,
	skip_giftable_gen = true,
})