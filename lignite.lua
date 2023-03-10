-- LUALOCALS < ---------------------------------------------------------
local minetest, nodecore
    = minetest, nodecore
-- LUALOCALS > ---------------------------------------------------------

local modname = minetest.get_current_modname()

minetest.register_node(modname .. ":lignite", {
	description = ("Lignite"),
	tiles = {"nc_terrain_stone.png"},
	color = "tan",
	groups = {
		coal = 1,
		stone = 1,
		lignite = 1,
		cracky = 3,
		flammable = 50,
		fire_fuel = 4
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
	ore_type = "puff",
	ore = modname.. ":lignite",
	wherein = {"group:stone"},
	clust_scarcity = 75*25*75,
	clust_num_ores = 11,
	clust_size = 25,
	y_min = -512,
	y_max = 24,
	noise_threshold = 0.75,
    -- If noise is above this threshold, ore is placed. Not needed for a
    -- uniform distribution.

    noise_params = {
        offset = 0,
        scale = 1,
        spread = {x = 100, y = 100, z = 100},
        seed = 17,
        octaves = 3,
        persistence = 0.7,
    },
     -- puff
    np_puff_top = {
        offset = 4,
        scale = 2,
        spread = {x = 100, y = 100, z = 100},
        seed = 47,
        octaves = 3,
        persistence = 0.7
    },
    np_puff_bottom = {
        offset = 4,
        scale = 2,
        spread = {x = 100, y = 100, z = 100},
        seed = 11,
        octaves = 3,
        persistence = 0.7
    }
})

-- ================================================== --

minetest.register_ore({
	ore_type = "puff",
	ore = modname.. ":lignite",
	wherein = {"nc_concrete:sandstone", "nc_concrete:adobe"},
	clust_scarcity = 25*25*25,
	clust_num_ores = 11,
	clust_size = 25,
	y_min = -31000,
	y_max = 100,
	biomes = {"dune", "mudflat"},
	noise_threshold = 0.72,
    -- If noise is above this threshold, ore is placed. Not needed for a
    -- uniform distribution.

    noise_params = {
        offset = 0,
        scale = 1,
        spread = {x = 75, y = 75, z = 75},
        seed = 42,
        octaves = 3,
        persistence = 0.7,
    },
     -- puff
    np_puff_top = {
        offset = 4,
        scale = 2,
        spread = {x = 75, y = 75, z = 75},
        seed = 47,
        octaves = 3,
        persistence = 0.7
    },
    np_puff_bottom = {
        offset = 4,
        scale = 2,
        spread = {x = 75, y = 75, z = 75},
        seed = 21,
        octaves = 3,
        persistence = 0.7
    }
})

-- ================================================== --

