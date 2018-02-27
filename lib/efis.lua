	-- EFIS functions --


	
function lib_efis_functions()

	function vor_adf (vor1_off_pos, vor2_off_pos, vor1_sel_id, vor2_sel_id, vor1_dme, vor2_dme, vor1_show, vor1_sel_x, vor1_sel_y, vor2_show, vor2_sel_x, vor2_sel_y, vor1_line_show, vor1_sel_crs, vor1_sel_bcrs, vor2_line_show, vor2_sel_crs, vor2_sel_bcrs, track_mag_pilot, irs_mode)
		--
		--VOR2 seems a little buggy in ZiboMod datarefs, so expect some weird behavior
		--
		txt_set(txt_vor1_bcrs, vor1_sel_bcrs)
		txt_set(txt_vor1_crs, vor1_sel_crs)
		txt_set(txt_vor2_bcrs, vor2_sel_bcrs)
		txt_set(txt_vor2_crs, vor2_sel_crs)
		
		move(img_crs_line1, get_x_px(vor1_sel_x, 40.892, 18), get_y_px(vor1_sel_y, 35.414, -985), nil, nil)
		move(txt_vor1_bcrs, get_x_px(vor1_sel_x, 40.892, -79.55), get_y_px(vor1_sel_y, 0, -30), nil, nil)
		move(txt_vor1_crs, get_x_px(vor1_sel_x, 40.892, -79.55), get_y_px(vor1_sel_y, 0, -30), nil, nil)
		
		move(img_crs_line2, get_x_px(vor2_sel_x, 40.892, 18), get_y_px(vor2_sel_y, 35.414, -985), nil, nil)
		move(txt_vor2_bcrs, get_x_px(vor2_sel_x, 40.892, -79.55), get_y_px(vor2_sel_y, 0, -30), nil, nil)
		move(txt_vor2_crs, get_x_px(vor2_sel_x, 40.892, -79.55), get_y_px(vor2_sel_y, 0, -30), nil, nil)
		
		img_rotate(img_crs_line1, vor1_sel_bcrs - track_mag_pilot)
		img_rotate(txt_vor1_bcrs, vor1_sel_bcrs - track_mag_pilot - 90)
		img_rotate(txt_vor1_crs, vor1_sel_bcrs - track_mag_pilot - 90)
		img_rotate(img_crs_line2, vor2_sel_bcrs - track_mag_pilot)
		img_rotate(txt_vor2_bcrs, vor2_sel_bcrs - track_mag_pilot - 90)
		img_rotate(txt_vor2_crs, vor2_sel_bcrs - track_mag_pilot - 90)
		
		visible(img_crs_line1,		vor1_line_show == 1 and vor1_show == 1)
		visible(txt_vor1_crs,		vor1_line_show == 1 and vor1_show == 1)
		visible(txt_vor1_bcrs,		vor1_line_show == 1 and vor1_show == 1)
		visible(img_crs_line2,		vor2_line_show == 1 and vor2_show == 1)
		visible(txt_vor2_crs,		vor2_line_show == 1 and vor2_show == 1)
		visible(txt_vor2_bcrs,		vor2_line_show == 1 and vor2_show == 1)
		
		if vor1_show == 1 then
			txt_set(txt_vortac_green1, vor1_sel_id)
			move(img_vortac_green1, get_x_px(vor1_sel_x, 40.892, 0), get_y_px(vor1_sel_y, 35.414, 0) , nil,nil)
			move(txt_vortac_green1, get_x_px(vor1_sel_x, 40.892, 16), get_y_px(vor1_sel_y, 35.414, 35) , nil,nil)
			visible(img_vortac_green1,true)
			visible(txt_vortac_green1,true)
		else
			visible(img_vortac_green1,false)
			visible(txt_vortac_green1,false)
		end
		
		if vor2_show == 1 then
			txt_set(txt_vortac_green2, vor2_sel_id)
			move(img_vortac_green2, get_x_px(vor2_sel_x, 40.892, 0), get_y_px(vor2_sel_y, 35.414, 0), nil,nil)
			move(txt_vortac_green2, get_x_px(vor2_sel_x, 40.892, 16), get_y_px(vor2_sel_y, 35.414, 35), nil,nil)
			visible(img_vortac_green2,true)
			visible(txt_vortac_green2,true)
		else
			visible(img_vortac_green2,false)
			visible(txt_vortac_green2,false)
		end
		
		if vor1_dme > 0 then
			txt_set(txt_vor_1_id, vor1_sel_id)
				if vor1_dme < 10 then
					txt_set(txt_vor_1_dme, "DME "..string.format("0%.1f", vor1_dme))
				else
					txt_set(txt_vor_1_dme, "DME "..string.format("%.1f", vor1_dme))
				end
		else
			txt_set(txt_vor_1_id, "----")
			txt_set(txt_vor_1_dme, "DME ---")
		end
		
		if vor2_dme > 0 then
			txt_set(txt_vor_2_id, vor2_sel_id)
			if vor2_dme < 10 then
				txt_set(txt_vor_2_dme, "DME "..string.format("0%.1f", vor2_dme))
			else
				txt_set(txt_vor_2_dme, "DME "..string.format("%.1f", vor2_dme))
			end
		else
			txt_set(txt_vor_2_id, "----")
			txt_set(txt_vor_2_dme, "DME ---")
		end

		visible(txt_vor_1,		vor1_off_pos == 1 and irs_mode == 2)
		visible(txt_vor_1_id,	vor1_off_pos == 1 and irs_mode == 2)
		visible(txt_vor_1_dme,	vor1_off_pos == 1 and irs_mode == 2)
		visible(txt_vor_2_id,	vor2_off_pos == 1 and irs_mode == 2)
		visible(txt_vor_2_dme,	vor2_off_pos == 1 and irs_mode == 2)
		visible(txt_vor_2,		vor2_off_pos == 1 and irs_mode == 2)
		visible(txt_adf_1,		vor1_off_pos == -1 and irs_mode == 2)
		visible(txt_adf_2,		vor2_off_pos == -1 and irs_mode == 2)

	end
	xpl_dataref_subscribe(	"laminar/B738/EFIS_control/capt/vor1_off_pos", "INT",
							"laminar/B738/EFIS_control/capt/vor2_off_pos", "INT",
							"laminar/B738/pfd/vor1_sel_id_fo", "STRING", --something is broken with dataref for pilot, so using FO dataref
							"laminar/B738/pfd/vor2_sel_id_fo", "STRING", --something is broken with dataref for pilot, so using FO dataref
							"sim/cockpit2/radios/indicators/nav1_dme_distance_nm", "FLOAT",
							"sim/cockpit2/radios/indicators/nav2_dme_distance_nm", "FLOAT",
							"laminar/B738/pfd/vor1_show", "INT",
							"laminar/B738/pfd/vor1_sel_x", "FLOAT",
							"laminar/B738/pfd/vor1_sel_y", "FLOAT",
							"laminar/B738/pfd/vor2_show", "INT",
							"laminar/B738/pfd/vor2_sel_x", "FLOAT",
							"laminar/B738/pfd/vor2_sel_y", "FLOAT",
							"laminar/B738/pfd/vor1_line_show", "INT",
							"laminar/B738/pfd/vor1_sel_crs", "STRING",
							"laminar/B738/pfd/vor1_sel_bcrs", "STRING",
							"laminar/B738/pfd/vor2_line_show", "INT",
							"laminar/B738/pfd/vor2_sel_crs", "STRING",
							"laminar/B738/pfd/vor2_sel_bcrs", "STRING",
							"sim/cockpit2/gauges/indicators/ground_track_mag_pilot", "FLOAT",
							"laminar/B738/irs/irs_mode", "INT",
							vor_adf)
				

	function airports (EFIS_airport_on, apt_x, apt_y, apt_id0,apt_id1,apt_id2,apt_id3,apt_id4,apt_id5,apt_id6,apt_id7,apt_id8,apt_id9,apt_id10,apt_id11,apt_id12,apt_id13,apt_id14,apt_id15,apt_id16,apt_id17,apt_id18,apt_id19,apt_id20,apt_id21,apt_id22,apt_id23,apt_id24,apt_id25,apt_id26,apt_id27,apt_id28,apt_id29)

		local apt_txt_value = {apt_id0,apt_id1,apt_id2,apt_id3,apt_id4,apt_id5,apt_id6,apt_id7,apt_id8,apt_id9,apt_id10,apt_id11,apt_id12,apt_id13,apt_id14,apt_id15,apt_id16,apt_id17,apt_id18,apt_id19,apt_id20,apt_id21,apt_id22,apt_id23,apt_id24,apt_id25,apt_id26,apt_id27,apt_id28,apt_id29}

		local apt_txt = {txt_apt0, txt_apt1, txt_apt2, txt_apt3, txt_apt4, txt_apt5, txt_apt6, txt_apt7, txt_apt8, txt_apt9, txt_apt10, txt_apt11, txt_apt12,txt_apt13, txt_apt14,txt_apt15,txt_apt16,txt_apt17,txt_apt18,txt_apt19,txt_apt20,txt_apt21,txt_apt22,txt_apt22,txt_apt23,txt_apt24,txt_apt25,txt_apt26,txt_apt27,txt_apt28,txt_apt29}

		local apt_img_array = {img_airport_circle0,img_airport_circle1,img_airport_circle2,img_airport_circle3,img_airport_circle4,img_airport_circle5,img_airport_circle6,img_airport_circle7,img_airport_circle8,img_airport_circle9,img_airport_circle10,img_airport_circle11,img_airport_circle12,img_airport_circle13,img_airport_circle14,img_airport_circle15,img_airport_circle16,img_airport_circle17,img_airport_circle18,img_airport_circle19,img_airport_circle20,img_airport_circle21,img_airport_circle22,img_airport_circle23,img_airport_circle24,img_airport_circle25,img_airport_circle26,img_airport_circle27,img_airport_circle28,img_airport_circle29}
		
		visible(txt_arpt,	EFIS_airport_on == 1)
			
		if EFIS_airport_on == 1 then
			for i = 1, 30 do
				if apt_txt_value[i] ~= "" then
					txt_set(apt_txt[i], apt_txt_value[i])
					visible(apt_img_array[i], true)
					visible(apt_txt[i],true)
					move(apt_img_array[i], get_x_px(apt_x[i], 21, 0), get_y_px(apt_y[i], 21, 0) , nil,nil)
					move(apt_txt[i], get_x_px(apt_x[i], 21, 30), get_y_px(apt_y[i], 21, 25) , nil,nil)
				else
					txt_set(apt_txt[i], apt_txt_value[i])
					visible(apt_img_array[i],false)
					visible(apt_txt[i],false)
				end
			end
		else
			for i = 1, 30 do
				--txt_set(apt_txt[i], apt_txt_value[i])
				visible(apt_img_array[i],false)
				visible(apt_txt[i],false)
			end
		end	
	end
	xpl_dataref_subscribe("laminar/B738/EFIS/EFIS_airport_on", "INT",
						  "laminar/B738/nd/apt_x", "FLOAT[30]",						
						  "laminar/B738/nd/apt_y", "FLOAT[30]",						
						  "laminar/B738/nd/apt_id00", "STRING",					
						  "laminar/B738/nd/apt_id01", "STRING",		
						  "laminar/B738/nd/apt_id02", "STRING",
						  "laminar/B738/nd/apt_id03", "STRING",
						  "laminar/B738/nd/apt_id04", "STRING",
						  "laminar/B738/nd/apt_id05", "STRING",
						  "laminar/B738/nd/apt_id06", "STRING",
						  "laminar/B738/nd/apt_id07", "STRING",
						  "laminar/B738/nd/apt_id08", "STRING",
						  "laminar/B738/nd/apt_id09", "STRING",
						  "laminar/B738/nd/apt_id10", "STRING",
						  "laminar/B738/nd/apt_id11", "STRING",
						  "laminar/B738/nd/apt_id12", "STRING",
						  "laminar/B738/nd/apt_id13", "STRING",
						  "laminar/B738/nd/apt_id14", "STRING",
						  "laminar/B738/nd/apt_id15", "STRING",
						  "laminar/B738/nd/apt_id16", "STRING",
						  "laminar/B738/nd/apt_id17", "STRING",
						  "laminar/B738/nd/apt_id18", "STRING",
						  "laminar/B738/nd/apt_id19", "STRING",
						  "laminar/B738/nd/apt_id20", "STRING",
						  "laminar/B738/nd/apt_id21", "STRING",
						  "laminar/B738/nd/apt_id22", "STRING",
						  "laminar/B738/nd/apt_id23", "STRING",
						  "laminar/B738/nd/apt_id24", "STRING",
						  "laminar/B738/nd/apt_id25", "STRING",
						  "laminar/B738/nd/apt_id26", "STRING",
						  "laminar/B738/nd/apt_id27", "STRING",
						  "laminar/B738/nd/apt_id28", "STRING",
						  "laminar/B738/nd/apt_id29", "STRING", airports)
						  
	--[[ function sta (EFIS_vor_on, obj_x, obj_y, object_id0,object_id1,object_id2,object_id3,object_id4,object_id5,object_id6,object_id7,object_id8,object_id9,object_id10,object_id11,object_id12,object_id13,object_id14,object_id15,object_id16,object_id17,object_id18,object_id19,object_id20,object_id21,object_id22,object_id23,object_id24,object_id25,object_id26,object_id27,object_id28,object_id29,object_id30,object_id31,object_id32,object_id33,object_id34,object_id35,object_id36,object_id37,object_id38,object_id39,object_id40,object_id41,object_id42,object_id43,object_id44,object_id45,object_id46,object_id47,object_id48,object_id49,object_type0,object_type1,object_type2,object_type3,object_type4,object_type5,object_type6,object_type7,object_type8,object_type9,object_type10,object_type11,object_type12,object_type13,object_type14,object_type15,object_type16,object_type17,object_type18,object_type19,object_type20,object_type21,object_type22,object_type23,object_type24,object_type25,object_type26,object_type27,object_type28,object_type29,object_type30,object_type31,object_type32,object_type33,object_type34,object_type35,object_type36,object_type37,object_type38,object_type39,object_type40,object_type41,object_type42,object_type43,object_type44,object_type45,object_type46,object_type47,object_type48,object_type49) --]]
	
	function sta (EFIS_vor_on, obj_x, obj_y, object_id0,object_id1,object_id2,object_id3,object_id4,object_id5,object_id6,object_id7,object_id8,object_id9,object_id10,object_id11,object_id12,object_id13,object_id14,object_id15,object_id16,object_id17,object_id18,object_id19,object_id20,object_id21,object_id22,object_id23,object_id24,object_id25,object_id26,object_id27,object_id28,object_id29,object_id30,object_id31,object_id32,object_id33,object_id34,object_id35,object_id36,object_id37,object_id38,object_id39,object_id40,object_id41,object_id42,object_id43,object_id44,object_id45,object_id46,object_id47,object_id48,object_id49)

		local sta_txt = {txt_sta0, txt_sta1, txt_sta2, txt_sta3, txt_sta4, txt_sta5, txt_sta6, txt_sta7, txt_sta8, txt_sta9, txt_sta10, txt_sta11, txt_sta12, txt_sta13, txt_sta14, txt_sta15, txt_sta16, txt_sta17, txt_sta18, txt_sta19, txt_sta20, txt_sta21, txt_sta22, txt_sta23, txt_sta24, txt_sta25, txt_sta26, txt_sta27, txt_sta28, txt_sta29, txt_sta30, txt_sta31, txt_sta32, txt_sta33, txt_sta34, txt_sta35, txt_sta36, txt_sta37, txt_sta38, txt_sta39, txt_sta40, txt_sta41, txt_sta42, txt_sta43, txt_sta44, txt_sta45, txt_sta46, txt_sta47, txt_sta48, txt_sta49}	
		
		local sta_txt_value = {object_id0,object_id1,object_id2,object_id3,object_id4,object_id5,object_id6,object_id7,object_id8,object_id9,object_id10,object_id11,object_id12,object_id13,object_id14,object_id15,object_id16,object_id17,object_id18,object_id19,object_id20,object_id21,object_id22,object_id23,object_id24,object_id25,object_id26,object_id27,object_id28,object_id29,object_id30,object_id31,object_id32,object_id33,object_id34,object_id35,object_id36,object_id37,object_id38,object_id39,object_id40,object_id41,object_id42,object_id43,object_id44,object_id45,object_id46,object_id47,object_id48,object_id49}
		
		local vortac_cyan = {img_vortac_cyan0, img_vortac_cyan1, img_vortac_cyan2, img_vortac_cyan3, img_vortac_cyan4, img_vortac_cyan5, img_vortac_cyan6, img_vortac_cyan7, img_vortac_cyan8, img_vortac_cyan9, img_vortac_cyan10, img_vortac_cyan11, img_vortac_cyan12, img_vortac_cyan13, img_vortac_cyan14, img_vortac_cyan15, img_vortac_cyan16, img_vortac_cyan17, img_vortac_cyan18, img_vortac_cyan19, img_vortac_cyan20, img_vortac_cyan21, img_vortac_cyan22, img_vortac_cyan23, img_vortac_cyan24, img_vortac_cyan25, img_vortac_cyan26, img_vortac_cyan27, img_vortac_cyan28, img_vortac_cyan29, img_vortac_cyan30, img_vortac_cyan31, img_vortac_cyan32, img_vortac_cyan33, img_vortac_cyan34, img_vortac_cyan35, img_vortac_cyan36, img_vortac_cyan37, img_vortac_cyan38, img_vortac_cyan39, img_vortac_cyan40, img_vortac_cyan41, img_vortac_cyan42, img_vortac_cyan43, img_vortac_cyan44, img_vortac_cyan45, img_vortac_cyan46, img_vortac_cyan47, img_vortac_cyan48, img_vortac_cyan49}

		visible(txt_sta,	EFIS_vor_on == 1)
		
		local my_x = 400 - (21 / 2)
		local my_y = 641.36 - (21 / 2)

		--for i = 1, 50 do
		--	txt_set(sta_txt[i], sta_txt_value[i])
		--end
		
		if EFIS_vor_on == 1 then
			for i = 1, 50 do
				if sta_txt_value[i] ~= "" then
					txt_set(sta_txt[i], sta_txt_value[i])
					visible(vortac_cyan[i], true)
					visible(sta_txt[i],true)
					move(vortac_cyan[i], get_x_px(obj_x[i], 40.892, 0), get_y_px(obj_y[i], 35.414, 0) , nil,nil)
					move(sta_txt[i], get_x_px(obj_x[i], 40.892, 35), get_y_px(obj_y[i], 35.414, 35) , nil,nil)
				else
					txt_set(sta_txt[i], sta_txt_value[i])
					visible(vortac_cyan[i],false)
					visible(sta_txt[i],false)
				end
			end
		else
			for i = 1, 50 do
				--txt_set(sta_txt[i], sta_txt_value[i])
				visible(vortac_cyan[i],false)
				visible(sta_txt[i],false)
			end
		end


	end
	xpl_dataref_subscribe(	"laminar/B738/EFIS/EFIS_vor_on", "INT",
							"laminar/B738/nd/object_x", "FLOAT[50]",						
							"laminar/B738/nd/object_y", "FLOAT[50]",	
							"laminar/B738/nd/object_id00", "STRING",
							"laminar/B738/nd/object_id01", "STRING",
							"laminar/B738/nd/object_id02", "STRING",
							"laminar/B738/nd/object_id03", "STRING",
							"laminar/B738/nd/object_id04", "STRING",
							"laminar/B738/nd/object_id05", "STRING",
							"laminar/B738/nd/object_id06", "STRING",
							"laminar/B738/nd/object_id07", "STRING",
							"laminar/B738/nd/object_id08", "STRING",
							"laminar/B738/nd/object_id09", "STRING",
							"laminar/B738/nd/object_id10", "STRING",
							"laminar/B738/nd/object_id11", "STRING",
							"laminar/B738/nd/object_id12", "STRING",
							"laminar/B738/nd/object_id13", "STRING",
							"laminar/B738/nd/object_id14", "STRING",
							"laminar/B738/nd/object_id15", "STRING",
							"laminar/B738/nd/object_id16", "STRING",
							"laminar/B738/nd/object_id17", "STRING",
							"laminar/B738/nd/object_id18", "STRING",
							"laminar/B738/nd/object_id19", "STRING",
							"laminar/B738/nd/object_id20", "STRING",
							"laminar/B738/nd/object_id21", "STRING",
							"laminar/B738/nd/object_id22", "STRING",
							"laminar/B738/nd/object_id23", "STRING",
							"laminar/B738/nd/object_id24", "STRING",
							"laminar/B738/nd/object_id25", "STRING",
							"laminar/B738/nd/object_id26", "STRING",
							"laminar/B738/nd/object_id27", "STRING",
							"laminar/B738/nd/object_id28", "STRING",
							"laminar/B738/nd/object_id29", "STRING",
							"laminar/B738/nd/object_id30", "STRING",
							"laminar/B738/nd/object_id31", "STRING",
							"laminar/B738/nd/object_id32", "STRING",
							"laminar/B738/nd/object_id33", "STRING",
							"laminar/B738/nd/object_id34", "STRING",
							"laminar/B738/nd/object_id35", "STRING",
							"laminar/B738/nd/object_id36", "STRING",
							"laminar/B738/nd/object_id37", "STRING",
							"laminar/B738/nd/object_id38", "STRING",
							"laminar/B738/nd/object_id39", "STRING",
							"laminar/B738/nd/object_id40", "STRING",
							"laminar/B738/nd/object_id41", "STRING",
							"laminar/B738/nd/object_id42", "STRING",
							"laminar/B738/nd/object_id43", "STRING",
							"laminar/B738/nd/object_id44", "STRING",
							"laminar/B738/nd/object_id45", "STRING",
							"laminar/B738/nd/object_id46", "STRING",
							"laminar/B738/nd/object_id47", "STRING",
							"laminar/B738/nd/object_id48", "STRING",
							"laminar/B738/nd/object_id49", "STRING", sta)
						--[[ 	"laminar/B738/nd/object_type00", "INT",
							"laminar/B738/nd/object_type01", "INT",
							"laminar/B738/nd/object_type02", "INT",
							"laminar/B738/nd/object_type03", "INT",
							"laminar/B738/nd/object_type04", "INT",
							"laminar/B738/nd/object_type05", "INT",
							"laminar/B738/nd/object_type06", "INT",
							"laminar/B738/nd/object_type07", "INT",
							"laminar/B738/nd/object_type08", "INT",
							"laminar/B738/nd/object_type09", "INT",
							"laminar/B738/nd/object_type10", "INT",
							"laminar/B738/nd/object_type11", "INT",
							"laminar/B738/nd/object_type12", "INT",
							"laminar/B738/nd/object_type13", "INT",
							"laminar/B738/nd/object_type14", "INT",
							"laminar/B738/nd/object_type15", "INT",
							"laminar/B738/nd/object_type16", "INT",
							"laminar/B738/nd/object_type17", "INT",
							"laminar/B738/nd/object_type18", "INT",
							"laminar/B738/nd/object_type19", "INT",
							"laminar/B738/nd/object_type20", "INT",
							"laminar/B738/nd/object_type21", "INT",
							"laminar/B738/nd/object_type22", "INT",
							"laminar/B738/nd/object_type23", "INT",
							"laminar/B738/nd/object_type24", "INT",
							"laminar/B738/nd/object_type25", "INT",
							"laminar/B738/nd/object_type26", "INT",
							"laminar/B738/nd/object_type27", "INT",
							"laminar/B738/nd/object_type28", "INT",
							"laminar/B738/nd/object_type29", "INT",
							"laminar/B738/nd/object_type30", "INT",
							"laminar/B738/nd/object_type31", "INT",
							"laminar/B738/nd/object_type32", "INT",
							"laminar/B738/nd/object_type33", "INT",
							"laminar/B738/nd/object_type34", "INT",
							"laminar/B738/nd/object_type35", "INT",
							"laminar/B738/nd/object_type36", "INT",
							"laminar/B738/nd/object_type37", "INT",
							"laminar/B738/nd/object_type38", "INT",
							"laminar/B738/nd/object_type39", "INT",
							"laminar/B738/nd/object_type40", "INT",
							"laminar/B738/nd/object_type41", "INT",
							"laminar/B738/nd/object_type42", "INT",
							"laminar/B738/nd/object_type43", "INT",
							"laminar/B738/nd/object_type44", "INT",
							"laminar/B738/nd/object_type45", "INT",
							"laminar/B738/nd/object_type46", "INT",
							"laminar/B738/nd/object_type47", "INT",
							"laminar/B738/nd/object_type48", "INT",
							"laminar/B738/nd/object_type49", "INT",  --]]

	--[[ function fix (EFIS_fix_on,obj_x,obj_y,object_id0w,object_id1w,object_id2w,object_id3w,object_id4w,object_id5w,object_id6w,object_id7w,object_id8w,object_id9w,object_id10w,object_id11w,object_id12w,object_id13w,object_id14w,object_id15w,object_id16w,object_id17w,object_id18w,object_id19w,object_id20w,object_id21w,object_id22w,object_id23w,object_id24w,object_id25w,object_id26w,object_id27w,object_id28w,object_id29w,object_id30w,object_id31w,object_id32w,object_id33w,object_id34w,object_id35w,object_id36w,object_id37w,object_id38w,object_id39w,object_id40w,object_id41w,object_id42w,object_id43w,object_id44w,object_id45w,object_id46w,object_id47w,object_id48w,object_id49w)

		local fix_txt = {txt_wpt0, txt_wpt1, txt_wpt2, txt_wpt3, txt_wpt4, txt_wpt5, txt_wpt6, txt_wpt7, txt_wpt8, txt_wpt9, txt_wpt10, txt_wpt11, txt_wpt12, txt_wpt13, txt_wpt14, txt_wpt15, txt_wpt16, txt_wpt17, txt_wpt18, txt_wpt19, txt_wpt20, txt_wpt21, txt_wpt22, txt_wpt23, txt_wpt24, txt_wpt25, txt_wpt26, txt_wpt27, txt_wpt28, txt_wpt29, txt_wpt30, txt_wpt31, txt_wpt32, txt_wpt33, txt_wpt34, txt_wpt35, txt_wpt36, txt_wpt37, txt_wpt38, txt_wpt39, txt_wpt40, txt_wpt41, txt_wpt42, txt_wpt43, txt_wpt44, txt_wpt45, txt_wpt46, txt_wpt47, txt_wpt48, txt_wpt49}	
		
		local fix_txt_value = {object_id0w,object_id1w,object_id2w,object_id3w,object_id4w,object_id5w,object_id6w,object_id7w,object_id8w,object_id9w,object_id10w,object_id11w,object_id12w,object_id13w,object_id14w,object_id15w,object_id16w,object_id17w,object_id18w,object_id19w,object_id20w,object_id21w,object_id22w,object_id23w,object_id24w,object_id25w,object_id26w,object_id27w,object_id28w,object_id29w,object_id30w,object_id31w,object_id32w,object_id33w,object_id34w,object_id35w,object_id36w,object_id37w,object_id38w,object_id39w,object_id40w,object_id41w,object_id42w,object_id43w,object_id44w,object_id45w,object_id46w,object_id47w,object_id48w,object_id49w}
		
		local fix_triangle = {img_fix_triangle0, img_fix_triangle1, img_fix_triangle2, img_fix_triangle3, img_fix_triangle4, img_fix_triangle5, img_fix_triangle6, img_fix_triangle7, img_fix_triangle8, img_fix_triangle9, img_fix_triangle10, img_fix_triangle11, img_fix_triangle12, img_fix_triangle13, img_fix_triangle14, img_fix_triangle15, img_fix_triangle16, img_fix_triangle17, img_fix_triangle18, img_fix_triangle19, img_fix_triangle20, img_fix_triangle21, img_fix_triangle22, img_fix_triangle23, img_fix_triangle24, img_fix_triangle25, img_fix_triangle26, img_fix_triangle27, img_fix_triangle28, img_fix_triangle29, img_fix_triangle30, img_fix_triangle31, img_fix_triangle32, img_fix_triangle33, img_fix_triangle34, img_fix_triangle35, img_fix_triangle36, img_fix_triangle37, img_fix_triangle38, img_fix_triangle39, img_fix_triangle40, img_fix_triangle41, img_fix_triangle42, img_fix_triangle43, img_fix_triangle44, img_fix_triangle45, img_fix_triangle46, img_fix_triangle47, img_fix_triangle48, img_fix_triangle49}

	end
	xpl_dataref_subscribe(	"laminar/B738/EFIS/EFIS_fix_on", "INT",
							"laminar/B738/nd/object_x", "FLOAT[50]",						
							"laminar/B738/nd/object_y", "FLOAT[50]",
							"laminar/B738/nd/object_id00w", "STRING",	
							"laminar/B738/nd/object_id01w", "STRING",	
							"laminar/B738/nd/object_id02w", "STRING",	
							"laminar/B738/nd/object_id03w", "STRING",	
							"laminar/B738/nd/object_id04w", "STRING",	
							"laminar/B738/nd/object_id05w", "STRING",	
							"laminar/B738/nd/object_id06w", "STRING",	
							"laminar/B738/nd/object_id07w", "STRING",	
							"laminar/B738/nd/object_id08w", "STRING",	
							"laminar/B738/nd/object_id09w", "STRING",	
							"laminar/B738/nd/object_id10w", "STRING",	
							"laminar/B738/nd/object_id11w", "STRING",	
							"laminar/B738/nd/object_id12w", "STRING",	
							"laminar/B738/nd/object_id13w", "STRING",	
							"laminar/B738/nd/object_id14w", "STRING",	
							"laminar/B738/nd/object_id15w", "STRING",	
							"laminar/B738/nd/object_id16w", "STRING",	
							"laminar/B738/nd/object_id17w", "STRING",	
							"laminar/B738/nd/object_id18w", "STRING",	
							"laminar/B738/nd/object_id19w", "STRING",	
							"laminar/B738/nd/object_id20w", "STRING",	
							"laminar/B738/nd/object_id21w", "STRING",	
							"laminar/B738/nd/object_id22w", "STRING",	
							"laminar/B738/nd/object_id23w", "STRING",	
							"laminar/B738/nd/object_id24w", "STRING",	
							"laminar/B738/nd/object_id25w", "STRING",	
							"laminar/B738/nd/object_id26w", "STRING",	
							"laminar/B738/nd/object_id27w", "STRING",	
							"laminar/B738/nd/object_id28w", "STRING",	
							"laminar/B738/nd/object_id29w", "STRING",	
							"laminar/B738/nd/object_id30w", "STRING",	
							"laminar/B738/nd/object_id31w", "STRING",	
							"laminar/B738/nd/object_id32w", "STRING",	
							"laminar/B738/nd/object_id33w", "STRING",	
							"laminar/B738/nd/object_id34w", "STRING",	
							"laminar/B738/nd/object_id35w", "STRING",	
							"laminar/B738/nd/object_id36w", "STRING",	
							"laminar/B738/nd/object_id37w", "STRING",	
							"laminar/B738/nd/object_id38w", "STRING",	
							"laminar/B738/nd/object_id39w", "STRING",	
							"laminar/B738/nd/object_id40w", "STRING",	
							"laminar/B738/nd/object_id41w", "STRING",	
							"laminar/B738/nd/object_id42w", "STRING",	
							"laminar/B738/nd/object_id43w", "STRING",	
							"laminar/B738/nd/object_id44w", "STRING",	
							"laminar/B738/nd/object_id45w", "STRING",	
							"laminar/B738/nd/object_id46w", "STRING",	
							"laminar/B738/nd/object_id47w", "STRING",	
							"laminar/B738/nd/object_id48w", "STRING",	
							"laminar/B738/nd/object_id49w", "STRING", fix) --]]
end