-- LUALOCALS < ---------------------------------------------------------
local minetest, nodecore
    = minetest, nodecore
-- LUALOCALS > ---------------------------------------------------------

local modname = minetest.get_current_modname()

minetest.register_node(modname .. ":bituminite", {
		description = ("Bituminite"),
		tiles = {"nc_terrain_stone.png"},
		color = "lightslategray",
		groups = {
			coal = 1,
			stone = 1,
			bituminite = 1,
			cracky = 3
		},
		sounds = nodecore.sounds("nc_terrain_stony"),
		alternate_loose = {
			repack_level = 2,
			tiles = {"nc_terrain_gravel.png^nc_api_loose.png"},
			groups = {
				cracky = 0,
				crumbly = 2,
				falling_repose = 2
			},
		sounds = nodecore.sounds("nc_terrain_chompy")		
	}
})

-- ================================================== --

minetest.register_ore({
	ore_type = "scatter",
	ore = modname.. ":bituminite",
	wherein = {"group:stone"},
	clust_scarcity = 25*25*25,
	clust_num_ores = 9,
	clust_size = 25,
	y_min = -31000,
	y_max = 31000,
})


