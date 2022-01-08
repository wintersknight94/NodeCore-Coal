-- LUALOCALS < ---------------------------------------------------------
local minetest, nodecore, math, ipairs
    = minetest, nodecore, math, ipairs
-- LUALOCALS > ---------------------------------------------------------

local modname = minetest.get_current_modname()

local coal_table = { -- coal, amount
	{"lignite",	math.random (0,1)},
	{"bituminite",	math.random (1,5)},
	{"anthracite",	math.random (5,9)},
}

for i in ipairs (coal_table) do
	local coal		= coal_table[i][1]
	local amount		= coal_table[i][2]

nodecore.register_craft({
		label = "refine loose coal",
		action = "pummel",
		indexkeys = {modname .. ":" .. coal .. "_loose"},
		nodes = {
			{match = modname .. ":" .. coal .. "_loose", replace = "air"}
		},
		items = {
			{name = "nc_fire:lump_coal", count = amount, scatter = 3},
			{name = "nc_stonework:chip", count = 8-amount, scatter = 3}
		},
		toolgroups = {cracky = 3},
		itemscatter = 3
	})

nodecore.register_craft({
		label = "refine packed coal",
		action = "pummel",
		indexkeys = {modname .. ":" .. coal},
		nodes = {
			{match = modname .. ":" .. coal, replace = "air"}
		},
		items = {
			{name = "nc_fire:lump_coal", count = amount, scatter = 3},
			{name = "nc_stonework:chip", count = 8-amount, scatter = 3}
		},
		toolgroups = {cracky = 4},
		itemscatter = 3
	})
end


