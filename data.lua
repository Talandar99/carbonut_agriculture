local space_age_item_sounds = require("__space-age__.prototypes.item_sounds")
local item_effects = require("__space-age__.prototypes.item-effects")
local item_tints = require("__base__.prototypes.item-tints")
local item_sounds = require("__base__.prototypes.item_sounds")
local sounds = require("__base__.prototypes.entity.sounds")
local seconds = 60
local minutes = 60 * seconds
local ashland_lichen_tree_pictures = {
	{
		layers = {
			util.sprite_load(
				"__space-age__/graphics/entity/plant/ashland-trees/ashland-tree_00",
				{ scale = 0.8, shift = { 0, -1 } }
			),
			util.sprite_load(
				"__space-age__/graphics/entity/plant/ashland-trees/ashland-tree-shadow_00",
				{ scale = 0.8, draw_as_shadow = true, shift = { 0, -1 } }
			),
		},
	},
	{
		layers = {
			util.sprite_load(
				"__space-age__/graphics/entity/plant/ashland-trees/ashland-tree_01",
				{ scale = 0.8, shift = { 0, -1 } }
			),
			util.sprite_load(
				"__space-age__/graphics/entity/plant/ashland-trees/ashland-tree-shadow_01",
				{ scale = 0.8, draw_as_shadow = true, shift = { 0, -1 } }
			),
		},
	},
	{
		layers = {
			util.sprite_load(
				"__space-age__/graphics/entity/plant/ashland-trees/ashland-tree_02",
				{ scale = 0.8, shift = { 0, -1 } }
			),
			util.sprite_load(
				"__space-age__/graphics/entity/plant/ashland-trees/ashland-tree-shadow_02",
				{ scale = 0.8, draw_as_shadow = true, shift = { 0, -1 } }
			),
		},
	},
	{
		layers = {
			util.sprite_load(
				"__space-age__/graphics/entity/plant/ashland-trees/ashland-tree_03",
				{ scale = 0.8, shift = { 0, -1 } }
			),
			util.sprite_load(
				"__space-age__/graphics/entity/plant/ashland-trees/ashland-tree-shadow_03",
				{ scale = 0.8, draw_as_shadow = true, shift = { 0, -1 } }
			),
		},
	},
	{
		layers = {
			util.sprite_load(
				"__space-age__/graphics/entity/plant/ashland-trees/ashland-tree_04",
				{ scale = 0.8, shift = { 0, -1 } }
			),
			util.sprite_load(
				"__space-age__/graphics/entity/plant/ashland-trees/ashland-tree-shadow_04",
				{ scale = 0.8, draw_as_shadow = true, shift = { 0, -1 } }
			),
		},
	},
	{
		layers = {
			util.sprite_load(
				"__space-age__/graphics/entity/plant/ashland-trees/ashland-tree_05",
				{ scale = 0.8, shift = { 0, -1 } }
			),
			util.sprite_load(
				"__space-age__/graphics/entity/plant/ashland-trees/ashland-tree-shadow_05",
				{ scale = 0.8, draw_as_shadow = true, shift = { 0, -1 } }
			),
		},
	},
	{
		layers = {
			util.sprite_load(
				"__space-age__/graphics/entity/plant/ashland-trees/ashland-tree_06",
				{ scale = 0.8, shift = { 0, -1 } }
			),
			util.sprite_load(
				"__space-age__/graphics/entity/plant/ashland-trees/ashland-tree-shadow_06",
				{ scale = 0.8, draw_as_shadow = true, shift = { 0, -1 } }
			),
		},
	},
	{
		layers = {
			util.sprite_load(
				"__space-age__/graphics/entity/plant/ashland-trees/ashland-tree_07",
				{ scale = 0.8, shift = { 0, -1 } }
			),
			util.sprite_load(
				"__space-age__/graphics/entity/plant/ashland-trees/ashland-tree-shadow_07",
				{ scale = 0.8, draw_as_shadow = true, shift = { 0, -1 } }
			),
		},
	},
	{
		layers = {
			util.sprite_load(
				"__space-age__/graphics/entity/plant/ashland-trees/ashland-tree_08",
				{ scale = 0.8, shift = { 0, -1 } }
			),
			util.sprite_load(
				"__space-age__/graphics/entity/plant/ashland-trees/ashland-tree-shadow_08",
				{ scale = 0.8, draw_as_shadow = true, shift = { 0, -1 } }
			),
		},
	},
	{
		layers = {
			util.sprite_load(
				"__space-age__/graphics/entity/plant/ashland-trees/ashland-tree_09",
				{ scale = 0.8, shift = { 0, -1 } }
			),
			util.sprite_load(
				"__space-age__/graphics/entity/plant/ashland-trees/ashland-tree-shadow_09",
				{ scale = 0.8, draw_as_shadow = true, shift = { 0, -1 } }
			),
		},
	},
	{
		layers = {
			util.sprite_load(
				"__space-age__/graphics/entity/plant/ashland-trees/ashland-tree_10",
				{ scale = 0.8, shift = { 0, -1 } }
			),
			util.sprite_load(
				"__space-age__/graphics/entity/plant/ashland-trees/ashland-tree-shadow_10",
				{ scale = 0.8, draw_as_shadow = true, shift = { 0, -1 } }
			),
		},
	},
	{
		layers = {
			util.sprite_load(
				"__space-age__/graphics/entity/plant/ashland-trees/ashland-tree_11",
				{ scale = 0.8, shift = { 0, -1 } }
			),
			util.sprite_load(
				"__space-age__/graphics/entity/plant/ashland-trees/ashland-tree-shadow_11",
				{ scale = 0.8, draw_as_shadow = true, shift = { 0, -1 } }
			),
		},
	},
}

