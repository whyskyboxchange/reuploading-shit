return function(Object: Instance)
	if gethiddenproperty then
		local function return_string_after(input, search)
			local startind, endind = string.find(input, search)

			if startind and endind then
				return string.sub(input, endind + 1)
			else
				return nil
			end
		end
		
		local ingredient_ids = {
			["3293218896"] = "Desert Mist",
			["2773353559"] = "Blood Thorn",
			["2960178471"] = "Snowscroom",
			["2577691737"] = "Lava Flower",
			["2618765559"] = "Glow Scroom",
			["2575167210"] = "Moss Plant",
			["2620905234"] = "Scroom",
			["2766925289"] = "Trote",
			["2766925320"] = "Polar Plant",
			["2766802713"] = "Periashroom",
			["2766802766"] = "Strange Tentacle",
			["2766925228"] = "Tellbloom",
			["2766802731"] = "Dire Flower",
			["2573998175"] = "Freeleaf",
			["2766925214"] = "Crown Flower",
			["3215371492"] = "Potato",
			["2766925304"] = "Vile Seed",
			["3049345298"] = "Zombie Scroom",
			["2766802752"] = "Orcher Leaf",
			["2766925267"] = "Creely",
			["2889328388"] = "Ice Jar",
			["3049928758"] = "Canewood",
			["3049556532"] = "Acorn Light",
			["2766925245"] = "Uncanny Tentacle",
			['14795184386'] = 'lmfao'
		}

		if Object:IsA('UnionOperation') then
			local can_call_get, returned_id = pcall(gethiddenproperty, Object, 'AssetId')
			
			if can_call_get then
				returned_id = return_string_after(returned_id,'=')
				
				if ingredient_ids[returned_id] then
					return {
						Color = Color3.fromRGB(230, 155, 240),
						Name = ingredient_ids[returned_id]
					}
				end
			end
		end

		return {
			Color = Color3.fromRGB(255, 255, 255),
			Name = 'Unknown'
		}
	end
end
