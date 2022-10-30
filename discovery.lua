-- LUALOCALS < ---------------------------------------------------------
local minetest, nodecore
    = minetest, nodecore
-- LUALOCALS > ---------------------------------------------------------

local modname = minetest.get_current_modname()

nodecore.register_hint("find lignite",
	"group:lignite",
	"toolcap:cracky:2"
)

nodecore.register_hint("dig lignite",
	{true, "dig:" .. modname .. ":lignite", "dig:" .. modname .. ":lignite_loose"},
	"group:lignite"
)

nodecore.register_hint("find bituminite",
	"group:bituminite",
	"toolcap:cracky:2"
)

nodecore.register_hint("dig bituminite",
	{true, "dig:" .. modname .. ":bituminite", "dig:" .. modname .. ":bituminite_loose"},
	"group:bituminite"
)

nodecore.register_hint("find anthracite",
	"group:anthracite",
	"toolcap:cracky:2"
)

nodecore.register_hint("dig anthracite",
	{true, "dig:" .. modname .. ":anthracite", "dig:" .. modname .. ":anthracite_loose"},
	"group:anthracite"
)

