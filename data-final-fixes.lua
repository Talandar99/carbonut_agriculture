-- allow foundation on pelagos-deepsea
--local landfill = data.raw.item["landfill"]
--if landfill and landfill.place_as_tile and landfill.place_as_tile.tile_condition then
--	table.insert(landfill.place_as_tile.tile_condition, "lava")
--end
--
function table.filterKey(t, keyToRemove)
	local new_table = {}
	for k, v in pairs(t) do
		if k ~= keyToRemove then
			new_table[k] = v
		end
	end
	return new_table
end

data.raw["planet"]["vulcanus"].map_gen_settings.autoplace_controls =
	table.filterKey(data.raw["planet"]["vulcanus"].map_gen_settings.autoplace_controls, "coal")
data.raw["planet"]["vulcanus"].map_gen_settings.autoplace_settings.entity.settings =
	table.filterKey(data.raw["planet"]["vulcanus"].map_gen_settings.autoplace_settings.entity.settings, "coal")

if mods["lignumis"] then
	local burner_agricultural_tower = data.raw["agricultural-tower"]["burner-agricultural-tower"]
	if burner_agricultural_tower and burner_agricultural_tower.surface_conditions then
		for _, condition in pairs(burner_agricultural_tower.surface_conditions) do
			if condition.property == "pressure" then
				if condition.max < 4000 then
					condition.max = 4000
				end
			end
		end
	end
end
if mods["pelagos"] then
	local diesel_agricultural_tower = data.raw["agricultural-tower"]["diesel-agricultural-tower"]
	if diesel_agricultural_tower and diesel_agricultural_tower.surface_conditions then
		for _, condition in pairs(diesel_agricultural_tower.surface_conditions) do
			if condition.property == "pressure" then
				if condition.max < 4000 then
					condition.max = 4000
				end
			end
		end
	end
end

local carbonut = data.raw.plant["ashland-carbonut-tree"]
if carbonut then
	carbonut.autoplace = {
		--probability_expression = 0.003,
		probability_expression = 0.000,
		richness_expression = 0,
		tile_restriction = { "lava", "lava-hot" },
	}
end
