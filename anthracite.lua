-- LUALOCALS < ---------------------------------------------------------
local minetest, nodecore
    = minetest, nodecore
-- LUALOCALS > ---------------------------------------------------------

local modname = minetest.get_current_modname()

minetest.register_node(modname .. ":anthracite", {
	description = ("Anthracite"),
	tiles = {"nc_terrain_stone.png"},
	color = "darkslategray",
	groups = {
		coal = 1,
		stone = 1,
		anthracite = 1,
		cracky = 3,
		flammable = 50,
		fire_fuel = 8
	},
	no_repack = true,
	sounds = nodecore.sounds("nc_terrain_stony"),
	alternate_loose = {
		tiles = {"nc_terrain_gravel.png^nc_api_loose.png"},
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
	ore_type = "vein",
	ore = modname.. ":anthracite",
	wherein = {"group:stone"},
	y_min = -31000,
	y_max = -128,
	noise_params = {
		offset  = 0,
		scale   = 7,
		spread  = {x=256, y=128, z=256},
		seed    = 2022,
		octaves = 4,
		persistence = 0.5,
		lacunarity = 2.0,
		flags = "eased",
	},
	noise_threshold = 1.75,
	random_factor = 1.25
})
