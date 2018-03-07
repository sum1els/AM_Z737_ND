	-- Waypoints --

function lib_waypoints()

	function show_runway (ils_x0, ils_y0, ils_rotate0, ils_show0, ils_runway0, map_range)
	
		move(img_runway, get_x_px(ils_x0, 110, 0), get_y_px(ils_y0, 17, 0), nil,nil)
		move(img_runway_centerline5, get_x_px(ils_x0, 1600.397, 0), get_y_px(ils_y0, 3, 0), nil,nil)
		move(img_runway_centerline10, get_x_px(ils_x0, 800.198, 0), get_y_px(ils_y0, 3, 0), nil,nil)
		move(img_runway_centerline20, get_x_px(ils_x0, 400.099, 0), get_y_px(ils_y0, 3, 0), nil,nil)
		move(img_runway_centerline40, get_x_px(ils_x0, 200.050, 0), get_y_px(ils_y0, 3, 0), nil,nil)
		img_rotate(img_runway, ils_rotate0 - 180)
		img_rotate(img_runway_centerline5, ils_rotate0 - 180)
		img_rotate(img_runway_centerline10, ils_rotate0 - 180)
		img_rotate(img_runway_centerline20, ils_rotate0 - 180)
		img_rotate(img_runway_centerline40, ils_rotate0 - 180)
		visible(img_runway,							ils_show0 == 1)
		visible(img_runway_centerline5,				map_range == 0 and ils_show0 == 1)
		visible(img_runway_centerline10,			map_range == 1 and ils_show0 == 1)
		visible(img_runway_centerline20,			map_range == 2 and ils_show0 == 1)
		visible(img_runway_centerline40,			map_range == 3 and ils_show0 == 1)
		
	end
	xpl_dataref_subscribe(	"laminar/B738/pfd/ils_x0", "FLOAT",
							"laminar/B738/pfd/ils_y0", "FLOAT",
							"laminar/B738/pfd/ils_rotate0", "FLOAT",
							"laminar/B738/pfd/ils_show0", "INT",
							"laminar/B738/pfd/ils_runway0", "STRING",
							"laminar/B738/EFIS/capt/map_range", "INT",
							show_runway)

	function white_waypoints (wpt_x, wpt_y, wpt_id0w, wpt_id1w, wpt_id2w, wpt_id3w, wpt_id4w, wpt_id5w, wpt_id6w, wpt_id7w, wpt_id8w, wpt_id9w, wpt_id10w, wpt_id11w, wpt_id12w, wpt_id13w, wpt_id14w, wpt_id15w, wpt_id16w, wpt_id17w, wpt_id18w, wpt_id19w, legs_num2)

		local white_star = {img_white_star0, img_white_star1, img_white_star2, img_white_star3, img_white_star4, img_white_star5, img_white_star6, img_white_star7, img_white_star8, img_white_star9, img_white_star10, img_white_star11, img_white_star12, img_white_star13, img_white_star14, img_white_star15, img_white_star16, img_white_star17, img_white_star18, img_white_star19}
		
		local txt_wptw = {txt_wptw0, txt_wptw1, txt_wptw2, txt_wptw3, txt_wptw4, txt_wptw5, txt_wptw6, txt_wptw7, txt_wptw8, txt_wptw9, txt_wptw10, txt_wptw11, txt_wptw12, txt_wptw13, txt_wptw14, txt_wptw15, txt_wptw16, txt_wptw17, txt_wptw18, txt_wptw19}
		
		local txt_white_wpt_value = {wpt_id0w, wpt_id1w, wpt_id2w, wpt_id3w, wpt_id4w, wpt_id5w, wpt_id6w, wpt_id7w, wpt_id8w, wpt_id9w, wpt_id10w, wpt_id11w, wpt_id12w, wpt_id13w, wpt_id14w, wpt_id15w, wpt_id16w, wpt_id17w, wpt_id18w, wpt_id19w}


		for i = 1, legs_num2 + 1 do
			txt_set(txt_wptw[i], txt_white_wpt_value[i])
		end
		
		for i = 1, 20 do
			if txt_white_wpt_value[i] ~= "" then
				visible(white_star[i], true)
				visible(txt_wptw[i],true)
				move(white_star[i], get_x_px(wpt_x[i], 38, 0), get_y_px(wpt_y[i], 38, 0) , nil,nil)
				move(txt_wptw[i], get_x_px(wpt_x[i], 38, 30), get_y_px(wpt_y[i], 38, 25) , nil,nil)
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

		for i = 1, legs_num2 + 1 do
			txt_set(txt_wptm[i], txt_magenta_wpt_value[i])
		end

		for i = 1, 20 do
			if txt_magenta_wpt_value[i] ~= "" then
				visible(magenta_star[i], true)
				visible(txt_wptm[i],true)
				move(magenta_star[i], get_x_px(wpt_x[i], 38, 0), get_y_px(wpt_y[i], 38, 0) , nil,nil)
				move(txt_wptm[i], get_x_px(wpt_x[i], 38, 30), get_y_px(wpt_y[i], 38, 25) , nil,nil)
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