data:extend({
	{
		type = "item",
		name = "carbonut-seed",
		localised_name = { "item-name.carbonut-seed" },
		localised_description = { "item-description.carbonut-seed" },
		icon = "__carbonut_agriculture__/graphics/carbonut-seeds.png",
		subgroup = "agriculture-processes",
		order = "b[agriculture]-a[carbonut-seed]",
		plant_result = "ashland-carbonut-tree",
		place_result = "ashland-carbonut-tree",
		inventory_move_sound = space_age_item_sounds.agriculture_inventory_move,
		pick_sound = space_age_item_sounds.agriculture_inventory_pickup,
		drop_sound = space_age_item_sounds.agriculture_inventory_move,
		stack_size = 10,
		default_import_location = "vulcanus",
		weight = 10 * kg,
		fuel_category = "chemical",
		fuel_value = "4MJ",
	},
	{
		type = "item",
		name = "carbonut",
		icon = "__carbonut_agriculture__/graphics/carbonut.png",
		icon_size = 64,
		subgroup = "agriculture-processes",
		order = "b[agriculture]-a[carbonut]b",
		--stack_size = 50,
		stack_size = 100,
		--fuel_value = "5MJ",
		--spoil_result = "spoilage",
		weight = 1 * kg,
		--spoil_ticks = 3 * hour,
		default_import_location = "vulcanus",
		--fuel_category = "chemical",
		inventory_move_sound = space_age_item_sounds.agriculture_inventory_move,
		pick_sound = space_age_item_sounds.agriculture_inventory_pickup,
		drop_sound = space_age_item_sounds.agriculture_inventory_move,
	},
	{
		type = "recipe",
		name = "carbonut-cracking",
		icons = {
			{ icon = "__carbonut_agriculture__/graphics/carbonut.png", icon_size = 64 },
			{ icon = "__base__/graphics/icons/fluid/steam.png", icon_size = 64, scale = 0.3, shift = { 8, 8 } },
		},
		category = "crafting-with-fluid-or-metallurgy",
		order = "b[agriculture]-a[carbonut]a",
		group = "intermediate-products",
		subgroup = "agriculture-processes",
		enabled = false,
		allow_productivity = true,
		energy_required = 1,
		ingredients = {
			{ type = "item", name = "carbonut", amount = 1 },
			{ type = "item", name = "stone", amount = 1 },
			{ type = "fluid", name = "steam", amount = 10 },
		},
		results = {
			{ type = "item", name = "carbonut-seed", amount = 1, probability = 0.10 },
			{ type = "item", name = "carbon", amount = 5 },
		},
		crafting_machine_tint = {
			primary = { r = 0.860, g = 0.770, b = 0.590, a = 1.000 },
			secondary = { r = 0.720, g = 0.520, b = 0.260, a = 1.000 },
			tertiary = { r = 0.860, g = 0.770, b = 0.590, a = 1.000 },
			quaternary = { r = 0.720, g = 0.520, b = 0.260, a = 1.000 },
		},
	},
	{
		type = "recipe",
		name = "carbonut-sulfuric-acid-reduction",
		icons = {
			{ icon = "__base__/graphics/icons/fluid/sulfuric-acid.png", icon_size = 64 },
			{
				icon = "__space-age__/graphics/icons/carbon.png",
				icon_size = 64,
				--scale = 0.3,
				--shift = { 8, 8 },
				shift = { 16, 16 },
			},
		},
		group = "intermediate-products",
		subgroup = "fluid-recipes",
		category = "chemistry",
		order = "a[sufulr]-a[sulfuric-acid-reduction]",
		enabled = false,
		allow_productivity = false,
		energy_required = 10,
		ingredients = {
			{ type = "item", name = "carbon", amount = 1 },
			{ type = "fluid", name = "sulfuric-acid", amount = 60 },
		},
		results = {
			{ type = "item", name = "sulfur", amount = 1 },
			{ type = "fluid", name = "water", amount = 10 },
		},
		{
			primary = { r = 1.000, g = 0.958, b = 0.000, a = 1.000 }, -- #fff400ff
			secondary = { r = 1.000, g = 0.852, b = 0.172, a = 1.000 }, -- #ffd92bff
			tertiary = { r = 0.876, g = 0.869, b = 0.597, a = 1.000 }, -- #dfdd98ff
			quaternary = { r = 0.969, g = 1.000, b = 0.019, a = 1.000 }, -- #f7ff04ff
		},
		main_product = "sulfur",
	},
	{
		type = "plant",
		subgroup = "trees",
		name = "ashland-carbonut-tree",
		icon = "__space-age__/graphics/icons/ashland-lichen-tree.png",
		flags = { "placeable-neutral", "placeable-off-grid", "breaths-air" },
		growth_ticks = 5 * minutes,
		minable = {
			mining_particle = "wooden-particle",
			mining_time = 0.5,
			results = {
				{ type = "item", name = "carbonut", amount = 10 },
			},
		},
		mining_sound = sound_variations("__space-age__/sound/mining/axe-mining-ashland-lichen-tree", 5, 0.4),
		mined_sound = sound_variations("__space-age__/sound/mining/mined-ashland-lichen-tree", 5, 0.4),
		--corpse = "ashland-lichen-tree-stump",
		--remains_when_mined = "ashland-lichen-tree-stump",
		max_health = 50,
		collision_box = { { -0.5, -0.6 }, { 0.5, 0.4 } },
		selection_box = { { -0.9, -2.4 }, { 0.9, 0.3 } },
		order = "a[tree]-b[vulcanus]-a[ashland-lichen-tree]",
		impact_category = "tree",
		collision_mask = {
			layers = {
				object = true,
				is_object = true,
				train = true,
				ground_tile = true,
				--player = true,
				--transport_belt = true,
				--resource = true,
				--water_tile = true,
			},
		},
		--factoriopedia_simulation = simulations.factoriopedia_ashland_lichen_tree,
		--		autoplace = {
		--			tile_restriction = {
		--				"lava",
		--				"lava-hot",
		--			},
		--			--	order = "b[tree]-b[normal]",
		--			--	--control = "trees", -- makes it appear on Nauvis
		--			--	probability_expression = "vulcanus_tree",
		--		},
		pictures = ashland_lichen_tree_pictures,
	},
})
data:extend({
	{
		type = "technology",
		name = "carbonut-agriculture",
		icon = "__carbonut_agriculture__/graphics/carbonut-technology.png",
		icon_size = 256,
		effects = {
			{ type = "unlock-recipe", recipe = "carbonut-sulfuric-acid-reduction" },
			{ type = "unlock-recipe", recipe = "carbonut-cracking" },
		},
		prerequisites = { "planet-discovery-vulcanus" },
		research_trigger = {
			type = "mine-entity",
			entity = "ashland-lichen-tree",
		},
	},
})
table.insert(data.raw["technology"]["planet-discovery-vulcanus"].prerequisites, "rocket-turret")

local agricultural_tower = data.raw["agricultural-tower"]["agricultural-tower"]
if agricultural_tower and agricultural_tower.surface_conditions then
	for _, condition in pairs(agricultural_tower.surface_conditions) do
		if condition.property == "pressure" then
			condition.max = 4000
		end
	end
end
