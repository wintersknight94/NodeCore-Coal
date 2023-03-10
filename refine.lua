-- LUALOCALS < ---------------------------------------------------------
local minetest, nodecore, math, ipairs
    = minetest, nodecore, math, ipairs
-- LUALOCALS > ---------------------------------------------------------
local modname = minetest.get_current_modname()
-- ================================================================== --
-----<> LIGNITE <>-----
nodecore.register_craft({
	label = "refine loose lignite",
	action = "pummel",
	toolgroups = {cracky = 3},
	indexkeys = {modname .. ":lignite_loose"},
	nodes = {
		{match = modname .. ":lignite_loose", replace = "nc_terrain:gravel_loose"}
	},
	after=function(pos)
		local yield = math.random(0,1)
		nodecore.item_eject(pos, {name = "nc_fire:lump_coal"}, 2, yield)
	end
})
nodecore.register_craft({
	label = "refine packed lignite",
	action = "pummel",
	toolgroups = {cracky = 4},
	indexkeys = {modname .. ":lignite"},
	nodes = {
		{match = modname .. ":lignite", replace = "nc_terrain:gravel"}
	},
	after=function(pos)
		local yield = math.random(0,1)
		nodecore.item_eject(pos, {name = "nc_fire:lump_coal"}, 3, yield)
	end
})
------------------------------------------------------------------------
-----<> BITUMINITE <>-----
nodecore.register_craft({
	label = "refine loose bituminite",
	action = "pummel",
	toolgroups = {cracky = 3},
	indexkeys = {modname .. ":bituminite_loose"},
	nodes = {
		{match = modname .. ":bituminite_loose", replace = "nc_terrain:gravel_loose"}
	},
	after=function(pos)
		local yield = math.random(1,5)
		nodecore.item_eject(pos, {name = "nc_fire:lump_coal"}, 2, yield)
	end
})
nodecore.register_craft({
	label = "refine packed bituminite",
	action = "pummel",
	toolgroups = {cracky = 4},
	indexkeys = {modname .. ":bituminite"},
	nodes = {
		{match = modname .. ":bituminite", replace = "nc_terrain:gravel"}
	},
	after=function(pos)
		local yield = math.random(1,5)
		nodecore.item_eject(pos, {name = "nc_fire:lump_coal"}, 3, yield)
	end
})
------------------------------------------------------------------------
-----<> ANTHRACITE <>-----
nodecore.register_craft({
	label = "refine loose anthracite",
	action = "pummel",
	toolgroups = {cracky = 3},
	indexkeys = {modname .. ":anthracite_loose"},
	nodes = {
		{match = modname .. ":anthracite_loose", replace = "nc_terrain:gravel_loose"}
	},
	after=function(pos)
		local yield = math.random(2,9)
		nodecore.item_eject(pos, {name = "nc_fire:lump_coal"}, 2, yield)
	end
})
nodecore.register_craft({
	label = "refine packed anthracite",
	action = "pummel",
	toolgroups = {cracky = 4},
	indexkeys = {modname .. ":anthracite"},
	nodes = {
		{match = modname .. ":anthracite", replace = "nc_terrain:gravel"}
	},
	after=function(pos)
		local yield = math.random(2,9)
		nodecore.item_eject(pos, {name = "nc_fire:lump_coal"}, 3, yield)
	end
})
-- ================================================================== --
