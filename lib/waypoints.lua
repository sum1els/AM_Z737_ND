	-- Waypoints --

function lib_waypoints()

	function white_waypoints (wpt_x, wpt_y, wpt_id0w, wpt_id1w, wpt_id2w, wpt_id3w, wpt_id4w, wpt_id5w, wpt_id6w, wpt_id7w, wpt_id8w, wpt_id9w, wpt_id10w, wpt_id11w, wpt_id12w, wpt_id13w, wpt_id14w, wpt_id15w, wpt_id16w, wpt_id17w, wpt_id18w, wpt_id19w, legs_num2)

		local white_star = {img_white_star0, img_white_star1, img_white_star2, img_white_star3, img_white_star4, img_white_star5, img_white_star6, img_white_star7, img_white_star8, img_white_star9, img_white_star10, img_white_star11, img_white_star12, img_white_star13, img_white_star14, img_white_star15, img_white_star16, img_white_star17, img_white_star18, img_white_star19}
		
		local txt_wptw = {txt_wptw0, txt_wptw1, txt_wptw2, txt_wptw3, txt_wptw4, txt_wptw5, txt_wptw6, txt_wptw7, txt_wptw8, txt_wptw9, txt_wptw10, txt_wptw11, txt_wptw12, txt_wptw13, txt_wptw14, txt_wptw15, txt_wptw16, txt_wptw17, txt_wptw18, txt_wptw19}
		
		local txt_white_wpt_value = {wpt_id0w, wpt_id1w, wpt_id2w, wpt_id3w, wpt_id4w, wpt_id5w, wpt_id6w, wpt_id7w, wpt_id8w, wpt_id9w, wpt_id10w, wpt_id11w, wpt_id12w, wpt_id13w, wpt_id14w, wpt_id15w, wpt_id16w, wpt_id17w, wpt_id18w, wpt_id19w}
		
		local my_x = 400 - 38/2
		local my_y = 641.36 - 38/2

		for i = 1, legs_num2 + 1 do
			txt_set(txt_wptw[i], txt_white_wpt_value[i])
		end
		
		for i = 1, 20 do
			if txt_white_wpt_value[i] ~= "" then
				visible(white_star[i], true)
				visible(txt_wptw[i],true)
				move(white_star[i], my_x + ((wpt_x[i] * 100) / 1.75), my_y - ((wpt_y[i] * 100) / 1.75) , nil,nil)
				move(txt_wptw[i], my_x + (((wpt_x[i] * 100) / 1.75) + 30), my_y - (((wpt_y[i] * 100) / 1.75) - 25) , nil,nil)
			else
				visible(white_star[i],false)
				visible(txt_wptw[i],false)
			end
		end

	end
	xpl_dataref_subscribe(	"laminar/B738/nd/wpt_x", "FLOAT[20]",
							"laminar/B738/nd/wpt_y", "FLOAT[20]",
							"laminar/B738/nd/wpt_id00w", "STRING",
							"laminar/B738/nd/wpt_id01w", "STRING",
							"laminar/B738/nd/wpt_id02w", "STRING",
							"laminar/B738/nd/wpt_id03w", "STRING",
							"laminar/B738/nd/wpt_id04w", "STRING",
							"laminar/B738/nd/wpt_id05w", "STRING",
							"laminar/B738/nd/wpt_id06w", "STRING",
							"laminar/B738/nd/wpt_id07w", "STRING",
							"laminar/B738/nd/wpt_id08w", "STRING",
							"laminar/B738/nd/wpt_id09w", "STRING",
							"laminar/B738/nd/wpt_id10w", "STRING",
							"laminar/B738/nd/wpt_id11w", "STRING",
							"laminar/B738/nd/wpt_id12w", "STRING",
							"laminar/B738/nd/wpt_id13w", "STRING",
							"laminar/B738/nd/wpt_id14w", "STRING",
							"laminar/B738/nd/wpt_id15w", "STRING",
							"laminar/B738/nd/wpt_id16w", "STRING",
							"laminar/B738/nd/wpt_id17w", "STRING",
							"laminar/B738/nd/wpt_id18w", "STRING",
							"laminar/B738/nd/wpt_id19w", "STRING",
							"laminar/B738/fms/legs_num2", "INT",
							white_waypoints)
							
	function magenta_waypoints (wpt_x, wpt_y, wpt_id0m, wpt_id1m, wpt_id2m, wpt_id3m, wpt_id4m, wpt_id5m, wpt_id6m, wpt_id7m, wpt_id8m, wpt_id9m, wpt_id10m, wpt_id11m, wpt_id12m, wpt_id13m, wpt_id14m, wpt_id15m, wpt_id16m, wpt_id17m, wpt_id18m, wpt_id19m, legs_num2)

		local magenta_star = {img_magenta_star0, img_magenta_star1, img_magenta_star2, img_magenta_star3, img_magenta_star4, img_magenta_star5, img_magenta_star6, img_magenta_star7, img_magenta_star8, img_magenta_star9, img_magenta_star10, img_magenta_star11, img_magenta_star12, img_magenta_star13, img_magenta_star14, img_magenta_star15, img_magenta_star16, img_magenta_star17, img_magenta_star18, img_magenta_star19}
		
		local txt_wptm = {txt_wptm0, txt_wptm1, txt_wptm2, txt_wptm3, txt_wptm4, txt_wptm5, txt_wptm6, txt_wptm7, txt_wptm8, txt_wptm9, txt_wptm10, txt_wptm11, txt_wptm12, txt_wptm13, txt_wptm14, txt_wptm15, txt_wptm16, txt_wptm17, txt_wptm18, txt_wptm19}
		
		local txt_magenta_wpt_value = {wpt_id0m, wpt_id1m, wpt_id2m, wpt_id3m, wpt_id4m, wpt_id5m, wpt_id6m, wpt_id7m, wpt_id8m, wpt_id9m, wpt_id10m, wpt_id11m, wpt_id12m, wpt_id13m, wpt_id14m, wpt_id15m, wpt_id16m, wpt_id17m, wpt_id18m, wpt_id19m}
		
		local my_x = 400 - 38/2
		local my_y = 641.36 - 38/2

		for i = 1, legs_num2 + 1 do
			txt_set(txt_wptm[i], txt_magenta_wpt_value[i])
		end
		
		for i = 1, 20 do
			if txt_magenta_wpt_value[i] ~= "" then
				visible(magenta_star[i], true)
				visible(txt_wptm[i],true)
				move(magenta_star[i], my_x + ((wpt_x[i] * 100) / 1.75), my_y - ((wpt_y[i] * 100) / 1.75) , nil,nil)
				move(txt_wptm[i], my_x + (((wpt_x[i] * 100) / 1.75) + 30), my_y - (((wpt_y[i] * 100) / 1.75) - 25) , nil,nil)
			else
				visible(magenta_star[i],false)
				visible(txt_wptm[i],false)
			end
		end

	end
	xpl_dataref_subscribe(	"laminar/B738/nd/wpt_x", "FLOAT[20]",
							"laminar/B738/nd/wpt_y", "FLOAT[20]",
							"laminar/B738/nd/wpt_id00m", "STRING",
							"laminar/B738/nd/wpt_id01m", "STRING",
							"laminar/B738/nd/wpt_id02m", "STRING",
							"laminar/B738/nd/wpt_id03m", "STRING",
							"laminar/B738/nd/wpt_id04m", "STRING",
							"laminar/B738/nd/wpt_id05m", "STRING",
							"laminar/B738/nd/wpt_id06m", "STRING",
							"laminar/B738/nd/wpt_id07m", "STRING",
							"laminar/B738/nd/wpt_id08m", "STRING",
							"laminar/B738/nd/wpt_id09m", "STRING",
							"laminar/B738/nd/wpt_id10m", "STRING",
							"laminar/B738/nd/wpt_id11m", "STRING",
							"laminar/B738/nd/wpt_id12m", "STRING",
							"laminar/B738/nd/wpt_id13m", "STRING",
							"laminar/B738/nd/wpt_id14m", "STRING",
							"laminar/B738/nd/wpt_id15m", "STRING",
							"laminar/B738/nd/wpt_id16m", "STRING",
							"laminar/B738/nd/wpt_id17m", "STRING",
							"laminar/B738/nd/wpt_id18m", "STRING",
							"laminar/B738/nd/wpt_id19m", "STRING",
							"laminar/B738/fms/legs_num2", "INT",
							magenta_waypoints)
end