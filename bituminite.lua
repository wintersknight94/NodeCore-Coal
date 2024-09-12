-- LUALOCALS < ---------------------------------------------------------
local minetest, nodecore
    = minetest, nodecore
-- LUALOCALS > ---------------------------------------------------------
local modname = minetest.get_current_modname()
------------------------------------------------------------------------
local bitumin = modname.. "_bituminite.png"
------------------------------------------------------------------------
minetest.register_node(modname .. ":bituminite", {
	description = ("Bituminite"),
	tiles = {bitumin},
--	tiles = {"nc_terrain_stone.png"},
--	color = "lightslategray",
	groups = {
		coal = 1,
		stone = 1,
		bituminite = 1,
		cracky = 3,
		flammable = 50,
		fire_fuel = 6
	},
	no_repack = true,
	sounds = nodecore.sounds("nc_terrain_stony"),
	alternate_loose = {
		tiles = {bitumin.. "^nc_api_loose.png"},
--		tiles = {"nc_terrain_gravel.png^nc_api_loose.png"},
		groups = {
			cracky = 0,
			crumbly = 2,
			falling_repose = 2,
			flammable = 25,
			fire_fuel = 8
		},
	sounds = nodecore.sounds("nc_terrain_chompy")		
	}
})

-- ================================================== --

minetest.register_ore({
	ore_type = "scatter",
	ore = modname.. ":bituminite",
	wherein = {"group:stone"},
	clust_scarcity = 32*32*32,
	clust_num_ores = 16,
	clust_size = 24,
	y_min = -31000,
	y_max = 31000,
})


