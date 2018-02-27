	-- TCAS --

function lib_tcas ()

	function general_tcas (nd_mode, traffic_ra, traffic_ta, tcas_on, transponder_pos, map_range)
	
		visible(txt_tcas_warning_a,			traffic_ta == 1)
		visible(txt_tcas_warning_r,			traffic_ra == 1)
		visible(img_tfcring_5nm,			tcas_on == 1 and map_range == 0)
		visible(img_tfcring_10nm,			tcas_on == 1 and map_range == 1)
		visible(img_tfcring_20nm,			tcas_on == 1 and map_range == 2)
		visible(img_tfcring_40nm,			tcas_on == 1 and map_range == 3)
		visible(img_tfcring_80nm,			tcas_on == 1 and map_range == 4)
		
		if transponder_pos == 0 then
			txt_set(txt_tcas, "TCAS TEST")
		elseif transponder_pos == 4 then
			txt_set(txt_tcas, "TA ONLY")
		elseif transponder_pos == 5 then
			txt_set(txt_tcas, "TFC")
		end
		visible(txt_tcas_off1,					transponder_pos == 1 or transponder_pos == 2 or transponder_pos == 3)
		visible(txt_tcas_off2,					transponder_pos == 1 or transponder_pos == 2 or transponder_pos == 3)
		visible(txt_tcas,						(transponder_pos == 0 or transponder_pos == 4 or transponder_pos == 5) and tcas_on == 1 and nd_mode ~= 3)

	
	end
	xpl_dataref_subscribe(	"laminar/B738/EFIS_control/capt/map_mode_pos", "INT", --no_mode, 0 app, 1 vor, 2 map, 3 pln
							"laminar/B738/TCAS/traffic_ra", "INT", 
							"laminar/B738/TCAS/traffic_ta", "INT",
							"laminar/B738/EFIS/tcas_on", "INT",
							"laminar/B738/knob/transponder_pos", "INT", --test 0, STBY 1, ALT OFF 2, ALT ON 3, TA 4, TA/TA 5
							"laminar/B738/EFIS/capt/map_range", "INT",
							general_tcas)

	function tcas_show(tcas_on,tcas_show,tcas_show1,alt_dn_show,alt_up_show,arrow_dn_show,arrow_up_show,box_show,circle_show,diamond_e_show,diamond_show,alt,tcas_x,tcas_y)
						  
		txt_set(txt_tcas_altw_t, alt)
		txt_set(txt_tcas_altw_b, alt)
		txt_set(txt_tcas_alta_t, alt)
		txt_set(txt_tcas_alta_b, alt)
		txt_set(txt_tcas_altr_t, alt)
		txt_set(txt_tcas_altr_b, alt)
		
		local my_x = 400 - (21 / 2)
		local my_y = 641.36 - (21 / 2)
		
		--white
		visible(img_tcas_diamond,				tcas_on == 1 and tcas_show  == 1  and tcas_show1 == 1 and diamond_show == 1)
		visible(img_tcas_diamond_e,				tcas_on == 1 and tcas_show  == 1  and tcas_show1 == 1 and diamond_e_show == 1)
		visible(img_tcas_arrow_up_white,		tcas_on == 1 and tcas_show  == 1  and tcas_show1 == 1 and arrow_up_show == 1 and (diamond_show == 1 or diamond_e_show == 1))
		visible(img_tcas_arrow_dn_white,		tcas_on == 1 and tcas_show  == 1  and tcas_show1 == 1 and arrow_dn_show == 1 and (diamond_show == 1 or diamond_e_show == 1))
		visible(txt_tcas_altw_t,				tcas_on == 1 and tcas_show  == 1  and tcas_show1 == 1 and alt_dn_show == 0 and (diamond_show == 1 or diamond_e_show == 1))
		visible(txt_tcas_altw_b,				tcas_on == 1 and tcas_show  == 1  and tcas_show1 == 1 and alt_dn_show == 1 and (diamond_show == 1 or diamond_e_show == 1))
		
		--amber2
		visible(img_tcas_circle,				tcas_on == 1 and tcas_show  == 1  and tcas_show1 == 1 and circle_show == 1)
		visible(img_tcas_arrow_up_amber2,		tcas_on == 1 and tcas_show  == 1  and tcas_show1 == 1 and arrow_up_show == 1 and circle_show == 1)
		visible(img_tcas_arrow_dn_amber2,		tcas_on == 1 and tcas_show  == 1  and tcas_show1 == 1 and arrow_dn_show == 1 and circle_show == 1)
		visible(txt_tcas_alta_t,				tcas_on == 1 and tcas_show  == 1  and tcas_show1 == 1 and alt_dn_show == 0 and circle_show == 1)
		visible(txt_tcas_alta_b,				tcas_on == 1 and tcas_show  == 1  and tcas_show1 == 1 and alt_dn_show == 1 and circle_show == 1)
		
		--red

		visible(img_tcas_box,					tcas_on == 1 and tcas_show  == 1  and tcas_show1 == 1 and box_show == 1)
		visible(img_tcas_arrow_up_red,			tcas_on == 1 and tcas_show  == 1  and tcas_show1 == 1 and arrow_up_show == 1 and box_show == 1)
		visible(img_tcas_arrow_dn_red,			tcas_on == 1 and tcas_show  == 1  and tcas_show1 == 1 and arrow_dn_show == 1 and box_show == 1)
		visible(txt_tcas_altr_t,				tcas_on == 1 and tcas_show  == 1  and tcas_show1 == 1 and alt_dn_show == 0 and box_show == 1)
		visible(txt_tcas_altr_b,				tcas_on == 1 and tcas_show  == 1  and tcas_show1 == 1 and alt_dn_show == 1 and box_show == 1)
		
		if tcas_on == 1 and tcas_show  == 1  and tcas_show1 == 1 then
			-- icon
			if diamond_show == 1 then
				move(img_tcas_diamond, my_x + ((tcas_x * 100) / 1.75), my_y - ((tcas_y * 100) / 1.75), nil, nil)
			elseif diamond_e_show == 1 then
				move(img_tcas_diamond_e, my_x + ((tcas_x * 100) / 1.75), my_y - ((tcas_y * 100) / 1.75), nil, nil)
			elseif circle_show == 1 then
				move(img_tcas_circle, my_x + ((tcas_x * 100) / 1.75), my_y - ((tcas_y * 100) / 1.75), nil, nil)
			elseif box_show == 1 then
				move(img_tcas_box, my_x + ((tcas_x * 100) / 1.75), my_y - ((tcas_y * 100) / 1.75), nil, nil)
			end
			-- arrow up
			if arrow_dn_show == 0 and (diamond_show == 1 or diamond_e_show == 1) then
				move(img_tcas_arrow_up_white, (my_x + ((tcas_x * 100) / 1.75) + 25), (my_y - (tcas_y * 100) / 1.75), nil, nil)		
			elseif arrow_dn_show == 0 and circle_show == 1 then
				move(img_tcas_arrow_up_amber2, (my_x + ((tcas_x * 100) / 1.75) + 25), (my_y - (tcas_y * 100) / 1.75), nil, nil)		
			elseif arrow_dn_show == 0 and box_show == 1 then
				move(img_tcas_arrow_up_red, (my_x + ((tcas_x * 100) / 1.75)  + 25), (my_y - (tcas_y * 100) / 1.75), nil, nil)
				
			end
			-- arrow down
			if arrow_dn_show == 1 and (diamond_show == 1 or diamond_e_show == 1) then
				move(img_tcas_arrow_dn_white, (my_x + ((tcas_x * 100) / 1.75)  + 25), (my_y - (tcas_y * 100) / 1.75), nil, nil)	
			elseif arrow_dn_show == 1 and circle_show == 1 then
				move(img_tcas_arrow_dn_amber2, (my_x + ((tcas_x * 100) / 1.75)  + 25), (my_y - (tcas_y * 100) / 1.75), nil, nil)		
			elseif arrow_dn_show == 1 and box_show == 1 then
				move(img_tcas_arrow_dn_red, (my_x + ((tcas_x * 100) / 1.75)  + 25), (my_y - (tcas_y * 100) / 1.75), nil, nil)
			end
			
			-- alt text above
			if alt_dn_show == 0 and (diamond_show == 1 or diamond_e_show == 1) then
				move(txt_tcas_altw_t, (my_x + ((tcas_x * 100) / 1.75) - 15), (my_y - ((tcas_y * 100) / 1.75) -30), nil, nil)
			elseif alt_dn_show == 0 and circle_show == 1 then
				move(txt_tcas_alta_t, (my_x + ((tcas_x * 100) / 1.75) - 15), (my_y - ((tcas_y * 100) / 1.75) -30), nil, nil)
			elseif alt_dn_show == 0 and box_show == 1 then
				move(txt_tcas_altr_t, (my_x + ((tcas_x * 100) / 1.75) - 15), (my_y - ((tcas_y * 100) / 1.75) -30), nil, nil)
			end	
			
			-- alt text underneath
			if alt_dn_show == 1 and (diamond_show == 1 or diamond_e_show == 1) then
				move(txt_tcas_altw_b, (my_x + ((tcas_x * 100) / 1.75) - 15), (my_y - ((tcas_y * 100) / 1.75) +35), nil, nil)
			elseif alt_dn_show == 1 and circle_show == 1 then
				move(txt_tcas_alta_b, (my_x + ((tcas_x * 100) / 1.75) - 15), (my_y - ((tcas_y * 100) / 1.75) +25), nil, nil)
			elseif alt_dn_show == 1 and box_show == 1 then
				move(txt_tcas_altr_b, (my_x + ((tcas_x * 100) / 1.75) - 15), (my_y - ((tcas_y * 100) / 1.75) +25), nil, nil)
			end

		end
	end
	xpl_dataref_subscribe("laminar/B738/EFIS/tcas_on", "INT",
						  "laminar/B738/EFIS/tcas_show", "INT",
						  "laminar/B738/EFIS/tcas_show1", "INT",
						  "laminar/B738/TCAS/alt_dn_show", "INT",
						  "laminar/B738/TCAS/alt_up_show", "INT",
						  "laminar/B738/TCAS/arrow_dn_show", "INT",
						  "laminar/B738/TCAS/arrow_up_show", "INT",
						  "laminar/B738/TCAS/box_show", "INT",
						  "laminar/B738/TCAS/circle_show", "INT",
						  "laminar/B738/TCAS/diamond_e_show", "INT",
						  "laminar/B738/TCAS/diamond_show", "INT",
						  "laminar/B738/TCAS/alt", "STRING",
						  "laminar/B738/TCAS/x", "FLOAT",
						  "laminar/B738/TCAS/y", "FLOAT" , tcas_show)
						  
	function tcas_show2(tcas_on,tcas_show,tcas_show2,alt_dn_show2,alt_up_show2,arrow_dn_show2,arrow_up_show2,box_show2,circle_show2,diamond_e_show2,diamond_show2,alt2,alt_dn_show2,tcas_x2,tcas_y2)

		txt_set(txt_tcas_altw_t2, alt2)
		txt_set(txt_tcas_altw_b2, alt2)
		txt_set(txt_tcas_alta_t2, alt2)
		txt_set(txt_tcas_alta_b2, alt2)
		txt_set(txt_tcas_altr_t2, alt2)
		txt_set(txt_tcas_altr_b2, alt2)
		
		local my_x = 400 - (21 / 2)
		local my_y = 641.36 - (21 / 2)

		--white2
		visible(img_tcas_diamond2,				tcas_on == 1 and tcas_show  == 1  and tcas_show2 == 1 and diamond_show2 == 1)
		visible(img_tcas_diamond_e2,			tcas_on == 1 and tcas_show  == 1  and tcas_show2 == 1 and diamond_e_show2 == 1)
		visible(img_tcas_arrow_up_white2,		tcas_on == 1 and tcas_show  == 1  and tcas_show2 == 1 and arrow_up_show2 == 1 and (diamond_show2 == 1 or diamond_e_show2 == 1))
		visible(img_tcas_arrow_dn_white2,		tcas_on == 1 and tcas_show  == 1  and tcas_show2 == 1 and arrow_dn_show2 == 1 and (diamond_show2 == 1 or diamond_e_show2 == 1))
		visible(txt_tcas_altw_t2,				tcas_on == 1 and tcas_show  == 1  and tcas_show2 == 1 and alt_dn_show2 == 0 and (diamond_show2 == 1 or diamond_e_show2 == 1))
		visible(txt_tcas_altw_b2,				tcas_on == 1 and tcas_show  == 1  and tcas_show2 == 1 and alt_dn_show2 == 1 and (diamond_show2 == 1 or diamond_e_show2 == 1))
		
		--amber2
		visible(img_tcas_circle2,				tcas_on == 1 and tcas_show  == 1  and tcas_show2 == 1 and circle_show2 == 1)
		visible(img_tcas_arrow_up_amber2,		tcas_on == 1 and tcas_show  == 1  and tcas_show2 == 1 and arrow_up_show2 == 1 and circle_show2 == 1)
		visible(img_tcas_arrow_dn_amber2,		tcas_on == 1 and tcas_show  == 1  and tcas_show2 == 1 and arrow_dn_show2 == 1 and circle_show2 == 1)
		visible(txt_tcas_alta_t2,				tcas_on == 1 and tcas_show  == 1  and tcas_show2 == 1 and alt_dn_show2 == 0 and circle_show2 == 1)
		visible(txt_tcas_alta_b2,				tcas_on == 1 and tcas_show  == 1  and tcas_show2 == 1 and alt_dn_show2 == 1 and circle_show2 == 1)
		
		--red2
		visible(img_tcas_box2,					tcas_on == 1 and tcas_show  == 1  and tcas_show2 == 1 and box_show2 == 1)
		visible(img_tcas_arrow_up_red2,			tcas_on == 1 and tcas_show  == 1  and tcas_show2 == 1 and arrow_up_show2 == 1 and box_show2 == 1)
		visible(img_tcas_arrow_dn_red2,			tcas_on == 1 and tcas_show  == 1  and tcas_show2 == 1 and arrow_dn_show2 == 1 and box_show2 == 1)
		visible(txt_tcas_altr_t2,				tcas_on == 1 and tcas_show  == 1  and tcas_show2 == 1 and alt_dn_show2 == 0 and box_show2 == 1)
		visible(txt_tcas_altr_b2,				tcas_on == 1 and tcas_show  == 1  and tcas_show2 == 1 and alt_dn_show2 == 1 and box_show2 == 1)
		
		if tcas_on == 1 and tcas_show  == 1  and tcas_show2 == 1 then
			-- icon
			if diamond_show2 == 1 then
				move(img_tcas_diamond2, my_x + ((tcas_x2 * 100) / 1.75), my_y - ((tcas_y2 * 100) / 1.75), nil, nil)
			elseif diamond_e_show2 == 1 then
				move(img_tcas_diamond_e2, my_x + ((tcas_x2 * 100) / 1.75), my_y - ((tcas_y2 * 100) / 1.75), nil, nil)
			elseif circle_show2 == 1 then
				move(img_tcas_circle2, my_x + ((tcas_x2 * 100) / 1.75), my_y - ((tcas_y2 * 100) / 1.75), nil, nil)
			elseif box_show2 == 1 then
				move(img_tcas_box2, my_x + ((tcas_x2 * 100) / 1.75), my_y - ((tcas_y2 * 100) / 1.75), nil, nil)
			end
			-- arrow up
			if arrow_dn_show2 == 0 and (diamond_show2 == 1 or diamond_e_show2 == 1) then
				move(img_tcas_arrow_up_white2, (my_x + ((tcas_x2 * 100) / 1.75) + 30), (my_y - (tcas_y2 * 100) / 1.75), nil, nil)		
			elseif arrow_dn_show2 == 0 and circle_show2 == 1 then
				move(img_tcas_arrow_up_amber2, (my_x + ((tcas_x2 * 100) / 1.75) + 30), (my_y - (tcas_y2 * 100) / 1.75), nil, nil)		
			elseif arrow_dn_show2 == 0 and box_show2 == 1 then
				move(img_tcas_arrow_up_red2, (my_x + ((tcas_x2 * 100) / 1.75)  + 30), (my_y - (tcas_y2 * 100) / 1.75), nil, nil)
				
			end
			-- arrow down
			if arrow_dn_show2 == 1 and (diamond_show2 == 1 or diamond_e_show2 == 1) then
				move(img_tcas_arrow_dn_white2, (my_x + ((tcas_x2 * 100) / 1.75)  + 30), (my_y - (tcas_y2 * 100) / 1.75), nil, nil)	
			elseif arrow_dn_show2 == 1 and circle_show2 == 1 then
				move(img_tcas_arrow_dn_amber2, (my_x + ((tcas_x2 * 100) / 1.75)  + 30), (my_y - (tcas_y2 * 100) / 1.75), nil, nil)		
			elseif arrow_dn_show2 == 1 and box_show2 == 1 then
				move(img_tcas_arrow_dn_red2, (my_x + ((tcas_x2 * 100) / 1.75)  + 30), (my_y - (tcas_y2 * 100) / 1.75), nil, nil)
			end
			
			-- alt text above
			if alt_dn_show2 == 0 and (diamond_show2 == 1 or diamond_e_show2 == 1) then
				move(txt_tcas_altw_t2, (my_x + ((tcas_x2 * 100) / 1.75) - 15), (my_y - ((tcas_y2 * 100) / 1.75) -25), nil, nil)
			elseif alt_dn_show2 == 0 and circle_show2 == 1 then
				move(txt_tcas_alta_t2, (my_x + ((tcas_x2 * 100) / 1.75) - 15), (my_y - ((tcas_y2 * 100) / 1.75) -25), nil, nil)
			elseif alt_dn_show2 == 0 and box_show2 == 1 then
				move(txt_tcas_altr_t2, (my_x + ((tcas_x2 * 100) / 1.75) - 15), (my_y - ((tcas_y2 * 100) / 1.75) -25), nil, nil)
			end	
			
			-- alt text underneath
			if alt_dn_show2 == 1 and (diamond_show2 == 1 or diamond_e_show2 == 1) then
				move(txt_tcas_altw_b2, (my_x + ((tcas_x2 * 100) / 1.75) - 15), (my_y - ((tcas_y2 * 100) / 1.75) +35), nil, nil)
			elseif alt_dn_show2 == 1 and circle_show2 == 1 then
				move(txt_tcas_alta_b2, (my_x + ((tcas_x2 * 100) / 1.75) - 15), (my_y - ((tcas_y2 * 100) / 1.75) +25), nil, nil)
			elseif alt_dn_show2 == 1 and box_show2 == 1 then
				move(txt_tcas_altr_b2, (my_x + ((tcas_x2 * 100) / 1.75) - 15), (my_y - ((tcas_y2 * 100) / 1.75) +25), nil, nil)
			end

		end
	end
	xpl_dataref_subscribe("laminar/B738/EFIS/tcas_on", "INT",
						  "laminar/B738/EFIS/tcas_show", "INT",
						  "laminar/B738/EFIS/tcas_show2", "INT",
						  "laminar/B738/TCAS/alt_dn_show2", "INT",
						  "laminar/B738/TCAS/alt_up_show2", "INT",
						  "laminar/B738/TCAS/arrow_dn_show2", "INT",
						  "laminar/B738/TCAS/arrow_up_show2", "INT",
						  "laminar/B738/TCAS/box_show2", "INT",
						  "laminar/B738/TCAS/circle_show2", "INT",
						  "laminar/B738/TCAS/diamond_e_show2", "INT",
						  "laminar/B738/TCAS/diamond_show2", "INT",
						  "laminar/B738/TCAS/alt2", "STRING",
						  "laminar/B738/TCAS/alt_dn_show2", "INT",
						  "laminar/B738/TCAS/x2", "FLOAT",
						  "laminar/B738/TCAS/y2", "FLOAT" , tcas_show2)
						  
	function tcas_show3(tcas_on,tcas_show,tcas_show3,alt_dn_show3,alt_up_show3,arrow_dn_show3,arrow_up_show3,box_show3,circle_show3,diamond_e_show3,diamond_show3,alt3,alt_dn_show3,tcas_x3,tcas_y3)

		txt_set(txt_tcas_altw_t3, alt3)
		txt_set(txt_tcas_altw_b3, alt3)
		txt_set(txt_tcas_alta_t3, alt3)
		txt_set(txt_tcas_alta_b3, alt3)
		txt_set(txt_tcas_altr_t3, alt3)
		txt_set(txt_tcas_altr_b3, alt3)
		
		local my_x = 400 - (21 / 2)
		local my_y = 641.36 - (21 / 2)
		
		--white3
		visible(img_tcas_diamond3,				tcas_on == 1 and tcas_show  == 1 and tcas_show3 == 1 and diamond_show3 == 1)
		visible(img_tcas_diamond_e3,			tcas_on == 1 and tcas_show  == 1 and tcas_show3 == 1 and diamond_e_show3 == 1)
		visible(img_tcas_arrow_up_white3,		tcas_on == 1 and tcas_show  == 1 and tcas_show3 == 1 and arrow_up_show3 == 1 and (diamond_show3 == 1 or diamond_e_show3 == 1))
		visible(img_tcas_arrow_dn_white3,		tcas_on == 1 and tcas_show  == 1 and tcas_show3 == 1 and arrow_dn_show3 == 1 and (diamond_show3 == 1 or diamond_e_show3 == 1))
		visible(txt_tcas_altw_t3,				tcas_on == 1 and tcas_show  == 1 and tcas_show3 == 1 and alt_dn_show3 == 0 and (diamond_show3 == 1 or diamond_e_show3 == 1))
		visible(txt_tcas_altw_b3,				tcas_on == 1 and tcas_show  == 1 and tcas_show3 == 1 and alt_dn_show3 == 1 and (diamond_show3 == 1 or diamond_e_show3 == 1))
		
		--amber3
		visible(img_tcas_circle3,				tcas_on == 1 and tcas_show  == 1 and tcas_show3 == 1 and circle_show3 == 1)
		visible(img_tcas_arrow_up_amber3,		tcas_on == 1 and tcas_show  == 1 and tcas_show3 == 1 and arrow_up_show3 == 1 and circle_show3 == 1)
		visible(img_tcas_arrow_dn_amber3,		tcas_on == 1 and tcas_show  == 1 and tcas_show3 == 1 and arrow_dn_show3 == 1 and circle_show3 == 1)
		visible(txt_tcas_alta_t3,				tcas_on == 1 and tcas_show  == 1 and tcas_show3 == 1 and alt_dn_show3 == 0 and circle_show3 == 1)
		visible(txt_tcas_alta_b3,				tcas_on == 1 and tcas_show  == 1 and tcas_show3 == 1 and alt_dn_show3 == 1 and circle_show3 == 1)
		
		--red3
		visible(img_tcas_box3,					tcas_on == 1 and tcas_show  == 1 and tcas_show3 == 1 and box_show3 == 1)
		visible(img_tcas_arrow_up_red3,			tcas_on == 1 and tcas_show  == 1 and tcas_show3 == 1 and arrow_up_show3 == 1 and box_show3 == 1)
		visible(img_tcas_arrow_dn_red3,			tcas_on == 1 and tcas_show  == 1 and tcas_show3 == 1 and arrow_dn_show3 == 1 and box_show3 == 1)
		visible(txt_tcas_altr_t3,				tcas_on == 1 and tcas_show  == 1 and tcas_show3 == 1 and alt_dn_show3 == 0 and box_show3 == 1)
		visible(txt_tcas_altr_b3,				tcas_on == 1 and tcas_show  == 1 and tcas_show3 == 1 and alt_dn_show3 == 1 and box_show3 == 1)
		
		if tcas_on == 1 and tcas_show  == 1 and tcas_show3 == 1 then
			-- icon
			if diamond_show3 == 1 then
				move(img_tcas_diamond3, my_x + ((tcas_x3 * 100) / 1.75), my_y - ((tcas_y3 * 100) / 1.75), nil, nil)
			elseif diamond_e_show3 == 1 then
				move(img_tcas_diamond_e3, my_x + ((tcas_x3 * 100) / 1.75), my_y - ((tcas_y3 * 100) / 1.75), nil, nil)
			elseif circle_show3 == 1 then
				move(img_tcas_circle3, my_x + ((tcas_x3 * 100) / 1.75), my_y - ((tcas_y3 * 100) / 1.75), nil, nil)
			elseif box_show3 == 1 then
				move(img_tcas_box3, my_x + ((tcas_x3 * 100) / 1.75), my_y - ((tcas_y3 * 100) / 1.75), nil, nil)
			end
			-- arrow up
			if arrow_dn_show3 == 0 and (diamond_show3 == 1 or diamond_e_show3 == 1) then
				move(img_tcas_arrow_up_white3, (my_x + ((tcas_x3 * 100) / 1.75) + 30), (my_y - (tcas_y3 * 100) / 1.75), nil, nil)		
			elseif arrow_dn_show3 == 0 and circle_show3 == 1 then
				move(img_tcas_arrow_up_amber3, (my_x + ((tcas_x3 * 100) / 1.75) + 30), (my_y - (tcas_y3 * 100) / 1.75), nil, nil)		
			elseif arrow_dn_show3 == 0 and box_show3 == 1 then
				move(img_tcas_arrow_up_red3, (my_x + ((tcas_x3 * 100) / 1.75)  + 30), (my_y - (tcas_y3 * 100) / 1.75), nil, nil)
				
			end
			-- arrow down
			if arrow_dn_show3 == 1 and (diamond_show3 == 1 or diamond_e_show3 == 1) then
				move(img_tcas_arrow_dn_white3, (my_x + ((tcas_x3 * 100) / 1.75)  + 30), (my_y - (tcas_y3 * 100) / 1.75), nil, nil)	
			elseif arrow_dn_show3 == 1 and circle_show3 == 1 then
				move(img_tcas_arrow_dn_amber3, (my_x + ((tcas_x3 * 100) / 1.75)  + 30), (my_y - (tcas_y3 * 100) / 1.75), nil, nil)		
			elseif arrow_dn_show3 == 1 and box_show3 == 1 then
				move(img_tcas_arrow_dn_red3, (my_x + ((tcas_x3 * 100) / 1.75)  + 30), (my_y - (tcas_y3 * 100) / 1.75), nil, nil)
			end
			
			-- alt text above
			if alt_dn_show3 == 0 and (diamond_show3 == 1 or diamond_e_show3 == 1) then
				move(txt_tcas_altw_t3, (my_x + ((tcas_x3 * 100) / 1.75) - 15), (my_y - ((tcas_y3 * 100) / 1.75) -25), nil, nil)
			elseif alt_dn_show3 == 0 and circle_show3 == 1 then
				move(txt_tcas_alta_t3, (my_x + ((tcas_x3 * 100) / 1.75) - 15), (my_y - ((tcas_y3 * 100) / 1.75) -25), nil, nil)
			elseif alt_dn_show3 == 0 and box_show3 == 1 then
				move(txt_tcas_altr_t3, (my_x + ((tcas_x3 * 100) / 1.75) - 15), (my_y - ((tcas_y3 * 100) / 1.75) -25), nil, nil)
			end	
			
			-- alt text underneath
			if alt_dn_show3 == 1 and (diamond_show3 == 1 or diamond_e_show3 == 1) then
				move(txt_tcas_altw_b3, (my_x + ((tcas_x3 * 100) / 1.75) - 15), (my_y - ((tcas_y3 * 100) / 1.75) +35), nil, nil)
			elseif alt_dn_show3 == 1 and circle_show3 == 1 then
				move(txt_tcas_alta_b3, (my_x + ((tcas_x3 * 100) / 1.75) - 15), (my_y - ((tcas_y3 * 100) / 1.75) +25), nil, nil)
			elseif alt_dn_show3 == 1 and box_show3 == 1 then
				move(txt_tcas_altr_b3, (my_x + ((tcas_x3 * 100) / 1.75) - 15), (my_y - ((tcas_y3 * 100) / 1.75) +25), nil, nil)
			end

		end
	end
	xpl_dataref_subscribe("laminar/B738/EFIS/tcas_on", "INT",
						  "laminar/B738/EFIS/tcas_show", "INT",
						  "laminar/B738/EFIS/tcas_show3", "INT",
						  "laminar/B738/TCAS/alt_dn_show3", "INT",
						  "laminar/B738/TCAS/alt_up_show3", "INT",
						  "laminar/B738/TCAS/arrow_dn_show3", "INT",
						  "laminar/B738/TCAS/arrow_up_show3", "INT",
						  "laminar/B738/TCAS/box_show3", "INT",
						  "laminar/B738/TCAS/circle_show3", "INT",
						  "laminar/B738/TCAS/diamond_e_show3", "INT",
						  "laminar/B738/TCAS/diamond_show3", "INT",
						  "laminar/B738/TCAS/alt3", "STRING",
						  "laminar/B738/TCAS/alt_dn_show3", "INT",
						  "laminar/B738/TCAS/x3", "FLOAT",
						  "laminar/B738/TCAS/y3", "FLOAT" , tcas_show3)
						  
	function tcas_show4(tcas_on,tcas_show,tcas_show4,alt_dn_show4,alt_up_show4,arrow_dn_show4,arrow_up_show4,box_show4,circle_show4,diamond_e_show4,diamond_show4,alt4,alt_dn_show4,tcas_x4,tcas_y4)
		txt_set(txt_tcas_altw_t4, alt4)
		txt_set(txt_tcas_altw_b4, alt4)
		txt_set(txt_tcas_alta_t4, alt4)
		txt_set(txt_tcas_alta_b4, alt4)
		txt_set(txt_tcas_altr_t4, alt4)
		txt_set(txt_tcas_altr_b4, alt4)
		
		local my_x = 400 - (21 / 2)
		local my_y = 641.36 - (21 / 2)
		
		--white4
		visible(img_tcas_diamond4,				tcas_on == 1 and tcas_show  == 1 and tcas_show4 == 1 and diamond_show4 == 1)
		visible(img_tcas_diamond_e4,			tcas_on == 1 and tcas_show  == 1 and tcas_show4 == 1 and diamond_e_show4 == 1)
		visible(img_tcas_arrow_up_white4,		tcas_on == 1 and tcas_show  == 1 and tcas_show4 == 1 and arrow_up_show4 == 1 and (diamond_show4 == 1 or diamond_e_show4 == 1))
		visible(img_tcas_arrow_dn_white4,		tcas_on == 1 and tcas_show  == 1 and tcas_show4 == 1 and arrow_dn_show4 == 1 and (diamond_show4 == 1 or diamond_e_show4 == 1))
		visible(txt_tcas_altw_t4,				tcas_on == 1 and tcas_show  == 1 and tcas_show4 == 1 and alt_dn_show4 == 0 and (diamond_show4 == 1 or diamond_e_show4 == 1))
		visible(txt_tcas_altw_b4,				tcas_on == 1 and tcas_show  == 1 and tcas_show4 == 1 and alt_dn_show4 == 1 and (diamond_show4 == 1 or diamond_e_show4 == 1))
		
		--amber4
		visible(img_tcas_circle4,				tcas_on == 1 and tcas_show  == 1 and tcas_show4 == 1 and circle_show4 == 1)
		visible(img_tcas_arrow_up_amber4,		tcas_on == 1 and tcas_show  == 1 and tcas_show4 == 1 and arrow_up_show4 == 1 and circle_show4 == 1)
		visible(img_tcas_arrow_dn_amber4,		tcas_on == 1 and tcas_show  == 1 and tcas_show4 == 1 and arrow_dn_show4 == 1 and circle_show4 == 1)
		visible(txt_tcas_alta_t4,				tcas_on == 1 and tcas_show  == 1 and tcas_show4 == 1 and alt_dn_show4 == 0 and circle_show4 == 1)
		visible(txt_tcas_alta_b4,				tcas_on == 1 and tcas_show  == 1 and tcas_show4 == 1 and alt_dn_show4 == 1 and circle_show4 == 1)
		
		--red4
		visible(img_tcas_box4,					tcas_on == 1 and tcas_show  == 1 and tcas_show4 == 1 and box_show4 == 1)
		visible(img_tcas_arrow_up_red4,			tcas_on == 1 and tcas_show  == 1 and tcas_show4 == 1 and arrow_up_show4 == 1 and box_show4 == 1)
		visible(img_tcas_arrow_dn_red4,			tcas_on == 1 and tcas_show  == 1 and tcas_show4 == 1 and arrow_dn_show4 == 1 and box_show4 == 1)
		visible(txt_tcas_altr_t4,				tcas_on == 1 and tcas_show  == 1 and tcas_show4 == 1 and alt_dn_show4 == 0 and box_show4 == 1)
		visible(txt_tcas_altr_b4,				tcas_on == 1 and tcas_show  == 1 and tcas_show4 == 1 and alt_dn_show4 == 1 and box_show4 == 1)
		
		if tcas_on == 1 and tcas_show  == 1 and tcas_show4 == 1 then
			-- icon
			if diamond_show4 == 1 then
				move(img_tcas_diamond4, my_x + ((tcas_x4 * 100) / 1.75), my_y - ((tcas_y4 * 100) / 1.75), nil, nil)
			elseif diamond_e_show4 == 1 then
				move(img_tcas_diamond_e4, my_x + ((tcas_x4 * 100) / 1.75), my_y - ((tcas_y4 * 100) / 1.75), nil, nil)
			elseif circle_show4 == 1 then
				move(img_tcas_circle4, my_x + ((tcas_x4 * 100) / 1.75), my_y - ((tcas_y4 * 100) / 1.75), nil, nil)
			elseif box_show4 == 1 then
				move(img_tcas_box4, my_x + ((tcas_x4 * 100) / 1.75), my_y - ((tcas_y4 * 100) / 1.75), nil, nil)
			end
			-- arrow up
			if arrow_dn_show4 == 0 and (diamond_show4 == 1 or diamond_e_show4 == 1) then
				move(img_tcas_arrow_up_white4, (my_x + ((tcas_x4 * 100) / 1.75) + 30), (my_y - (tcas_y4 * 100) / 1.75), nil, nil)		
			elseif arrow_dn_show4 == 0 and circle_show4 == 1 then
				move(img_tcas_arrow_up_amber4, (my_x + ((tcas_x4 * 100) / 1.75) + 30), (my_y - (tcas_y4 * 100) / 1.75), nil, nil)		
			elseif arrow_dn_show4 == 0 and box_show4 == 1 then
				move(img_tcas_arrow_up_red4, (my_x + ((tcas_x4 * 100) / 1.75)  + 30), (my_y - (tcas_y4 * 100) / 1.75), nil, nil)
				
			end
			-- arrow down
			if arrow_dn_show4 == 1 and (diamond_show4 == 1 or diamond_e_show4 == 1) then
				move(img_tcas_arrow_dn_white4, (my_x + ((tcas_x4 * 100) / 1.75)  + 30), (my_y - (tcas_y4 * 100) / 1.75), nil, nil)	
			elseif arrow_dn_show4 == 1 and circle_show4 == 1 then
				move(img_tcas_arrow_dn_amber4, (my_x + ((tcas_x4 * 100) / 1.75)  + 30), (my_y - (tcas_y4 * 100) / 1.75), nil, nil)		
			elseif arrow_dn_show4 == 1 and box_show4 == 1 then
				move(img_tcas_arrow_dn_red4, (my_x + ((tcas_x4 * 100) / 1.75)  + 30), (my_y - (tcas_y4 * 100) / 1.75), nil, nil)
			end
			
			-- alt text above
			if alt_dn_show4 == 0 and (diamond_show4 == 1 or diamond_e_show4 == 1) then
				move(txt_tcas_altw_t4, (my_x + ((tcas_x4 * 100) / 1.75) - 15), (my_y - ((tcas_y4 * 100) / 1.75) -25), nil, nil)
			elseif alt_dn_show4 == 0 and circle_show4 == 1 then
				move(txt_tcas_alta_t4, (my_x + ((tcas_x4 * 100) / 1.75) - 15), (my_y - ((tcas_y4 * 100) / 1.75) -25), nil, nil)
			elseif alt_dn_show4 == 0 and box_show4 == 1 then
				move(txt_tcas_altr_t4, (my_x + ((tcas_x4 * 100) / 1.75) - 15), (my_y - ((tcas_y4 * 100) / 1.75) -25), nil, nil)
			end	
			
			-- alt text underneath
			if alt_dn_show4 == 1 and (diamond_show4 == 1 or diamond_e_show4 == 1) then
				move(txt_tcas_altw_b4, (my_x + ((tcas_x4 * 100) / 1.75) - 15), (my_y - ((tcas_y4 * 100) / 1.75) +35), nil, nil)
			elseif alt_dn_show4 == 1 and circle_show4 == 1 then
				move(txt_tcas_alta_b4, (my_x + ((tcas_x4 * 100) / 1.75) - 15), (my_y - ((tcas_y4 * 100) / 1.75) +25), nil, nil)
			elseif alt_dn_show4 == 1 and box_show4 == 1 then
				move(txt_tcas_altr_b4, (my_x + ((tcas_x4 * 100) / 1.75) - 15), (my_y - ((tcas_y4 * 100) / 1.75) +25), nil, nil)
			end

		end
	end
	xpl_dataref_subscribe("laminar/B738/EFIS/tcas_on", "INT",
						  "laminar/B738/EFIS/tcas_show", "INT",
						  "laminar/B738/EFIS/tcas_show4", "INT",
						  "laminar/B738/TCAS/alt_dn_show4", "INT",
						  "laminar/B738/TCAS/alt_up_show4", "INT",
						  "laminar/B738/TCAS/arrow_dn_show4", "INT",
						  "laminar/B738/TCAS/arrow_up_show4", "INT",
						  "laminar/B738/TCAS/box_show4", "INT",
						  "laminar/B738/TCAS/circle_show4", "INT",
						  "laminar/B738/TCAS/diamond_e_show4", "INT",
						  "laminar/B738/TCAS/diamond_show4", "INT",
						  "laminar/B738/TCAS/alt4", "STRING",
						  "laminar/B738/TCAS/alt_dn_show4", "INT",
						  "laminar/B738/TCAS/x4", "FLOAT",
						  "laminar/B738/TCAS/y4", "FLOAT" , tcas_show4)
	function tcas_show5(tcas_on,tcas_show,tcas_show5,alt_dn_show5,alt_up_show5,arrow_dn_show5,arrow_up_show5,box_show5,circle_show5,diamond_e_show5,diamond_show5,alt5,alt_dn_show5,tcas_x5,tcas_y5)

	  txt_set(txt_tcas_altw_t5, alt5)
	  txt_set(txt_tcas_altw_b5, alt5)
	  txt_set(txt_tcas_alta_t5, alt5)
	  txt_set(txt_tcas_alta_b5, alt5)
	  txt_set(txt_tcas_altr_t5, alt5)
	  txt_set(txt_tcas_altr_b5, alt5)
	  
	  local my_x = 400 - (21 / 2)
	  local my_y = 641.36 - (21 / 2)
	  
	--white5
	  visible(img_tcas_diamond5, tcas_on == 1 and tcas_show  == 1  and tcas_show5 == 1 and diamond_show5 == 1)
	  visible(img_tcas_diamond_e5, tcas_on == 1 and tcas_show  == 1  and tcas_show5 == 1 and diamond_e_show5 == 1)
	  visible(img_tcas_arrow_up_white5, tcas_on == 1 and tcas_show  == 1 and tcas_show5 == 1 and arrow_up_show5 == 1 and (diamond_show5 == 1 or diamond_e_show5 == 1))
	  visible(img_tcas_arrow_dn_white5, tcas_on == 1 and tcas_show  == 1 and tcas_show5 == 1 and arrow_dn_show5 == 1 and (diamond_show5 == 1 or diamond_e_show5 == 1))
	  visible(txt_tcas_altw_t5, tcas_on == 1 and tcas_show  == 1  and tcas_show5 == 1 and alt_dn_show5 == 0 and (diamond_show5 == 1 or diamond_e_show5 == 1))
	  visible(txt_tcas_altw_b5, tcas_on == 1 and tcas_show  == 1  and tcas_show5 == 1 and alt_dn_show5 == 1 and (diamond_show5 == 1 or diamond_e_show5 == 1))
	--amber5
	  visible(img_tcas_circle5, tcas_on == 1 and tcas_show  == 1  and tcas_show5 == 1 and circle_show5 == 1)
	  visible(img_tcas_arrow_up_amber5, tcas_on == 1 and tcas_show  == 1 and tcas_show5 == 1 and arrow_up_show5 == 1 and circle_show5 == 1)
	  visible(img_tcas_arrow_dn_amber5, tcas_on == 1 and tcas_show  == 1 and tcas_show5 == 1 and arrow_dn_show5 == 1 and circle_show5 == 1)
	  visible(txt_tcas_alta_t5, tcas_on == 1 and tcas_show  == 1  and tcas_show5 == 1 and alt_dn_show5 == 0 and circle_show5 == 1)
	  visible(txt_tcas_alta_b5, tcas_on == 1 and tcas_show  == 1  and tcas_show5 == 1 and alt_dn_show5 == 1 and circle_show5 == 1)
	--red5
	  visible(img_tcas_box5, tcas_on == 1 and tcas_show  == 1  and tcas_show5 == 1 and box_show5 == 1)
	  visible(img_tcas_arrow_up_red5, tcas_on == 1 and tcas_show  == 1  and tcas_show5 == 1 and arrow_up_show5 == 1 and box_show5 == 1)
	  visible(img_tcas_arrow_dn_red5, tcas_on == 1 and tcas_show  == 1  and tcas_show5 == 1 and arrow_dn_show5 == 1 and box_show5 == 1)
	  visible(txt_tcas_altr_t5, tcas_on == 1 and tcas_show  == 1  and tcas_show5 == 1 and alt_dn_show5 == 0 and box_show5 == 1)
	  visible(txt_tcas_altr_b5, tcas_on == 1 and tcas_show  == 1  and tcas_show5 == 1 and alt_dn_show5 == 1 and box_show5 == 1)
	--if statements
	  if tcas_on == 1 and tcas_show  == 1  and tcas_show5 == 1 then
	  -- icon
		if diamond_show5 == 1 then
		  move(img_tcas_diamond5, my_x + ((tcas_x5 * 100) / 1.75), my_y - ((tcas_y5 * 100) / 1.75), nil, nil)
		elseif diamond_e_show5 == 1 then
		  move(img_tcas_diamond_e5, my_x + ((tcas_x5 * 100) / 1.75), my_y - ((tcas_y5 * 100) / 1.75), nil, nil)
		elseif circle_show5 == 1 then
		  move(img_tcas_circle5, my_x + ((tcas_x5 * 100) / 1.75), my_y - ((tcas_y5 * 100) / 1.75), nil, nil)
		elseif box_show5 == 1 then
		  move(img_tcas_box5, my_x + ((tcas_x5 * 100) / 1.75), my_y - ((tcas_y5 * 100) / 1.75), nil, nil)
		end
	  -- arrow up
		if arrow_dn_show5 == 0 and (diamond_show5 == 1 or diamond_e_show5 == 1) then
		  move(img_tcas_arrow_up_white5, (my_x + ((tcas_x5 * 100) / 1.75) + 30), (my_y - (tcas_y5 * 100) / 1.75), nil, nil)
		elseif arrow_dn_show5 == 0 and circle_show5 == 1 then
		  move(img_tcas_arrow_up_amber5, (my_x + ((tcas_x5 * 100) / 1.75) + 30), (my_y - (tcas_y5 * 100) / 1.75), nil, nil)
		elseif arrow_dn_show5 == 0 and box_show5 == 1 then
		  move(img_tcas_arrow_up_red5, (my_x + ((tcas_x5 * 100) / 1.75)  + 30), (my_y - (tcas_y5 * 100) / 1.75), nil, nil)
		end
	  -- arrow down
		if arrow_dn_show5 == 1 and (diamond_show5 == 1 or diamond_e_show5 == 1) then
		  move(img_tcas_arrow_dn_white5, (my_x + ((tcas_x5 * 100) / 1.75)  + 30), (my_y - (tcas_y5 * 100) / 1.75), nil, nil)
		elseif arrow_dn_show5 == 1 and circle_show5 == 1 then
		  move(img_tcas_arrow_dn_amber5, (my_x + ((tcas_x5 * 100) / 1.75)  + 30), (my_y - (tcas_y5 * 100) / 1.75), nil, nil)
		elseif arrow_dn_show5 == 1 and box_show5 == 1 then
		  move(img_tcas_arrow_dn_red5, (my_x + ((tcas_x5 * 100) / 1.75)  + 30), (my_y - (tcas_y5 * 100) / 1.75), nil, nil)
		end
	  -- alt text above
		if alt_dn_show5 == 0 and (diamond_show5 == 1 or diamond_e_show5 == 1) then
		  move(txt_tcas_altw_t5, (my_x + ((tcas_x5 * 100) / 1.75) - 15), (my_y - ((tcas_y5 * 100) / 1.75) -25), nil, nil)
		elseif alt_dn_show5 == 0 and circle_show5 == 1 then
		  move(txt_tcas_alta_t5, (my_x + ((tcas_x5 * 100) / 1.75) - 15), (my_y - ((tcas_y5 * 100) / 1.75) -25), nil, nil)
		elseif alt_dn_show5 == 0 and box_show5 == 1 then
		  move(txt_tcas_altr_t5, (my_x + ((tcas_x5 * 100) / 1.75) - 15), (my_y - ((tcas_y5 * 100) / 1.75) -25), nil, nil)
		end
	  -- alt text underneath
		if alt_dn_show5 == 1 and (diamond_show5 == 1 or diamond_e_show5 == 1) then
		  move(txt_tcas_altw_b5, (my_x + ((tcas_x5 * 100) / 1.75) - 15), (my_y - ((tcas_y5 * 100) / 1.75) +35), nil, nil)
		elseif alt_dn_show5 == 1 and circle_show5 == 1 then
		  move(txt_tcas_alta_b5, (my_x + ((tcas_x5 * 100) / 1.75) - 15), (my_y - ((tcas_y5 * 100) / 1.75) +25), nil, nil)
		elseif alt_dn_show5 == 1 and box_show5 == 1 then
		  move(txt_tcas_altr_b5, (my_x + ((tcas_x5 * 100) / 1.75) - 15), (my_y - ((tcas_y5 * 100) / 1.75) +25), nil, nil)
		end
	  end
	end
	xpl_dataref_subscribe(  "laminar/B738/EFIS/tcas_on", "INT",
							"laminar/B738/EFIS/tcas_show", "INT",
							"laminar/B738/EFIS/tcas_show5", "INT",
							"laminar/B738/TCAS/alt_dn_show5", "INT",
							"laminar/B738/TCAS/alt_up_show5", "INT",
							"laminar/B738/TCAS/arrow_dn_show5", "INT",
							"laminar/B738/TCAS/arrow_up_show5", "INT",
							"laminar/B738/TCAS/box_show5", "INT",
							"laminar/B738/TCAS/circle_show5", "INT",
							"laminar/B738/TCAS/diamond_e_show5", "INT",
							"laminar/B738/TCAS/diamond_show5", "INT",
							"laminar/B738/TCAS/alt5", "STRING",
							"laminar/B738/TCAS/alt_dn_show5", "INT",
							"laminar/B738/TCAS/x5", "FLOAT",
							"laminar/B738/TCAS/y5", "FLOAT" , tcas_show5)
				
	function tcas_show6(tcas_on,tcas_show,tcas_show6,alt_dn_show6,alt_up_show6,arrow_dn_show6,arrow_up_show6,box_show6,circle_show6,diamond_e_show6,diamond_show6,alt6,alt_dn_show6,tcas_x6,tcas_y6)

	  txt_set(txt_tcas_altw_t6, alt6)
	  txt_set(txt_tcas_altw_b6, alt6)
	  txt_set(txt_tcas_alta_t6, alt6)
	  txt_set(txt_tcas_alta_b6, alt6)
	  txt_set(txt_tcas_altr_t6, alt6)
	  txt_set(txt_tcas_altr_b6, alt6)
	  
	  local my_x = 400 - (21 / 2)
	  local my_y = 641.36 - (21 / 2)
	  
	--white6
	  visible(img_tcas_diamond6, tcas_on == 1 and tcas_show  == 1  and tcas_show6 == 1 and diamond_show6 == 1)
	  visible(img_tcas_diamond_e6, tcas_on == 1 and tcas_show  == 1  and tcas_show6 == 1 and diamond_e_show6 == 1)
	  visible(img_tcas_arrow_up_white6, tcas_on == 1 and tcas_show  == 1 and tcas_show6 == 1 and arrow_up_show6 == 1 and (diamond_show6 == 1 or diamond_e_show6 == 1))
	  visible(img_tcas_arrow_dn_white6, tcas_on == 1 and tcas_show  == 1 and tcas_show6 == 1 and arrow_dn_show6 == 1 and (diamond_show6 == 1 or diamond_e_show6 == 1))
	  visible(txt_tcas_altw_t6, tcas_on == 1 and tcas_show  == 1  and tcas_show6 == 1 and alt_dn_show6 == 0 and (diamond_show6 == 1 or diamond_e_show6 == 1))
	  visible(txt_tcas_altw_b6, tcas_on == 1 and tcas_show  == 1  and tcas_show6 == 1 and alt_dn_show6 == 1 and (diamond_show6 == 1 or diamond_e_show6 == 1))
	--amber6
	  visible(img_tcas_circle6, tcas_on == 1 and tcas_show  == 1  and tcas_show6 == 1 and circle_show6 == 1)
	  visible(img_tcas_arrow_up_amber6, tcas_on == 1 and tcas_show  == 1 and tcas_show6 == 1 and arrow_up_show6 == 1 and circle_show6 == 1)
	  visible(img_tcas_arrow_dn_amber6, tcas_on == 1 and tcas_show  == 1 and tcas_show6 == 1 and arrow_dn_show6 == 1 and circle_show6 == 1)
	  visible(txt_tcas_alta_t6, tcas_on == 1 and tcas_show  == 1  and tcas_show6 == 1 and alt_dn_show6 == 0 and circle_show6 == 1)
	  visible(txt_tcas_alta_b6, tcas_on == 1 and tcas_show  == 1  and tcas_show6 == 1 and alt_dn_show6 == 1 and circle_show6 == 1)
	--red6
	  visible(img_tcas_box6, tcas_on == 1 and tcas_show  == 1  and tcas_show6 == 1 and box_show6 == 1)
	  visible(img_tcas_arrow_up_red6, tcas_on == 1 and tcas_show  == 1  and tcas_show6 == 1 and arrow_up_show6 == 1 and box_show6 == 1)
	  visible(img_tcas_arrow_dn_red6, tcas_on == 1 and tcas_show  == 1  and tcas_show6 == 1 and arrow_dn_show6 == 1 and box_show6 == 1)
	  visible(txt_tcas_altr_t6, tcas_on == 1 and tcas_show  == 1  and tcas_show6 == 1 and alt_dn_show6 == 0 and box_show6 == 1)
	  visible(txt_tcas_altr_b6, tcas_on == 1 and tcas_show  == 1  and tcas_show6 == 1 and alt_dn_show6 == 1 and box_show6 == 1)
	--if statements
	  if tcas_on == 1 and tcas_show  == 1  and tcas_show6 == 1 then
	  -- icon
		if diamond_show6 == 1 then
		  move(img_tcas_diamond6, my_x + ((tcas_x6 * 100) / 1.75), my_y - ((tcas_y6 * 100) / 1.75), nil, nil)
		elseif diamond_e_show6 == 1 then
		  move(img_tcas_diamond_e6, my_x + ((tcas_x6 * 100) / 1.75), my_y - ((tcas_y6 * 100) / 1.75), nil, nil)
		elseif circle_show6 == 1 then
		  move(img_tcas_circle6, my_x + ((tcas_x6 * 100) / 1.75), my_y - ((tcas_y6 * 100) / 1.75), nil, nil)
		elseif box_show6 == 1 then
		  move(img_tcas_box6, my_x + ((tcas_x6 * 100) / 1.75), my_y - ((tcas_y6 * 100) / 1.75), nil, nil)
		end
	  -- arrow up
		if arrow_dn_show6 == 0 and (diamond_show6 == 1 or diamond_e_show6 == 1) then
		  move(img_tcas_arrow_up_white6, (my_x + ((tcas_x6 * 100) / 1.75) + 30), (my_y - (tcas_y6 * 100) / 1.75), nil, nil)
		elseif arrow_dn_show6 == 0 and circle_show6 == 1 then
		  move(img_tcas_arrow_up_amber6, (my_x + ((tcas_x6 * 100) / 1.75) + 30), (my_y - (tcas_y6 * 100) / 1.75), nil, nil)
		elseif arrow_dn_show6 == 0 and box_show6 == 1 then
		  move(img_tcas_arrow_up_red6, (my_x + ((tcas_x6 * 100) / 1.75)  + 30), (my_y - (tcas_y6 * 100) / 1.75), nil, nil)
		end
	  -- arrow down
		if arrow_dn_show6 == 1 and (diamond_show6 == 1 or diamond_e_show6 == 1) then
		  move(img_tcas_arrow_dn_white6, (my_x + ((tcas_x6 * 100) / 1.75)  + 30), (my_y - (tcas_y6 * 100) / 1.75), nil, nil)
		elseif arrow_dn_show6 == 1 and circle_show6 == 1 then
		  move(img_tcas_arrow_dn_amber6, (my_x + ((tcas_x6 * 100) / 1.75)  + 30), (my_y - (tcas_y6 * 100) / 1.75), nil, nil)
		elseif arrow_dn_show6 == 1 and box_show6 == 1 then
		  move(img_tcas_arrow_dn_red6, (my_x + ((tcas_x6 * 100) / 1.75)  + 30), (my_y - (tcas_y6 * 100) / 1.75), nil, nil)
		end
	  -- alt text above
		if alt_dn_show6 == 0 and (diamond_show6 == 1 or diamond_e_show6 == 1) then
		  move(txt_tcas_altw_t6, (my_x + ((tcas_x6 * 100) / 1.75) - 15), (my_y - ((tcas_y6 * 100) / 1.75) -25), nil, nil)
		elseif alt_dn_show6 == 0 and circle_show6 == 1 then
		  move(txt_tcas_alta_t6, (my_x + ((tcas_x6 * 100) / 1.75) - 15), (my_y - ((tcas_y6 * 100) / 1.75) -25), nil, nil)
		elseif alt_dn_show6 == 0 and box_show6 == 1 then
		  move(txt_tcas_altr_t6, (my_x + ((tcas_x6 * 100) / 1.75) - 15), (my_y - ((tcas_y6 * 100) / 1.75) -25), nil, nil)
		end
	  -- alt text underneath
		if alt_dn_show6 == 1 and (diamond_show6 == 1 or diamond_e_show6 == 1) then
		  move(txt_tcas_altw_b6, (my_x + ((tcas_x6 * 100) / 1.75) - 15), (my_y - ((tcas_y6 * 100) / 1.75) +35), nil, nil)
		elseif alt_dn_show6 == 1 and circle_show6 == 1 then
		  move(txt_tcas_alta_b6, (my_x + ((tcas_x6 * 100) / 1.75) - 15), (my_y - ((tcas_y6 * 100) / 1.75) +25), nil, nil)
		elseif alt_dn_show6 == 1 and box_show6 == 1 then
		  move(txt_tcas_altr_b6, (my_x + ((tcas_x6 * 100) / 1.75) - 15), (my_y - ((tcas_y6 * 100) / 1.75) +25), nil, nil)
		end
	  end
	end
	xpl_dataref_subscribe(  "laminar/B738/EFIS/tcas_on", "INT",
							"laminar/B738/EFIS/tcas_show", "INT",
							"laminar/B738/EFIS/tcas_show6", "INT",
							"laminar/B738/TCAS/alt_dn_show6", "INT",
							"laminar/B738/TCAS/alt_up_show6", "INT",
							"laminar/B738/TCAS/arrow_dn_show6", "INT",
							"laminar/B738/TCAS/arrow_up_show6", "INT",
							"laminar/B738/TCAS/box_show6", "INT",
							"laminar/B738/TCAS/circle_show6", "INT",
							"laminar/B738/TCAS/diamond_e_show6", "INT",
							"laminar/B738/TCAS/diamond_show6", "INT",
							"laminar/B738/TCAS/alt6", "STRING",
							"laminar/B738/TCAS/alt_dn_show6", "INT",
							"laminar/B738/TCAS/x6", "FLOAT",
							"laminar/B738/TCAS/y6", "FLOAT" , tcas_show6)
				
	function tcas_show7(tcas_on,tcas_show,tcas_show7,alt_dn_show7,alt_up_show7,arrow_dn_show7,arrow_up_show7,box_show7,circle_show7,diamond_e_show7,diamond_show7,alt7,alt_dn_show7,tcas_x7,tcas_y7)

	  txt_set(txt_tcas_altw_t7, alt7)
	  txt_set(txt_tcas_altw_b7, alt7)
	  txt_set(txt_tcas_alta_t7, alt7)
	  txt_set(txt_tcas_alta_b7, alt7)
	  txt_set(txt_tcas_altr_t7, alt7)
	  txt_set(txt_tcas_altr_b7, alt7)
	  
	  local my_x = 400 - (21 / 2)
	  local my_y = 641.36 - (21 / 2)
	  
	--white7
	  visible(img_tcas_diamond7, tcas_on == 1 and tcas_show  == 1  and tcas_show7 == 1 and diamond_show7 == 1)
	  visible(img_tcas_diamond_e7, tcas_on == 1 and tcas_show  == 1  and tcas_show7 == 1 and diamond_e_show7 == 1)
	  visible(img_tcas_arrow_up_white7, tcas_on == 1 and tcas_show  == 1 and tcas_show7 == 1 and arrow_up_show7 == 1 and (diamond_show7 == 1 or diamond_e_show7 == 1))
	  visible(img_tcas_arrow_dn_white7, tcas_on == 1 and tcas_show  == 1 and tcas_show7 == 1 and arrow_dn_show7 == 1 and (diamond_show7 == 1 or diamond_e_show7 == 1))
	  visible(txt_tcas_altw_t7, tcas_on == 1 and tcas_show  == 1  and tcas_show7 == 1 and alt_dn_show7 == 0 and (diamond_show7 == 1 or diamond_e_show7 == 1))
	  visible(txt_tcas_altw_b7, tcas_on == 1 and tcas_show  == 1  and tcas_show7 == 1 and alt_dn_show7 == 1 and (diamond_show7 == 1 or diamond_e_show7 == 1))
	--amber7
	  visible(img_tcas_circle7, tcas_on == 1 and tcas_show  == 1  and tcas_show7 == 1 and circle_show7 == 1)
	  visible(img_tcas_arrow_up_amber7, tcas_on == 1 and tcas_show  == 1 and tcas_show7 == 1 and arrow_up_show7 == 1 and circle_show7 == 1)
	  visible(img_tcas_arrow_dn_amber7, tcas_on == 1 and tcas_show  == 1 and tcas_show7 == 1 and arrow_dn_show7 == 1 and circle_show7 == 1)
	  visible(txt_tcas_alta_t7, tcas_on == 1 and tcas_show  == 1  and tcas_show7 == 1 and alt_dn_show7 == 0 and circle_show7 == 1)
	  visible(txt_tcas_alta_b7, tcas_on == 1 and tcas_show  == 1  and tcas_show7 == 1 and alt_dn_show7 == 1 and circle_show7 == 1)
	--red7
	  visible(img_tcas_box7, tcas_on == 1 and tcas_show  == 1  and tcas_show7 == 1 and box_show7 == 1)
	  visible(img_tcas_arrow_up_red7, tcas_on == 1 and tcas_show  == 1  and tcas_show7 == 1 and arrow_up_show7 == 1 and box_show7 == 1)
	  visible(img_tcas_arrow_dn_red7, tcas_on == 1 and tcas_show  == 1  and tcas_show7 == 1 and arrow_dn_show7 == 1 and box_show7 == 1)
	  visible(txt_tcas_altr_t7, tcas_on == 1 and tcas_show  == 1  and tcas_show7 == 1 and alt_dn_show7 == 0 and box_show7 == 1)
	  visible(txt_tcas_altr_b7, tcas_on == 1 and tcas_show  == 1  and tcas_show7 == 1 and alt_dn_show7 == 1 and box_show7 == 1)
	--if statements
	  if tcas_on == 1 and tcas_show  == 1  and tcas_show7 == 1 then
	  -- icon
		if diamond_show7 == 1 then
		  move(img_tcas_diamond7, my_x + ((tcas_x7 * 100) / 1.75), my_y - ((tcas_y7 * 100) / 1.75), nil, nil)
		elseif diamond_e_show7 == 1 then
		  move(img_tcas_diamond_e7, my_x + ((tcas_x7 * 100) / 1.75), my_y - ((tcas_y7 * 100) / 1.75), nil, nil)
		elseif circle_show7 == 1 then
		  move(img_tcas_circle7, my_x + ((tcas_x7 * 100) / 1.75), my_y - ((tcas_y7 * 100) / 1.75), nil, nil)
		elseif box_show7 == 1 then
		  move(img_tcas_box7, my_x + ((tcas_x7 * 100) / 1.75), my_y - ((tcas_y7 * 100) / 1.75), nil, nil)
		end
	  -- arrow up
		if arrow_dn_show7 == 0 and (diamond_show7 == 1 or diamond_e_show7 == 1) then
		  move(img_tcas_arrow_up_white7, (my_x + ((tcas_x7 * 100) / 1.75) + 30), (my_y - (tcas_y7 * 100) / 1.75), nil, nil)
		elseif arrow_dn_show7 == 0 and circle_show7 == 1 then
		  move(img_tcas_arrow_up_amber7, (my_x + ((tcas_x7 * 100) / 1.75) + 30), (my_y - (tcas_y7 * 100) / 1.75), nil, nil)
		elseif arrow_dn_show7 == 0 and box_show7 == 1 then
		  move(img_tcas_arrow_up_red7, (my_x + ((tcas_x7 * 100) / 1.75)  + 30), (my_y - (tcas_y7 * 100) / 1.75), nil, nil)
		end
	  -- arrow down
		if arrow_dn_show7 == 1 and (diamond_show7 == 1 or diamond_e_show7 == 1) then
		  move(img_tcas_arrow_dn_white7, (my_x + ((tcas_x7 * 100) / 1.75)  + 30), (my_y - (tcas_y7 * 100) / 1.75), nil, nil)
		elseif arrow_dn_show7 == 1 and circle_show7 == 1 then
		  move(img_tcas_arrow_dn_amber7, (my_x + ((tcas_x7 * 100) / 1.75)  + 30), (my_y - (tcas_y7 * 100) / 1.75), nil, nil)
		elseif arrow_dn_show7 == 1 and box_show7 == 1 then
		  move(img_tcas_arrow_dn_red7, (my_x + ((tcas_x7 * 100) / 1.75)  + 30), (my_y - (tcas_y7 * 100) / 1.75), nil, nil)
		end
	  -- alt text above
		if alt_dn_show7 == 0 and (diamond_show7 == 1 or diamond_e_show7 == 1) then
		  move(txt_tcas_altw_t7, (my_x + ((tcas_x7 * 100) / 1.75) - 15), (my_y - ((tcas_y7 * 100) / 1.75) -25), nil, nil)
		elseif alt_dn_show7 == 0 and circle_show7 == 1 then
		  move(txt_tcas_alta_t7, (my_x + ((tcas_x7 * 100) / 1.75) - 15), (my_y - ((tcas_y7 * 100) / 1.75) -25), nil, nil)
		elseif alt_dn_show7 == 0 and box_show7 == 1 then
		  move(txt_tcas_altr_t7, (my_x + ((tcas_x7 * 100) / 1.75) - 15), (my_y - ((tcas_y7 * 100) / 1.75) -25), nil, nil)
		end
	  -- alt text underneath
		if alt_dn_show7 == 1 and (diamond_show7 == 1 or diamond_e_show7 == 1) then
		  move(txt_tcas_altw_b7, (my_x + ((tcas_x7 * 100) / 1.75) - 15), (my_y - ((tcas_y7 * 100) / 1.75) +35), nil, nil)
		elseif alt_dn_show7 == 1 and circle_show7 == 1 then
		  move(txt_tcas_alta_b7, (my_x + ((tcas_x7 * 100) / 1.75) - 15), (my_y - ((tcas_y7 * 100) / 1.75) +25), nil, nil)
		elseif alt_dn_show7 == 1 and box_show7 == 1 then
		  move(txt_tcas_altr_b7, (my_x + ((tcas_x7 * 100) / 1.75) - 15), (my_y - ((tcas_y7 * 100) / 1.75) +25), nil, nil)
		end
	  end
	end
	xpl_dataref_subscribe(  "laminar/B738/EFIS/tcas_on", "INT",
							"laminar/B738/EFIS/tcas_show", "INT",
							"laminar/B738/EFIS/tcas_show7", "INT",
							"laminar/B738/TCAS/alt_dn_show7", "INT",
							"laminar/B738/TCAS/alt_up_show7", "INT",
							"laminar/B738/TCAS/arrow_dn_show7", "INT",
							"laminar/B738/TCAS/arrow_up_show7", "INT",
							"laminar/B738/TCAS/box_show7", "INT",
							"laminar/B738/TCAS/circle_show7", "INT",
							"laminar/B738/TCAS/diamond_e_show7", "INT",
							"laminar/B738/TCAS/diamond_show7", "INT",
							"laminar/B738/TCAS/alt7", "STRING",
							"laminar/B738/TCAS/alt_dn_show7", "INT",
							"laminar/B738/TCAS/x7", "FLOAT",
							"laminar/B738/TCAS/y7", "FLOAT" , tcas_show7)
				
	function tcas_show8(tcas_on,tcas_show,tcas_show8,alt_dn_show8,alt_up_show8,arrow_dn_show8,arrow_up_show8,box_show8,circle_show8,diamond_e_show8,diamond_show8,alt8,alt_dn_show8,tcas_x8,tcas_y8)

	  txt_set(txt_tcas_altw_t8, alt8)
	  txt_set(txt_tcas_altw_b8, alt8)
	  txt_set(txt_tcas_alta_t8, alt8)
	  txt_set(txt_tcas_alta_b8, alt8)
	  txt_set(txt_tcas_altr_t8, alt8)
	  txt_set(txt_tcas_altr_b8, alt8)
	  
	  local my_x = 400 - (21 / 2)
	  local my_y = 641.36 - (21 / 2)
	  
	--white8
	  visible(img_tcas_diamond8, tcas_on == 1 and tcas_show  == 1  and tcas_show8 == 1 and diamond_show8 == 1)
	  visible(img_tcas_diamond_e8, tcas_on == 1 and tcas_show  == 1  and tcas_show8 == 1 and diamond_e_show8 == 1)
	  visible(img_tcas_arrow_up_white8, tcas_on == 1 and tcas_show  == 1 and tcas_show8 == 1 and arrow_up_show8 == 1 and (diamond_show8 == 1 or diamond_e_show8 == 1))
	  visible(img_tcas_arrow_dn_white8, tcas_on == 1 and tcas_show  == 1 and tcas_show8 == 1 and arrow_dn_show8 == 1 and (diamond_show8 == 1 or diamond_e_show8 == 1))
	  visible(txt_tcas_altw_t8, tcas_on == 1 and tcas_show  == 1  and tcas_show8 == 1 and alt_dn_show8 == 0 and (diamond_show8 == 1 or diamond_e_show8 == 1))
	  visible(txt_tcas_altw_b8, tcas_on == 1 and tcas_show  == 1  and tcas_show8 == 1 and alt_dn_show8 == 1 and (diamond_show8 == 1 or diamond_e_show8 == 1))
	--amber8
	  visible(img_tcas_circle8, tcas_on == 1 and tcas_show  == 1  and tcas_show8 == 1 and circle_show8 == 1)
	  visible(img_tcas_arrow_up_amber8, tcas_on == 1 and tcas_show  == 1 and tcas_show8 == 1 and arrow_up_show8 == 1 and circle_show8 == 1)
	  visible(img_tcas_arrow_dn_amber8, tcas_on == 1 and tcas_show  == 1 and tcas_show8 == 1 and arrow_dn_show8 == 1 and circle_show8 == 1)
	  visible(txt_tcas_alta_t8, tcas_on == 1 and tcas_show  == 1  and tcas_show8 == 1 and alt_dn_show8 == 0 and circle_show8 == 1)
	  visible(txt_tcas_alta_b8, tcas_on == 1 and tcas_show  == 1  and tcas_show8 == 1 and alt_dn_show8 == 1 and circle_show8 == 1)
	--red8
	  visible(img_tcas_box8, tcas_on == 1 and tcas_show  == 1  and tcas_show8 == 1 and box_show8 == 1)
	  visible(img_tcas_arrow_up_red8, tcas_on == 1 and tcas_show  == 1  and tcas_show8 == 1 and arrow_up_show8 == 1 and box_show8 == 1)
	  visible(img_tcas_arrow_dn_red8, tcas_on == 1 and tcas_show  == 1  and tcas_show8 == 1 and arrow_dn_show8 == 1 and box_show8 == 1)
	  visible(txt_tcas_altr_t8, tcas_on == 1 and tcas_show  == 1  and tcas_show8 == 1 and alt_dn_show8 == 0 and box_show8 == 1)
	  visible(txt_tcas_altr_b8, tcas_on == 1 and tcas_show  == 1  and tcas_show8 == 1 and alt_dn_show8 == 1 and box_show8 == 1)
	--if statements
	  if tcas_on == 1 and tcas_show  == 1  and tcas_show8 == 1 then
	  -- icon
		if diamond_show8 == 1 then
		  move(img_tcas_diamond8, my_x + ((tcas_x8 * 100) / 1.75), my_y - ((tcas_y8 * 100) / 1.75), nil, nil)
		elseif diamond_e_show8 == 1 then
		  move(img_tcas_diamond_e8, my_x + ((tcas_x8 * 100) / 1.75), my_y - ((tcas_y8 * 100) / 1.75), nil, nil)
		elseif circle_show8 == 1 then
		  move(img_tcas_circle8, my_x + ((tcas_x8 * 100) / 1.75), my_y - ((tcas_y8 * 100) / 1.75), nil, nil)
		elseif box_show8 == 1 then
		  move(img_tcas_box8, my_x + ((tcas_x8 * 100) / 1.75), my_y - ((tcas_y8 * 100) / 1.75), nil, nil)
		end
	  -- arrow up
		if arrow_dn_show8 == 0 and (diamond_show8 == 1 or diamond_e_show8 == 1) then
		  move(img_tcas_arrow_up_white8, (my_x + ((tcas_x8 * 100) / 1.75) + 30), (my_y - (tcas_y8 * 100) / 1.75), nil, nil)
		elseif arrow_dn_show8 == 0 and circle_show8 == 1 then
		  move(img_tcas_arrow_up_amber8, (my_x + ((tcas_x8 * 100) / 1.75) + 30), (my_y - (tcas_y8 * 100) / 1.75), nil, nil)
		elseif arrow_dn_show8 == 0 and box_show8 == 1 then
		  move(img_tcas_arrow_up_red8, (my_x + ((tcas_x8 * 100) / 1.75)  + 30), (my_y - (tcas_y8 * 100) / 1.75), nil, nil)
		end
	  -- arrow down
		if arrow_dn_show8 == 1 and (diamond_show8 == 1 or diamond_e_show8 == 1) then
		  move(img_tcas_arrow_dn_white8, (my_x + ((tcas_x8 * 100) / 1.75)  + 30), (my_y - (tcas_y8 * 100) / 1.75), nil, nil)
		elseif arrow_dn_show8 == 1 and circle_show8 == 1 then
		  move(img_tcas_arrow_dn_amber8, (my_x + ((tcas_x8 * 100) / 1.75)  + 30), (my_y - (tcas_y8 * 100) / 1.75), nil, nil)
		elseif arrow_dn_show8 == 1 and box_show8 == 1 then
		  move(img_tcas_arrow_dn_red8, (my_x + ((tcas_x8 * 100) / 1.75)  + 30), (my_y - (tcas_y8 * 100) / 1.75), nil, nil)
		end
	  -- alt text above
		if alt_dn_show8 == 0 and (diamond_show8 == 1 or diamond_e_show8 == 1) then
		  move(txt_tcas_altw_t8, (my_x + ((tcas_x8 * 100) / 1.75) - 15), (my_y - ((tcas_y8 * 100) / 1.75) -25), nil, nil)
		elseif alt_dn_show8 == 0 and circle_show8 == 1 then
		  move(txt_tcas_alta_t8, (my_x + ((tcas_x8 * 100) / 1.75) - 15), (my_y - ((tcas_y8 * 100) / 1.75) -25), nil, nil)
		elseif alt_dn_show8 == 0 and box_show8 == 1 then
		  move(txt_tcas_altr_t8, (my_x + ((tcas_x8 * 100) / 1.75) - 15), (my_y - ((tcas_y8 * 100) / 1.75) -25), nil, nil)
		end
	  -- alt text underneath
		if alt_dn_show8 == 1 and (diamond_show8 == 1 or diamond_e_show8 == 1) then
		  move(txt_tcas_altw_b8, (my_x + ((tcas_x8 * 100) / 1.75) - 15), (my_y - ((tcas_y8 * 100) / 1.75) +35), nil, nil)
		elseif alt_dn_show8 == 1 and circle_show8 == 1 then
		  move(txt_tcas_alta_b8, (my_x + ((tcas_x8 * 100) / 1.75) - 15), (my_y - ((tcas_y8 * 100) / 1.75) +25), nil, nil)
		elseif alt_dn_show8 == 1 and box_show8 == 1 then
		  move(txt_tcas_altr_b8, (my_x + ((tcas_x8 * 100) / 1.75) - 15), (my_y - ((tcas_y8 * 100) / 1.75) +25), nil, nil)
		end
	  end
	end
	xpl_dataref_subscribe(  "laminar/B738/EFIS/tcas_on", "INT",
							"laminar/B738/EFIS/tcas_show", "INT",
							"laminar/B738/EFIS/tcas_show8", "INT",
							"laminar/B738/TCAS/alt_dn_show8", "INT",
							"laminar/B738/TCAS/alt_up_show8", "INT",
							"laminar/B738/TCAS/arrow_dn_show8", "INT",
							"laminar/B738/TCAS/arrow_up_show8", "INT",
							"laminar/B738/TCAS/box_show8", "INT",
							"laminar/B738/TCAS/circle_show8", "INT",
							"laminar/B738/TCAS/diamond_e_show8", "INT",
							"laminar/B738/TCAS/diamond_show8", "INT",
							"laminar/B738/TCAS/alt8", "STRING",
							"laminar/B738/TCAS/alt_dn_show8", "INT",
							"laminar/B738/TCAS/x8", "FLOAT",
							"laminar/B738/TCAS/y8", "FLOAT" , tcas_show8)
				
	function tcas_show9(tcas_on,tcas_show,tcas_show9,alt_dn_show9,alt_up_show9,arrow_dn_show9,arrow_up_show9,box_show9,circle_show9,diamond_e_show9,diamond_show9,alt9,alt_dn_show9,tcas_x9,tcas_y9)

	  txt_set(txt_tcas_altw_t9, alt9)
	  txt_set(txt_tcas_altw_b9, alt9)
	  txt_set(txt_tcas_alta_t9, alt9)
	  txt_set(txt_tcas_alta_b9, alt9)
	  txt_set(txt_tcas_altr_t9, alt9)
	  txt_set(txt_tcas_altr_b9, alt9)
	  
	  local my_x = 400 - (21 / 2)
	  local my_y = 641.36 - (21 / 2)
	  
	--white9
	  visible(img_tcas_diamond9, tcas_on == 1 and tcas_show  == 1  and tcas_show9 == 1 and diamond_show9 == 1)
	  visible(img_tcas_diamond_e9, tcas_on == 1 and tcas_show  == 1  and tcas_show9 == 1 and diamond_e_show9 == 1)
	  visible(img_tcas_arrow_up_white9, tcas_on == 1 and tcas_show  == 1 and tcas_show9 == 1 and arrow_up_show9 == 1 and (diamond_show9 == 1 or diamond_e_show9 == 1))
	  visible(img_tcas_arrow_dn_white9, tcas_on == 1 and tcas_show  == 1 and tcas_show9 == 1 and arrow_dn_show9 == 1 and (diamond_show9 == 1 or diamond_e_show9 == 1))
	  visible(txt_tcas_altw_t9, tcas_on == 1 and tcas_show  == 1  and tcas_show9 == 1 and alt_dn_show9 == 0 and (diamond_show9 == 1 or diamond_e_show9 == 1))
	  visible(txt_tcas_altw_b9, tcas_on == 1 and tcas_show  == 1  and tcas_show9 == 1 and alt_dn_show9 == 1 and (diamond_show9 == 1 or diamond_e_show9 == 1))
	--amber9
	  visible(img_tcas_circle9, tcas_on == 1 and tcas_show  == 1  and tcas_show9 == 1 and circle_show9 == 1)
	  visible(img_tcas_arrow_up_amber9, tcas_on == 1 and tcas_show  == 1 and tcas_show9 == 1 and arrow_up_show9 == 1 and circle_show9 == 1)
	  visible(img_tcas_arrow_dn_amber9, tcas_on == 1 and tcas_show  == 1 and tcas_show9 == 1 and arrow_dn_show9 == 1 and circle_show9 == 1)
	  visible(txt_tcas_alta_t9, tcas_on == 1 and tcas_show  == 1  and tcas_show9 == 1 and alt_dn_show9 == 0 and circle_show9 == 1)
	  visible(txt_tcas_alta_b9, tcas_on == 1 and tcas_show  == 1  and tcas_show9 == 1 and alt_dn_show9 == 1 and circle_show9 == 1)
	--red9
	  visible(img_tcas_box9, tcas_on == 1 and tcas_show  == 1  and tcas_show9 == 1 and box_show9 == 1)
	  visible(img_tcas_arrow_up_red9, tcas_on == 1 and tcas_show  == 1  and tcas_show9 == 1 and arrow_up_show9 == 1 and box_show9 == 1)
	  visible(img_tcas_arrow_dn_red9, tcas_on == 1 and tcas_show  == 1  and tcas_show9 == 1 and arrow_dn_show9 == 1 and box_show9 == 1)
	  visible(txt_tcas_altr_t9, tcas_on == 1 and tcas_show  == 1  and tcas_show9 == 1 and alt_dn_show9 == 0 and box_show9 == 1)
	  visible(txt_tcas_altr_b9, tcas_on == 1 and tcas_show  == 1  and tcas_show9 == 1 and alt_dn_show9 == 1 and box_show9 == 1)
	--if statements
	  if tcas_on == 1 and tcas_show  == 1  and tcas_show9 == 1 then
	  -- icon
		if diamond_show9 == 1 then
		  move(img_tcas_diamond9, my_x + ((tcas_x9 * 100) / 1.75), my_y - ((tcas_y9 * 100) / 1.75), nil, nil)
		elseif diamond_e_show9 == 1 then
		  move(img_tcas_diamond_e9, my_x + ((tcas_x9 * 100) / 1.75), my_y - ((tcas_y9 * 100) / 1.75), nil, nil)
		elseif circle_show9 == 1 then
		  move(img_tcas_circle9, my_x + ((tcas_x9 * 100) / 1.75), my_y - ((tcas_y9 * 100) / 1.75), nil, nil)
		elseif box_show9 == 1 then
		  move(img_tcas_box9, my_x + ((tcas_x9 * 100) / 1.75), my_y - ((tcas_y9 * 100) / 1.75), nil, nil)
		end
	  -- arrow up
		if arrow_dn_show9 == 0 and (diamond_show9 == 1 or diamond_e_show9 == 1) then
		  move(img_tcas_arrow_up_white9, (my_x + ((tcas_x9 * 100) / 1.75) + 30), (my_y - (tcas_y9 * 100) / 1.75), nil, nil)
		elseif arrow_dn_show9 == 0 and circle_show9 == 1 then
		  move(img_tcas_arrow_up_amber9, (my_x + ((tcas_x9 * 100) / 1.75) + 30), (my_y - (tcas_y9 * 100) / 1.75), nil, nil)
		elseif arrow_dn_show9 == 0 and box_show9 == 1 then
		  move(img_tcas_arrow_up_red9, (my_x + ((tcas_x9 * 100) / 1.75)  + 30), (my_y - (tcas_y9 * 100) / 1.75), nil, nil)
		end
	  -- arrow down
		if arrow_dn_show9 == 1 and (diamond_show9 == 1 or diamond_e_show9 == 1) then
		  move(img_tcas_arrow_dn_white9, (my_x + ((tcas_x9 * 100) / 1.75)  + 30), (my_y - (tcas_y9 * 100) / 1.75), nil, nil)
		elseif arrow_dn_show9 == 1 and circle_show9 == 1 then
		  move(img_tcas_arrow_dn_amber9, (my_x + ((tcas_x9 * 100) / 1.75)  + 30), (my_y - (tcas_y9 * 100) / 1.75), nil, nil)
		elseif arrow_dn_show9 == 1 and box_show9 == 1 then
		  move(img_tcas_arrow_dn_red9, (my_x + ((tcas_x9 * 100) / 1.75)  + 30), (my_y - (tcas_y9 * 100) / 1.75), nil, nil)
		end
	  -- alt text above
		if alt_dn_show9 == 0 and (diamond_show9 == 1 or diamond_e_show9 == 1) then
		  move(txt_tcas_altw_t9, (my_x + ((tcas_x9 * 100) / 1.75) - 15), (my_y - ((tcas_y9 * 100) / 1.75) -25), nil, nil)
		elseif alt_dn_show9 == 0 and circle_show9 == 1 then
		  move(txt_tcas_alta_t9, (my_x + ((tcas_x9 * 100) / 1.75) - 15), (my_y - ((tcas_y9 * 100) / 1.75) -25), nil, nil)
		elseif alt_dn_show9 == 0 and box_show9 == 1 then
		  move(txt_tcas_altr_t9, (my_x + ((tcas_x9 * 100) / 1.75) - 15), (my_y - ((tcas_y9 * 100) / 1.75) -25), nil, nil)
		end
	  -- alt text underneath
		if alt_dn_show9 == 1 and (diamond_show9 == 1 or diamond_e_show9 == 1) then
		  move(txt_tcas_altw_b9, (my_x + ((tcas_x9 * 100) / 1.75) - 15), (my_y - ((tcas_y9 * 100) / 1.75) +35), nil, nil)
		elseif alt_dn_show9 == 1 and circle_show9 == 1 then
		  move(txt_tcas_alta_b9, (my_x + ((tcas_x9 * 100) / 1.75) - 15), (my_y - ((tcas_y9 * 100) / 1.75) +25), nil, nil)
		elseif alt_dn_show9 == 1 and box_show9 == 1 then
		  move(txt_tcas_altr_b9, (my_x + ((tcas_x9 * 100) / 1.75) - 15), (my_y - ((tcas_y9 * 100) / 1.75) +25), nil, nil)
		end
	  end
	end
	xpl_dataref_subscribe(  "laminar/B738/EFIS/tcas_on", "INT",
							"laminar/B738/EFIS/tcas_show", "INT",
							"laminar/B738/EFIS/tcas_show9", "INT",
							"laminar/B738/TCAS/alt_dn_show9", "INT",
							"laminar/B738/TCAS/alt_up_show9", "INT",
							"laminar/B738/TCAS/arrow_dn_show9", "INT",
							"laminar/B738/TCAS/arrow_up_show9", "INT",
							"laminar/B738/TCAS/box_show9", "INT",
							"laminar/B738/TCAS/circle_show9", "INT",
							"laminar/B738/TCAS/diamond_e_show9", "INT",
							"laminar/B738/TCAS/diamond_show9", "INT",
							"laminar/B738/TCAS/alt9", "STRING",
							"laminar/B738/TCAS/alt_dn_show9", "INT",
							"laminar/B738/TCAS/x9", "FLOAT",
							"laminar/B738/TCAS/y9", "FLOAT" , tcas_show9)
				
	function tcas_show10(tcas_on,tcas_show,tcas_show10,alt_dn_show10,alt_up_show10,arrow_dn_show10,arrow_up_show10,box_show10,circle_show10,diamond_e_show10,diamond_show10,alt10,alt_dn_show10,tcas_x10,tcas_y10)

	  txt_set(txt_tcas_altw_t10, alt10)
	  txt_set(txt_tcas_altw_b10, alt10)
	  txt_set(txt_tcas_alta_t10, alt10)
	  txt_set(txt_tcas_alta_b10, alt10)
	  txt_set(txt_tcas_altr_t10, alt10)
	  txt_set(txt_tcas_altr_b10, alt10)
	  
	  local my_x = 400 - (21 / 2)
	  local my_y = 641.36 - (21 / 2)
	  
	--white10
	  visible(img_tcas_diamond10, tcas_on == 1 and tcas_show  == 1  and tcas_show10 == 1 and diamond_show10 == 1)
	  visible(img_tcas_diamond_e10, tcas_on == 1 and tcas_show  == 1  and tcas_show10 == 1 and diamond_e_show10 == 1)
	  visible(img_tcas_arrow_up_white10, tcas_on == 1 and tcas_show  == 1 and tcas_show10 == 1 and arrow_up_show10 == 1 and (diamond_show10 == 1 or diamond_e_show10 == 1))
	  visible(img_tcas_arrow_dn_white10, tcas_on == 1 and tcas_show  == 1 and tcas_show10 == 1 and arrow_dn_show10 == 1 and (diamond_show10 == 1 or diamond_e_show10 == 1))
	  visible(txt_tcas_altw_t10, tcas_on == 1 and tcas_show  == 1  and tcas_show10 == 1 and alt_dn_show10 == 0 and (diamond_show10 == 1 or diamond_e_show10 == 1))
	  visible(txt_tcas_altw_b10, tcas_on == 1 and tcas_show  == 1  and tcas_show10 == 1 and alt_dn_show10 == 1 and (diamond_show10 == 1 or diamond_e_show10 == 1))
	--amber10
	  visible(img_tcas_circle10, tcas_on == 1 and tcas_show  == 1  and tcas_show10 == 1 and circle_show10 == 1)
	  visible(img_tcas_arrow_up_amber10, tcas_on == 1 and tcas_show  == 1 and tcas_show10 == 1 and arrow_up_show10 == 1 and circle_show10 == 1)
	  visible(img_tcas_arrow_dn_amber10, tcas_on == 1 and tcas_show  == 1 and tcas_show10 == 1 and arrow_dn_show10 == 1 and circle_show10 == 1)
	  visible(txt_tcas_alta_t10, tcas_on == 1 and tcas_show  == 1  and tcas_show10 == 1 and alt_dn_show10 == 0 and circle_show10 == 1)
	  visible(txt_tcas_alta_b10, tcas_on == 1 and tcas_show  == 1  and tcas_show10 == 1 and alt_dn_show10 == 1 and circle_show10 == 1)
	--red10
	  visible(img_tcas_box10, tcas_on == 1 and tcas_show  == 1  and tcas_show10 == 1 and box_show10 == 1)
	  visible(img_tcas_arrow_up_red10, tcas_on == 1 and tcas_show  == 1  and tcas_show10 == 1 and arrow_up_show10 == 1 and box_show10 == 1)
	  visible(img_tcas_arrow_dn_red10, tcas_on == 1 and tcas_show  == 1  and tcas_show10 == 1 and arrow_dn_show10 == 1 and box_show10 == 1)
	  visible(txt_tcas_altr_t10, tcas_on == 1 and tcas_show  == 1  and tcas_show10 == 1 and alt_dn_show10 == 0 and box_show10 == 1)
	  visible(txt_tcas_altr_b10, tcas_on == 1 and tcas_show  == 1  and tcas_show10 == 1 and alt_dn_show10 == 1 and box_show10 == 1)
	--if statements
	  if tcas_on == 1 and tcas_show  == 1  and tcas_show10 == 1 then
	  -- icon
		if diamond_show10 == 1 then
		  move(img_tcas_diamond10, my_x + ((tcas_x10 * 100) / 1.75), my_y - ((tcas_y10 * 100) / 1.75), nil, nil)
		elseif diamond_e_show10 == 1 then
		  move(img_tcas_diamond_e10, my_x + ((tcas_x10 * 100) / 1.75), my_y - ((tcas_y10 * 100) / 1.75), nil, nil)
		elseif circle_show10 == 1 then
		  move(img_tcas_circle10, my_x + ((tcas_x10 * 100) / 1.75), my_y - ((tcas_y10 * 100) / 1.75), nil, nil)
		elseif box_show10 == 1 then
		  move(img_tcas_box10, my_x + ((tcas_x10 * 100) / 1.75), my_y - ((tcas_y10 * 100) / 1.75), nil, nil)
		end
	  -- arrow up
		if arrow_dn_show10 == 0 and (diamond_show10 == 1 or diamond_e_show10 == 1) then
		  move(img_tcas_arrow_up_white10, (my_x + ((tcas_x10 * 100) / 1.75) + 30), (my_y - (tcas_y10 * 100) / 1.75), nil, nil)
		elseif arrow_dn_show10 == 0 and circle_show10 == 1 then
		  move(img_tcas_arrow_up_amber10, (my_x + ((tcas_x10 * 100) / 1.75) + 30), (my_y - (tcas_y10 * 100) / 1.75), nil, nil)
		elseif arrow_dn_show10 == 0 and box_show10 == 1 then
		  move(img_tcas_arrow_up_red10, (my_x + ((tcas_x10 * 100) / 1.75)  + 30), (my_y - (tcas_y10 * 100) / 1.75), nil, nil)
		end
	  -- arrow down
		if arrow_dn_show10 == 1 and (diamond_show10 == 1 or diamond_e_show10 == 1) then
		  move(img_tcas_arrow_dn_white10, (my_x + ((tcas_x10 * 100) / 1.75)  + 30), (my_y - (tcas_y10 * 100) / 1.75), nil, nil)
		elseif arrow_dn_show10 == 1 and circle_show10 == 1 then
		  move(img_tcas_arrow_dn_amber10, (my_x + ((tcas_x10 * 100) / 1.75)  + 30), (my_y - (tcas_y10 * 100) / 1.75), nil, nil)
		elseif arrow_dn_show10 == 1 and box_show10 == 1 then
		  move(img_tcas_arrow_dn_red10, (my_x + ((tcas_x10 * 100) / 1.75)  + 30), (my_y - (tcas_y10 * 100) / 1.75), nil, nil)
		end
	  -- alt text above
		if alt_dn_show10 == 0 and (diamond_show10 == 1 or diamond_e_show10 == 1) then
		  move(txt_tcas_altw_t10, (my_x + ((tcas_x10 * 100) / 1.75) - 15), (my_y - ((tcas_y10 * 100) / 1.75) -25), nil, nil)
		elseif alt_dn_show10 == 0 and circle_show10 == 1 then
		  move(txt_tcas_alta_t10, (my_x + ((tcas_x10 * 100) / 1.75) - 15), (my_y - ((tcas_y10 * 100) / 1.75) -25), nil, nil)
		elseif alt_dn_show10 == 0 and box_show10 == 1 then
		  move(txt_tcas_altr_t10, (my_x + ((tcas_x10 * 100) / 1.75) - 15), (my_y - ((tcas_y10 * 100) / 1.75) -25), nil, nil)
		end
	  -- alt text underneath
		if alt_dn_show10 == 1 and (diamond_show10 == 1 or diamond_e_show10 == 1) then
		  move(txt_tcas_altw_b10, (my_x + ((tcas_x10 * 100) / 1.75) - 15), (my_y - ((tcas_y10 * 100) / 1.75) +35), nil, nil)
		elseif alt_dn_show10 == 1 and circle_show10 == 1 then
		  move(txt_tcas_alta_b10, (my_x + ((tcas_x10 * 100) / 1.75) - 15), (my_y - ((tcas_y10 * 100) / 1.75) +25), nil, nil)
		elseif alt_dn_show10 == 1 and box_show10 == 1 then
		  move(txt_tcas_altr_b10, (my_x + ((tcas_x10 * 100) / 1.75) - 15), (my_y - ((tcas_y10 * 100) / 1.75) +25), nil, nil)
		end
	  end
	end
	xpl_dataref_subscribe(  "laminar/B738/EFIS/tcas_on", "INT",
							"laminar/B738/EFIS/tcas_show", "INT",
							"laminar/B738/EFIS/tcas_show10", "INT",
							"laminar/B738/TCAS/alt_dn_show10", "INT",
							"laminar/B738/TCAS/alt_up_show10", "INT",
							"laminar/B738/TCAS/arrow_dn_show10", "INT",
							"laminar/B738/TCAS/arrow_up_show10", "INT",
							"laminar/B738/TCAS/box_show10", "INT",
							"laminar/B738/TCAS/circle_show10", "INT",
							"laminar/B738/TCAS/diamond_e_show10", "INT",
							"laminar/B738/TCAS/diamond_show10", "INT",
							"laminar/B738/TCAS/alt10", "STRING",
							"laminar/B738/TCAS/alt_dn_show10", "INT",
							"laminar/B738/TCAS/x10", "FLOAT",
							"laminar/B738/TCAS/y10", "FLOAT" , tcas_show10)
				
	function tcas_show11(tcas_on,tcas_show,tcas_show11,alt_dn_show11,alt_up_show11,arrow_dn_show11,arrow_up_show11,box_show11,circle_show11,diamond_e_show11,diamond_show11,alt11,alt_dn_show11,tcas_x11,tcas_y11)

	  txt_set(txt_tcas_altw_t11, alt11)
	  txt_set(txt_tcas_altw_b11, alt11)
	  txt_set(txt_tcas_alta_t11, alt11)
	  txt_set(txt_tcas_alta_b11, alt11)
	  txt_set(txt_tcas_altr_t11, alt11)
	  txt_set(txt_tcas_altr_b11, alt11)
	  
	  local my_x = 400 - (21 / 2)
	  local my_y = 641.36 - (21 / 2)
	  
	--white11
	  visible(img_tcas_diamond11, tcas_on == 1 and tcas_show  == 1  and tcas_show11 == 1 and diamond_show11 == 1)
	  visible(img_tcas_diamond_e11, tcas_on == 1 and tcas_show  == 1  and tcas_show11 == 1 and diamond_e_show11 == 1)
	  visible(img_tcas_arrow_up_white11, tcas_on == 1 and tcas_show  == 1 and tcas_show11 == 1 and arrow_up_show11 == 1 and (diamond_show11 == 1 or diamond_e_show11 == 1))
	  visible(img_tcas_arrow_dn_white11, tcas_on == 1 and tcas_show  == 1 and tcas_show11 == 1 and arrow_dn_show11 == 1 and (diamond_show11 == 1 or diamond_e_show11 == 1))
	  visible(txt_tcas_altw_t11, tcas_on == 1 and tcas_show  == 1  and tcas_show11 == 1 and alt_dn_show11 == 0 and (diamond_show11 == 1 or diamond_e_show11 == 1))
	  visible(txt_tcas_altw_b11, tcas_on == 1 and tcas_show  == 1  and tcas_show11 == 1 and alt_dn_show11 == 1 and (diamond_show11 == 1 or diamond_e_show11 == 1))
	--amber11
	  visible(img_tcas_circle11, tcas_on == 1 and tcas_show  == 1  and tcas_show11 == 1 and circle_show11 == 1)
	  visible(img_tcas_arrow_up_amber11, tcas_on == 1 and tcas_show  == 1 and tcas_show11 == 1 and arrow_up_show11 == 1 and circle_show11 == 1)
	  visible(img_tcas_arrow_dn_amber11, tcas_on == 1 and tcas_show  == 1 and tcas_show11 == 1 and arrow_dn_show11 == 1 and circle_show11 == 1)
	  visible(txt_tcas_alta_t11, tcas_on == 1 and tcas_show  == 1  and tcas_show11 == 1 and alt_dn_show11 == 0 and circle_show11 == 1)
	  visible(txt_tcas_alta_b11, tcas_on == 1 and tcas_show  == 1  and tcas_show11 == 1 and alt_dn_show11 == 1 and circle_show11 == 1)
	--red11
	  visible(img_tcas_box11, tcas_on == 1 and tcas_show  == 1  and tcas_show11 == 1 and box_show11 == 1)
	  visible(img_tcas_arrow_up_red11, tcas_on == 1 and tcas_show  == 1  and tcas_show11 == 1 and arrow_up_show11 == 1 and box_show11 == 1)
	  visible(img_tcas_arrow_dn_red11, tcas_on == 1 and tcas_show  == 1  and tcas_show11 == 1 and arrow_dn_show11 == 1 and box_show11 == 1)
	  visible(txt_tcas_altr_t11, tcas_on == 1 and tcas_show  == 1  and tcas_show11 == 1 and alt_dn_show11 == 0 and box_show11 == 1)
	  visible(txt_tcas_altr_b11, tcas_on == 1 and tcas_show  == 1  and tcas_show11 == 1 and alt_dn_show11 == 1 and box_show11 == 1)
	--if statements
	  if tcas_on == 1 and tcas_show  == 1  and tcas_show11 == 1 then
	  -- icon
		if diamond_show11 == 1 then
		  move(img_tcas_diamond11, my_x + ((tcas_x11 * 100) / 1.75), my_y - ((tcas_y11 * 100) / 1.75), nil, nil)
		elseif diamond_e_show11 == 1 then
		  move(img_tcas_diamond_e11, my_x + ((tcas_x11 * 100) / 1.75), my_y - ((tcas_y11 * 100) / 1.75), nil, nil)
		elseif circle_show11 == 1 then
		  move(img_tcas_circle11, my_x + ((tcas_x11 * 100) / 1.75), my_y - ((tcas_y11 * 100) / 1.75), nil, nil)
		elseif box_show11 == 1 then
		  move(img_tcas_box11, my_x + ((tcas_x11 * 100) / 1.75), my_y - ((tcas_y11 * 100) / 1.75), nil, nil)
		end
	  -- arrow up
		if arrow_dn_show11 == 0 and (diamond_show11 == 1 or diamond_e_show11 == 1) then
		  move(img_tcas_arrow_up_white11, (my_x + ((tcas_x11 * 100) / 1.75) + 30), (my_y - (tcas_y11 * 100) / 1.75), nil, nil)
		elseif arrow_dn_show11 == 0 and circle_show11 == 1 then
		  move(img_tcas_arrow_up_amber11, (my_x + ((tcas_x11 * 100) / 1.75) + 30), (my_y - (tcas_y11 * 100) / 1.75), nil, nil)
		elseif arrow_dn_show11 == 0 and box_show11 == 1 then
		  move(img_tcas_arrow_up_red11, (my_x + ((tcas_x11 * 100) / 1.75)  + 30), (my_y - (tcas_y11 * 100) / 1.75), nil, nil)
		end
	  -- arrow down
		if arrow_dn_show11 == 1 and (diamond_show11 == 1 or diamond_e_show11 == 1) then
		  move(img_tcas_arrow_dn_white11, (my_x + ((tcas_x11 * 100) / 1.75)  + 30), (my_y - (tcas_y11 * 100) / 1.75), nil, nil)
		elseif arrow_dn_show11 == 1 and circle_show11 == 1 then
		  move(img_tcas_arrow_dn_amber11, (my_x + ((tcas_x11 * 100) / 1.75)  + 30), (my_y - (tcas_y11 * 100) / 1.75), nil, nil)
		elseif arrow_dn_show11 == 1 and box_show11 == 1 then
		  move(img_tcas_arrow_dn_red11, (my_x + ((tcas_x11 * 100) / 1.75)  + 30), (my_y - (tcas_y11 * 100) / 1.75), nil, nil)
		end
	  -- alt text above
		if alt_dn_show11 == 0 and (diamond_show11 == 1 or diamond_e_show11 == 1) then
		  move(txt_tcas_altw_t11, (my_x + ((tcas_x11 * 100) / 1.75) - 15), (my_y - ((tcas_y11 * 100) / 1.75) -25), nil, nil)
		elseif alt_dn_show11 == 0 and circle_show11 == 1 then
		  move(txt_tcas_alta_t11, (my_x + ((tcas_x11 * 100) / 1.75) - 15), (my_y - ((tcas_y11 * 100) / 1.75) -25), nil, nil)
		elseif alt_dn_show11 == 0 and box_show11 == 1 then
		  move(txt_tcas_altr_t11, (my_x + ((tcas_x11 * 100) / 1.75) - 15), (my_y - ((tcas_y11 * 100) / 1.75) -25), nil, nil)
		end
	  -- alt text underneath
		if alt_dn_show11 == 1 and (diamond_show11 == 1 or diamond_e_show11 == 1) then
		  move(txt_tcas_altw_b11, (my_x + ((tcas_x11 * 100) / 1.75) - 15), (my_y - ((tcas_y11 * 100) / 1.75) +35), nil, nil)
		elseif alt_dn_show11 == 1 and circle_show11 == 1 then
		  move(txt_tcas_alta_b11, (my_x + ((tcas_x11 * 100) / 1.75) - 15), (my_y - ((tcas_y11 * 100) / 1.75) +25), nil, nil)
		elseif alt_dn_show11 == 1 and box_show11 == 1 then
		  move(txt_tcas_altr_b11, (my_x + ((tcas_x11 * 100) / 1.75) - 15), (my_y - ((tcas_y11 * 100) / 1.75) +25), nil, nil)
		end
	  end
	end
	xpl_dataref_subscribe(  "laminar/B738/EFIS/tcas_on", "INT",
							"laminar/B738/EFIS/tcas_show", "INT",
							"laminar/B738/EFIS/tcas_show11", "INT",
							"laminar/B738/TCAS/alt_dn_show11", "INT",
							"laminar/B738/TCAS/alt_up_show11", "INT",
							"laminar/B738/TCAS/arrow_dn_show11", "INT",
							"laminar/B738/TCAS/arrow_up_show11", "INT",
							"laminar/B738/TCAS/box_show11", "INT",
							"laminar/B738/TCAS/circle_show11", "INT",
							"laminar/B738/TCAS/diamond_e_show11", "INT",
							"laminar/B738/TCAS/diamond_show11", "INT",
							"laminar/B738/TCAS/alt11", "STRING",
							"laminar/B738/TCAS/alt_dn_show11", "INT",
							"laminar/B738/TCAS/x11", "FLOAT",
							"laminar/B738/TCAS/y11", "FLOAT" , tcas_show11)
				
	function tcas_show12(tcas_on,tcas_show,tcas_show12,alt_dn_show12,alt_up_show12,arrow_dn_show12,arrow_up_show12,box_show12,circle_show12,diamond_e_show12,diamond_show12,alt12,alt_dn_show12,tcas_x12,tcas_y12)

	  txt_set(txt_tcas_altw_t12, alt12)
	  txt_set(txt_tcas_altw_b12, alt12)
	  txt_set(txt_tcas_alta_t12, alt12)
	  txt_set(txt_tcas_alta_b12, alt12)
	  txt_set(txt_tcas_altr_t12, alt12)
	  txt_set(txt_tcas_altr_b12, alt12)
	  
	  local my_x = 400 - (21 / 2)
	  local my_y = 641.36 - (21 / 2)
	  
	--white12
	  visible(img_tcas_diamond12, tcas_on == 1 and tcas_show  == 1  and tcas_show12 == 1 and diamond_show12 == 1)
	  visible(img_tcas_diamond_e12, tcas_on == 1 and tcas_show  == 1  and tcas_show12 == 1 and diamond_e_show12 == 1)
	  visible(img_tcas_arrow_up_white12, tcas_on == 1 and tcas_show  == 1 and tcas_show12 == 1 and arrow_up_show12 == 1 and (diamond_show12 == 1 or diamond_e_show12 == 1))
	  visible(img_tcas_arrow_dn_white12, tcas_on == 1 and tcas_show  == 1 and tcas_show12 == 1 and arrow_dn_show12 == 1 and (diamond_show12 == 1 or diamond_e_show12 == 1))
	  visible(txt_tcas_altw_t12, tcas_on == 1 and tcas_show  == 1  and tcas_show12 == 1 and alt_dn_show12 == 0 and (diamond_show12 == 1 or diamond_e_show12 == 1))
	  visible(txt_tcas_altw_b12, tcas_on == 1 and tcas_show  == 1  and tcas_show12 == 1 and alt_dn_show12 == 1 and (diamond_show12 == 1 or diamond_e_show12 == 1))
	--amber12
	  visible(img_tcas_circle12, tcas_on == 1 and tcas_show  == 1  and tcas_show12 == 1 and circle_show12 == 1)
	  visible(img_tcas_arrow_up_amber12, tcas_on == 1 and tcas_show  == 1 and tcas_show12 == 1 and arrow_up_show12 == 1 and circle_show12 == 1)
	  visible(img_tcas_arrow_dn_amber12, tcas_on == 1 and tcas_show  == 1 and tcas_show12 == 1 and arrow_dn_show12 == 1 and circle_show12 == 1)
	  visible(txt_tcas_alta_t12, tcas_on == 1 and tcas_show  == 1  and tcas_show12 == 1 and alt_dn_show12 == 0 and circle_show12 == 1)
	  visible(txt_tcas_alta_b12, tcas_on == 1 and tcas_show  == 1  and tcas_show12 == 1 and alt_dn_show12 == 1 and circle_show12 == 1)
	--red12
	  visible(img_tcas_box12, tcas_on == 1 and tcas_show  == 1  and tcas_show12 == 1 and box_show12 == 1)
	  visible(img_tcas_arrow_up_red12, tcas_on == 1 and tcas_show  == 1  and tcas_show12 == 1 and arrow_up_show12 == 1 and box_show12 == 1)
	  visible(img_tcas_arrow_dn_red12, tcas_on == 1 and tcas_show  == 1  and tcas_show12 == 1 and arrow_dn_show12 == 1 and box_show12 == 1)
	  visible(txt_tcas_altr_t12, tcas_on == 1 and tcas_show  == 1  and tcas_show12 == 1 and alt_dn_show12 == 0 and box_show12 == 1)
	  visible(txt_tcas_altr_b12, tcas_on == 1 and tcas_show  == 1  and tcas_show12 == 1 and alt_dn_show12 == 1 and box_show12 == 1)
	--if statements
	  if tcas_on == 1 and tcas_show  == 1  and tcas_show12 == 1 then
	  -- icon
		if diamond_show12 == 1 then
		  move(img_tcas_diamond12, my_x + ((tcas_x12 * 100) / 1.75), my_y - ((tcas_y12 * 100) / 1.75), nil, nil)
		elseif diamond_e_show12 == 1 then
		  move(img_tcas_diamond_e12, my_x + ((tcas_x12 * 100) / 1.75), my_y - ((tcas_y12 * 100) / 1.75), nil, nil)
		elseif circle_show12 == 1 then
		  move(img_tcas_circle12, my_x + ((tcas_x12 * 100) / 1.75), my_y - ((tcas_y12 * 100) / 1.75), nil, nil)
		elseif box_show12 == 1 then
		  move(img_tcas_box12, my_x + ((tcas_x12 * 100) / 1.75), my_y - ((tcas_y12 * 100) / 1.75), nil, nil)
		end
	  -- arrow up
		if arrow_dn_show12 == 0 and (diamond_show12 == 1 or diamond_e_show12 == 1) then
		  move(img_tcas_arrow_up_white12, (my_x + ((tcas_x12 * 100) / 1.75) + 30), (my_y - (tcas_y12 * 100) / 1.75), nil, nil)
		elseif arrow_dn_show12 == 0 and circle_show12 == 1 then
		  move(img_tcas_arrow_up_amber12, (my_x + ((tcas_x12 * 100) / 1.75) + 30), (my_y - (tcas_y12 * 100) / 1.75), nil, nil)
		elseif arrow_dn_show12 == 0 and box_show12 == 1 then
		  move(img_tcas_arrow_up_red12, (my_x + ((tcas_x12 * 100) / 1.75)  + 30), (my_y - (tcas_y12 * 100) / 1.75), nil, nil)
		end
	  -- arrow down
		if arrow_dn_show12 == 1 and (diamond_show12 == 1 or diamond_e_show12 == 1) then
		  move(img_tcas_arrow_dn_white12, (my_x + ((tcas_x12 * 100) / 1.75)  + 30), (my_y - (tcas_y12 * 100) / 1.75), nil, nil)
		elseif arrow_dn_show12 == 1 and circle_show12 == 1 then
		  move(img_tcas_arrow_dn_amber12, (my_x + ((tcas_x12 * 100) / 1.75)  + 30), (my_y - (tcas_y12 * 100) / 1.75), nil, nil)
		elseif arrow_dn_show12 == 1 and box_show12 == 1 then
		  move(img_tcas_arrow_dn_red12, (my_x + ((tcas_x12 * 100) / 1.75)  + 30), (my_y - (tcas_y12 * 100) / 1.75), nil, nil)
		end
	  -- alt text above
		if alt_dn_show12 == 0 and (diamond_show12 == 1 or diamond_e_show12 == 1) then
		  move(txt_tcas_altw_t12, (my_x + ((tcas_x12 * 100) / 1.75) - 15), (my_y - ((tcas_y12 * 100) / 1.75) -25), nil, nil)
		elseif alt_dn_show12 == 0 and circle_show12 == 1 then
		  move(txt_tcas_alta_t12, (my_x + ((tcas_x12 * 100) / 1.75) - 15), (my_y - ((tcas_y12 * 100) / 1.75) -25), nil, nil)
		elseif alt_dn_show12 == 0 and box_show12 == 1 then
		  move(txt_tcas_altr_t12, (my_x + ((tcas_x12 * 100) / 1.75) - 15), (my_y - ((tcas_y12 * 100) / 1.75) -25), nil, nil)
		end
	  -- alt text underneath
		if alt_dn_show12 == 1 and (diamond_show12 == 1 or diamond_e_show12 == 1) then
		  move(txt_tcas_altw_b12, (my_x + ((tcas_x12 * 100) / 1.75) - 15), (my_y - ((tcas_y12 * 100) / 1.75) +35), nil, nil)
		elseif alt_dn_show12 == 1 and circle_show12 == 1 then
		  move(txt_tcas_alta_b12, (my_x + ((tcas_x12 * 100) / 1.75) - 15), (my_y - ((tcas_y12 * 100) / 1.75) +25), nil, nil)
		elseif alt_dn_show12 == 1 and box_show12 == 1 then
		  move(txt_tcas_altr_b12, (my_x + ((tcas_x12 * 100) / 1.75) - 15), (my_y - ((tcas_y12 * 100) / 1.75) +25), nil, nil)
		end
	  end
	end
	xpl_dataref_subscribe(  "laminar/B738/EFIS/tcas_on", "INT",
							"laminar/B738/EFIS/tcas_show", "INT",
							"laminar/B738/EFIS/tcas_show12", "INT",
							"laminar/B738/TCAS/alt_dn_show12", "INT",
							"laminar/B738/TCAS/alt_up_show12", "INT",
							"laminar/B738/TCAS/arrow_dn_show12", "INT",
							"laminar/B738/TCAS/arrow_up_show12", "INT",
							"laminar/B738/TCAS/box_show12", "INT",
							"laminar/B738/TCAS/circle_show12", "INT",
							"laminar/B738/TCAS/diamond_e_show12", "INT",
							"laminar/B738/TCAS/diamond_show12", "INT",
							"laminar/B738/TCAS/alt12", "STRING",
							"laminar/B738/TCAS/alt_dn_show12", "INT",
							"laminar/B738/TCAS/x12", "FLOAT",
							"laminar/B738/TCAS/y12", "FLOAT" , tcas_show12)
				
	function tcas_show13(tcas_on,tcas_show,tcas_show13,alt_dn_show13,alt_up_show13,arrow_dn_show13,arrow_up_show13,box_show13,circle_show13,diamond_e_show13,diamond_show13,alt13,alt_dn_show13,tcas_x13,tcas_y13)

	  txt_set(txt_tcas_altw_t13, alt13)
	  txt_set(txt_tcas_altw_b13, alt13)
	  txt_set(txt_tcas_alta_t13, alt13)
	  txt_set(txt_tcas_alta_b13, alt13)
	  txt_set(txt_tcas_altr_t13, alt13)
	  txt_set(txt_tcas_altr_b13, alt13)
	  
	  local my_x = 400 - (21 / 2)
	  local my_y = 641.36 - (21 / 2)
	  
	--white13
	  visible(img_tcas_diamond13, tcas_on == 1 and tcas_show  == 1  and tcas_show13 == 1 and diamond_show13 == 1)
	  visible(img_tcas_diamond_e13, tcas_on == 1 and tcas_show  == 1  and tcas_show13 == 1 and diamond_e_show13 == 1)
	  visible(img_tcas_arrow_up_white13, tcas_on == 1 and tcas_show  == 1 and tcas_show13 == 1 and arrow_up_show13 == 1 and (diamond_show13 == 1 or diamond_e_show13 == 1))
	  visible(img_tcas_arrow_dn_white13, tcas_on == 1 and tcas_show  == 1 and tcas_show13 == 1 and arrow_dn_show13 == 1 and (diamond_show13 == 1 or diamond_e_show13 == 1))
	  visible(txt_tcas_altw_t13, tcas_on == 1 and tcas_show  == 1  and tcas_show13 == 1 and alt_dn_show13 == 0 and (diamond_show13 == 1 or diamond_e_show13 == 1))
	  visible(txt_tcas_altw_b13, tcas_on == 1 and tcas_show  == 1  and tcas_show13 == 1 and alt_dn_show13 == 1 and (diamond_show13 == 1 or diamond_e_show13 == 1))
	--amber13
	  visible(img_tcas_circle13, tcas_on == 1 and tcas_show  == 1  and tcas_show13 == 1 and circle_show13 == 1)
	  visible(img_tcas_arrow_up_amber13, tcas_on == 1 and tcas_show  == 1 and tcas_show13 == 1 and arrow_up_show13 == 1 and circle_show13 == 1)
	  visible(img_tcas_arrow_dn_amber13, tcas_on == 1 and tcas_show  == 1 and tcas_show13 == 1 and arrow_dn_show13 == 1 and circle_show13 == 1)
	  visible(txt_tcas_alta_t13, tcas_on == 1 and tcas_show  == 1  and tcas_show13 == 1 and alt_dn_show13 == 0 and circle_show13 == 1)
	  visible(txt_tcas_alta_b13, tcas_on == 1 and tcas_show  == 1  and tcas_show13 == 1 and alt_dn_show13 == 1 and circle_show13 == 1)
	--red13
	  visible(img_tcas_box13, tcas_on == 1 and tcas_show  == 1  and tcas_show13 == 1 and box_show13 == 1)
	  visible(img_tcas_arrow_up_red13, tcas_on == 1 and tcas_show  == 1  and tcas_show13 == 1 and arrow_up_show13 == 1 and box_show13 == 1)
	  visible(img_tcas_arrow_dn_red13, tcas_on == 1 and tcas_show  == 1  and tcas_show13 == 1 and arrow_dn_show13 == 1 and box_show13 == 1)
	  visible(txt_tcas_altr_t13, tcas_on == 1 and tcas_show  == 1  and tcas_show13 == 1 and alt_dn_show13 == 0 and box_show13 == 1)
	  visible(txt_tcas_altr_b13, tcas_on == 1 and tcas_show  == 1  and tcas_show13 == 1 and alt_dn_show13 == 1 and box_show13 == 1)
	--if statements
	  if tcas_on == 1 and tcas_show  == 1  and tcas_show13 == 1 then
	  -- icon
		if diamond_show13 == 1 then
		  move(img_tcas_diamond13, my_x + ((tcas_x13 * 100) / 1.75), my_y - ((tcas_y13 * 100) / 1.75), nil, nil)
		elseif diamond_e_show13 == 1 then
		  move(img_tcas_diamond_e13, my_x + ((tcas_x13 * 100) / 1.75), my_y - ((tcas_y13 * 100) / 1.75), nil, nil)
		elseif circle_show13 == 1 then
		  move(img_tcas_circle13, my_x + ((tcas_x13 * 100) / 1.75), my_y - ((tcas_y13 * 100) / 1.75), nil, nil)
		elseif box_show13 == 1 then
		  move(img_tcas_box13, my_x + ((tcas_x13 * 100) / 1.75), my_y - ((tcas_y13 * 100) / 1.75), nil, nil)
		end
	  -- arrow up
		if arrow_dn_show13 == 0 and (diamond_show13 == 1 or diamond_e_show13 == 1) then
		  move(img_tcas_arrow_up_white13, (my_x + ((tcas_x13 * 100) / 1.75) + 30), (my_y - (tcas_y13 * 100) / 1.75), nil, nil)
		elseif arrow_dn_show13 == 0 and circle_show13 == 1 then
		  move(img_tcas_arrow_up_amber13, (my_x + ((tcas_x13 * 100) / 1.75) + 30), (my_y - (tcas_y13 * 100) / 1.75), nil, nil)
		elseif arrow_dn_show13 == 0 and box_show13 == 1 then
		  move(img_tcas_arrow_up_red13, (my_x + ((tcas_x13 * 100) / 1.75)  + 30), (my_y - (tcas_y13 * 100) / 1.75), nil, nil)
		end
	  -- arrow down
		if arrow_dn_show13 == 1 and (diamond_show13 == 1 or diamond_e_show13 == 1) then
		  move(img_tcas_arrow_dn_white13, (my_x + ((tcas_x13 * 100) / 1.75)  + 30), (my_y - (tcas_y13 * 100) / 1.75), nil, nil)
		elseif arrow_dn_show13 == 1 and circle_show13 == 1 then
		  move(img_tcas_arrow_dn_amber13, (my_x + ((tcas_x13 * 100) / 1.75)  + 30), (my_y - (tcas_y13 * 100) / 1.75), nil, nil)
		elseif arrow_dn_show13 == 1 and box_show13 == 1 then
		  move(img_tcas_arrow_dn_red13, (my_x + ((tcas_x13 * 100) / 1.75)  + 30), (my_y - (tcas_y13 * 100) / 1.75), nil, nil)
		end
	  -- alt text above
		if alt_dn_show13 == 0 and (diamond_show13 == 1 or diamond_e_show13 == 1) then
		  move(txt_tcas_altw_t13, (my_x + ((tcas_x13 * 100) / 1.75) - 15), (my_y - ((tcas_y13 * 100) / 1.75) -25), nil, nil)
		elseif alt_dn_show13 == 0 and circle_show13 == 1 then
		  move(txt_tcas_alta_t13, (my_x + ((tcas_x13 * 100) / 1.75) - 15), (my_y - ((tcas_y13 * 100) / 1.75) -25), nil, nil)
		elseif alt_dn_show13 == 0 and box_show13 == 1 then
		  move(txt_tcas_altr_t13, (my_x + ((tcas_x13 * 100) / 1.75) - 15), (my_y - ((tcas_y13 * 100) / 1.75) -25), nil, nil)
		end
	  -- alt text underneath
		if alt_dn_show13 == 1 and (diamond_show13 == 1 or diamond_e_show13 == 1) then
		  move(txt_tcas_altw_b13, (my_x + ((tcas_x13 * 100) / 1.75) - 15), (my_y - ((tcas_y13 * 100) / 1.75) +35), nil, nil)
		elseif alt_dn_show13 == 1 and circle_show13 == 1 then
		  move(txt_tcas_alta_b13, (my_x + ((tcas_x13 * 100) / 1.75) - 15), (my_y - ((tcas_y13 * 100) / 1.75) +25), nil, nil)
		elseif alt_dn_show13 == 1 and box_show13 == 1 then
		  move(txt_tcas_altr_b13, (my_x + ((tcas_x13 * 100) / 1.75) - 15), (my_y - ((tcas_y13 * 100) / 1.75) +25), nil, nil)
		end
	  end
	end
	xpl_dataref_subscribe(  "laminar/B738/EFIS/tcas_on", "INT",
							"laminar/B738/EFIS/tcas_show", "INT",
							"laminar/B738/EFIS/tcas_show13", "INT",
							"laminar/B738/TCAS/alt_dn_show13", "INT",
							"laminar/B738/TCAS/alt_up_show13", "INT",
							"laminar/B738/TCAS/arrow_dn_show13", "INT",
							"laminar/B738/TCAS/arrow_up_show13", "INT",
							"laminar/B738/TCAS/box_show13", "INT",
							"laminar/B738/TCAS/circle_show13", "INT",
							"laminar/B738/TCAS/diamond_e_show13", "INT",
							"laminar/B738/TCAS/diamond_show13", "INT",
							"laminar/B738/TCAS/alt13", "STRING",
							"laminar/B738/TCAS/alt_dn_show13", "INT",
							"laminar/B738/TCAS/x13", "FLOAT",
							"laminar/B738/TCAS/y13", "FLOAT" , tcas_show13)
				
	function tcas_show14(tcas_on,tcas_show,tcas_show14,alt_dn_show14,alt_up_show14,arrow_dn_show14,arrow_up_show14,box_show14,circle_show14,diamond_e_show14,diamond_show14,alt14,alt_dn_show14,tcas_x14,tcas_y14)

	  txt_set(txt_tcas_altw_t14, alt14)
	  txt_set(txt_tcas_altw_b14, alt14)
	  txt_set(txt_tcas_alta_t14, alt14)
	  txt_set(txt_tcas_alta_b14, alt14)
	  txt_set(txt_tcas_altr_t14, alt14)
	  txt_set(txt_tcas_altr_b14, alt14)
	  
	  local my_x = 400 - (21 / 2)
	  local my_y = 641.36 - (21 / 2)
	  
	--white14
	  visible(img_tcas_diamond14, tcas_on == 1 and tcas_show  == 1  and tcas_show14 == 1 and diamond_show14 == 1)
	  visible(img_tcas_diamond_e14, tcas_on == 1 and tcas_show  == 1  and tcas_show14 == 1 and diamond_e_show14 == 1)
	  visible(img_tcas_arrow_up_white14, tcas_on == 1 and tcas_show  == 1 and tcas_show14 == 1 and arrow_up_show14 == 1 and (diamond_show14 == 1 or diamond_e_show14 == 1))
	  visible(img_tcas_arrow_dn_white14, tcas_on == 1 and tcas_show  == 1 and tcas_show14 == 1 and arrow_dn_show14 == 1 and (diamond_show14 == 1 or diamond_e_show14 == 1))
	  visible(txt_tcas_altw_t14, tcas_on == 1 and tcas_show  == 1  and tcas_show14 == 1 and alt_dn_show14 == 0 and (diamond_show14 == 1 or diamond_e_show14 == 1))
	  visible(txt_tcas_altw_b14, tcas_on == 1 and tcas_show  == 1  and tcas_show14 == 1 and alt_dn_show14 == 1 and (diamond_show14 == 1 or diamond_e_show14 == 1))
	--amber14
	  visible(img_tcas_circle14, tcas_on == 1 and tcas_show  == 1  and tcas_show14 == 1 and circle_show14 == 1)
	  visible(img_tcas_arrow_up_amber14, tcas_on == 1 and tcas_show  == 1 and tcas_show14 == 1 and arrow_up_show14 == 1 and circle_show14 == 1)
	  visible(img_tcas_arrow_dn_amber14, tcas_on == 1 and tcas_show  == 1 and tcas_show14 == 1 and arrow_dn_show14 == 1 and circle_show14 == 1)
	  visible(txt_tcas_alta_t14, tcas_on == 1 and tcas_show  == 1  and tcas_show14 == 1 and alt_dn_show14 == 0 and circle_show14 == 1)
	  visible(txt_tcas_alta_b14, tcas_on == 1 and tcas_show  == 1  and tcas_show14 == 1 and alt_dn_show14 == 1 and circle_show14 == 1)
	--red14
	  visible(img_tcas_box14, tcas_on == 1 and tcas_show  == 1  and tcas_show14 == 1 and box_show14 == 1)
	  visible(img_tcas_arrow_up_red14, tcas_on == 1 and tcas_show  == 1  and tcas_show14 == 1 and arrow_up_show14 == 1 and box_show14 == 1)
	  visible(img_tcas_arrow_dn_red14, tcas_on == 1 and tcas_show  == 1  and tcas_show14 == 1 and arrow_dn_show14 == 1 and box_show14 == 1)
	  visible(txt_tcas_altr_t14, tcas_on == 1 and tcas_show  == 1  and tcas_show14 == 1 and alt_dn_show14 == 0 and box_show14 == 1)
	  visible(txt_tcas_altr_b14, tcas_on == 1 and tcas_show  == 1  and tcas_show14 == 1 and alt_dn_show14 == 1 and box_show14 == 1)
	--if statements
	  if tcas_on == 1 and tcas_show  == 1  and tcas_show14 == 1 then
	  -- icon
		if diamond_show14 == 1 then
		  move(img_tcas_diamond14, my_x + ((tcas_x14 * 100) / 1.75), my_y - ((tcas_y14 * 100) / 1.75), nil, nil)
		elseif diamond_e_show14 == 1 then
		  move(img_tcas_diamond_e14, my_x + ((tcas_x14 * 100) / 1.75), my_y - ((tcas_y14 * 100) / 1.75), nil, nil)
		elseif circle_show14 == 1 then
		  move(img_tcas_circle14, my_x + ((tcas_x14 * 100) / 1.75), my_y - ((tcas_y14 * 100) / 1.75), nil, nil)
		elseif box_show14 == 1 then
		  move(img_tcas_box14, my_x + ((tcas_x14 * 100) / 1.75), my_y - ((tcas_y14 * 100) / 1.75), nil, nil)
		end
	  -- arrow up
		if arrow_dn_show14 == 0 and (diamond_show14 == 1 or diamond_e_show14 == 1) then
		  move(img_tcas_arrow_up_white14, (my_x + ((tcas_x14 * 100) / 1.75) + 30), (my_y - (tcas_y14 * 100) / 1.75), nil, nil)
		elseif arrow_dn_show14 == 0 and circle_show14 == 1 then
		  move(img_tcas_arrow_up_amber14, (my_x + ((tcas_x14 * 100) / 1.75) + 30), (my_y - (tcas_y14 * 100) / 1.75), nil, nil)
		elseif arrow_dn_show14 == 0 and box_show14 == 1 then
		  move(img_tcas_arrow_up_red14, (my_x + ((tcas_x14 * 100) / 1.75)  + 30), (my_y - (tcas_y14 * 100) / 1.75), nil, nil)
		end
	  -- arrow down
		if arrow_dn_show14 == 1 and (diamond_show14 == 1 or diamond_e_show14 == 1) then
		  move(img_tcas_arrow_dn_white14, (my_x + ((tcas_x14 * 100) / 1.75)  + 30), (my_y - (tcas_y14 * 100) / 1.75), nil, nil)
		elseif arrow_dn_show14 == 1 and circle_show14 == 1 then
		  move(img_tcas_arrow_dn_amber14, (my_x + ((tcas_x14 * 100) / 1.75)  + 30), (my_y - (tcas_y14 * 100) / 1.75), nil, nil)
		elseif arrow_dn_show14 == 1 and box_show14 == 1 then
		  move(img_tcas_arrow_dn_red14, (my_x + ((tcas_x14 * 100) / 1.75)  + 30), (my_y - (tcas_y14 * 100) / 1.75), nil, nil)
		end
	  -- alt text above
		if alt_dn_show14 == 0 and (diamond_show14 == 1 or diamond_e_show14 == 1) then
		  move(txt_tcas_altw_t14, (my_x + ((tcas_x14 * 100) / 1.75) - 15), (my_y - ((tcas_y14 * 100) / 1.75) -25), nil, nil)
		elseif alt_dn_show14 == 0 and circle_show14 == 1 then
		  move(txt_tcas_alta_t14, (my_x + ((tcas_x14 * 100) / 1.75) - 15), (my_y - ((tcas_y14 * 100) / 1.75) -25), nil, nil)
		elseif alt_dn_show14 == 0 and box_show14 == 1 then
		  move(txt_tcas_altr_t14, (my_x + ((tcas_x14 * 100) / 1.75) - 15), (my_y - ((tcas_y14 * 100) / 1.75) -25), nil, nil)
		end
	  -- alt text underneath
		if alt_dn_show14 == 1 and (diamond_show14 == 1 or diamond_e_show14 == 1) then
		  move(txt_tcas_altw_b14, (my_x + ((tcas_x14 * 100) / 1.75) - 15), (my_y - ((tcas_y14 * 100) / 1.75) +35), nil, nil)
		elseif alt_dn_show14 == 1 and circle_show14 == 1 then
		  move(txt_tcas_alta_b14, (my_x + ((tcas_x14 * 100) / 1.75) - 15), (my_y - ((tcas_y14 * 100) / 1.75) +25), nil, nil)
		elseif alt_dn_show14 == 1 and box_show14 == 1 then
		  move(txt_tcas_altr_b14, (my_x + ((tcas_x14 * 100) / 1.75) - 15), (my_y - ((tcas_y14 * 100) / 1.75) +25), nil, nil)
		end
	  end
	end
	xpl_dataref_subscribe(  "laminar/B738/EFIS/tcas_on", "INT",
							"laminar/B738/EFIS/tcas_show", "INT",
							"laminar/B738/EFIS/tcas_show14", "INT",
							"laminar/B738/TCAS/alt_dn_show14", "INT",
							"laminar/B738/TCAS/alt_up_show14", "INT",
							"laminar/B738/TCAS/arrow_dn_show14", "INT",
							"laminar/B738/TCAS/arrow_up_show14", "INT",
							"laminar/B738/TCAS/box_show14", "INT",
							"laminar/B738/TCAS/circle_show14", "INT",
							"laminar/B738/TCAS/diamond_e_show14", "INT",
							"laminar/B738/TCAS/diamond_show14", "INT",
							"laminar/B738/TCAS/alt14", "STRING",
							"laminar/B738/TCAS/alt_dn_show14", "INT",
							"laminar/B738/TCAS/x14", "FLOAT",
							"laminar/B738/TCAS/y14", "FLOAT" , tcas_show14)
				
	function tcas_show15(tcas_on,tcas_show,tcas_show15,alt_dn_show15,alt_up_show15,arrow_dn_show15,arrow_up_show15,box_show15,circle_show15,diamond_e_show15,diamond_show15,alt15,alt_dn_show15,tcas_x15,tcas_y15)

	  txt_set(txt_tcas_altw_t15, alt15)
	  txt_set(txt_tcas_altw_b15, alt15)
	  txt_set(txt_tcas_alta_t15, alt15)
	  txt_set(txt_tcas_alta_b15, alt15)
	  txt_set(txt_tcas_altr_t15, alt15)
	  txt_set(txt_tcas_altr_b15, alt15)
	  
	  local my_x = 400 - (21 / 2)
	  local my_y = 641.36 - (21 / 2)
	  
	--white15
	  visible(img_tcas_diamond15, tcas_on == 1 and tcas_show  == 1  and tcas_show15 == 1 and diamond_show15 == 1)
	  visible(img_tcas_diamond_e15, tcas_on == 1 and tcas_show  == 1  and tcas_show15 == 1 and diamond_e_show15 == 1)
	  visible(img_tcas_arrow_up_white15, tcas_on == 1 and tcas_show  == 1 and tcas_show15 == 1 and arrow_up_show15 == 1 and (diamond_show15 == 1 or diamond_e_show15 == 1))
	  visible(img_tcas_arrow_dn_white15, tcas_on == 1 and tcas_show  == 1 and tcas_show15 == 1 and arrow_dn_show15 == 1 and (diamond_show15 == 1 or diamond_e_show15 == 1))
	  visible(txt_tcas_altw_t15, tcas_on == 1 and tcas_show  == 1  and tcas_show15 == 1 and alt_dn_show15 == 0 and (diamond_show15 == 1 or diamond_e_show15 == 1))
	  visible(txt_tcas_altw_b15, tcas_on == 1 and tcas_show  == 1  and tcas_show15 == 1 and alt_dn_show15 == 1 and (diamond_show15 == 1 or diamond_e_show15 == 1))
	--amber15
	  visible(img_tcas_circle15, tcas_on == 1 and tcas_show  == 1  and tcas_show15 == 1 and circle_show15 == 1)
	  visible(img_tcas_arrow_up_amber15, tcas_on == 1 and tcas_show  == 1 and tcas_show15 == 1 and arrow_up_show15 == 1 and circle_show15 == 1)
	  visible(img_tcas_arrow_dn_amber15, tcas_on == 1 and tcas_show  == 1 and tcas_show15 == 1 and arrow_dn_show15 == 1 and circle_show15 == 1)
	  visible(txt_tcas_alta_t15, tcas_on == 1 and tcas_show  == 1  and tcas_show15 == 1 and alt_dn_show15 == 0 and circle_show15 == 1)
	  visible(txt_tcas_alta_b15, tcas_on == 1 and tcas_show  == 1  and tcas_show15 == 1 and alt_dn_show15 == 1 and circle_show15 == 1)
	--red15
	  visible(img_tcas_box15, tcas_on == 1 and tcas_show  == 1  and tcas_show15 == 1 and box_show15 == 1)
	  visible(img_tcas_arrow_up_red15, tcas_on == 1 and tcas_show  == 1  and tcas_show15 == 1 and arrow_up_show15 == 1 and box_show15 == 1)
	  visible(img_tcas_arrow_dn_red15, tcas_on == 1 and tcas_show  == 1  and tcas_show15 == 1 and arrow_dn_show15 == 1 and box_show15 == 1)
	  visible(txt_tcas_altr_t15, tcas_on == 1 and tcas_show  == 1  and tcas_show15 == 1 and alt_dn_show15 == 0 and box_show15 == 1)
	  visible(txt_tcas_altr_b15, tcas_on == 1 and tcas_show  == 1  and tcas_show15 == 1 and alt_dn_show15 == 1 and box_show15 == 1)
	--if statements
	  if tcas_on == 1 and tcas_show  == 1  and tcas_show15 == 1 then
	  -- icon
		if diamond_show15 == 1 then
		  move(img_tcas_diamond15, my_x + ((tcas_x15 * 100) / 1.75), my_y - ((tcas_y15 * 100) / 1.75), nil, nil)
		elseif diamond_e_show15 == 1 then
		  move(img_tcas_diamond_e15, my_x + ((tcas_x15 * 100) / 1.75), my_y - ((tcas_y15 * 100) / 1.75), nil, nil)
		elseif circle_show15 == 1 then
		  move(img_tcas_circle15, my_x + ((tcas_x15 * 100) / 1.75), my_y - ((tcas_y15 * 100) / 1.75), nil, nil)
		elseif box_show15 == 1 then
		  move(img_tcas_box15, my_x + ((tcas_x15 * 100) / 1.75), my_y - ((tcas_y15 * 100) / 1.75), nil, nil)
		end
	  -- arrow up
		if arrow_dn_show15 == 0 and (diamond_show15 == 1 or diamond_e_show15 == 1) then
		  move(img_tcas_arrow_up_white15, (my_x + ((tcas_x15 * 100) / 1.75) + 30), (my_y - (tcas_y15 * 100) / 1.75), nil, nil)
		elseif arrow_dn_show15 == 0 and circle_show15 == 1 then
		  move(img_tcas_arrow_up_amber15, (my_x + ((tcas_x15 * 100) / 1.75) + 30), (my_y - (tcas_y15 * 100) / 1.75), nil, nil)
		elseif arrow_dn_show15 == 0 and box_show15 == 1 then
		  move(img_tcas_arrow_up_red15, (my_x + ((tcas_x15 * 100) / 1.75)  + 30), (my_y - (tcas_y15 * 100) / 1.75), nil, nil)
		end
	  -- arrow down
		if arrow_dn_show15 == 1 and (diamond_show15 == 1 or diamond_e_show15 == 1) then
		  move(img_tcas_arrow_dn_white15, (my_x + ((tcas_x15 * 100) / 1.75)  + 30), (my_y - (tcas_y15 * 100) / 1.75), nil, nil)
		elseif arrow_dn_show15 == 1 and circle_show15 == 1 then
		  move(img_tcas_arrow_dn_amber15, (my_x + ((tcas_x15 * 100) / 1.75)  + 30), (my_y - (tcas_y15 * 100) / 1.75), nil, nil)
		elseif arrow_dn_show15 == 1 and box_show15 == 1 then
		  move(img_tcas_arrow_dn_red15, (my_x + ((tcas_x15 * 100) / 1.75)  + 30), (my_y - (tcas_y15 * 100) / 1.75), nil, nil)
		end
	  -- alt text above
		if alt_dn_show15 == 0 and (diamond_show15 == 1 or diamond_e_show15 == 1) then
		  move(txt_tcas_altw_t15, (my_x + ((tcas_x15 * 100) / 1.75) - 15), (my_y - ((tcas_y15 * 100) / 1.75) -25), nil, nil)
		elseif alt_dn_show15 == 0 and circle_show15 == 1 then
		  move(txt_tcas_alta_t15, (my_x + ((tcas_x15 * 100) / 1.75) - 15), (my_y - ((tcas_y15 * 100) / 1.75) -25), nil, nil)
		elseif alt_dn_show15 == 0 and box_show15 == 1 then
		  move(txt_tcas_altr_t15, (my_x + ((tcas_x15 * 100) / 1.75) - 15), (my_y - ((tcas_y15 * 100) / 1.75) -25), nil, nil)
		end
	  -- alt text underneath
		if alt_dn_show15 == 1 and (diamond_show15 == 1 or diamond_e_show15 == 1) then
		  move(txt_tcas_altw_b15, (my_x + ((tcas_x15 * 100) / 1.75) - 15), (my_y - ((tcas_y15 * 100) / 1.75) +35), nil, nil)
		elseif alt_dn_show15 == 1 and circle_show15 == 1 then
		  move(txt_tcas_alta_b15, (my_x + ((tcas_x15 * 100) / 1.75) - 15), (my_y - ((tcas_y15 * 100) / 1.75) +25), nil, nil)
		elseif alt_dn_show15 == 1 and box_show15 == 1 then
		  move(txt_tcas_altr_b15, (my_x + ((tcas_x15 * 100) / 1.75) - 15), (my_y - ((tcas_y15 * 100) / 1.75) +25), nil, nil)
		end
	  end
	end
	xpl_dataref_subscribe(  "laminar/B738/EFIS/tcas_on", "INT",
							"laminar/B738/EFIS/tcas_show", "INT",
							"laminar/B738/EFIS/tcas_show15", "INT",
							"laminar/B738/TCAS/alt_dn_show15", "INT",
							"laminar/B738/TCAS/alt_up_show15", "INT",
							"laminar/B738/TCAS/arrow_dn_show15", "INT",
							"laminar/B738/TCAS/arrow_up_show15", "INT",
							"laminar/B738/TCAS/box_show15", "INT",
							"laminar/B738/TCAS/circle_show15", "INT",
							"laminar/B738/TCAS/diamond_e_show15", "INT",
							"laminar/B738/TCAS/diamond_show15", "INT",
							"laminar/B738/TCAS/alt15", "STRING",
							"laminar/B738/TCAS/alt_dn_show15", "INT",
							"laminar/B738/TCAS/x15", "FLOAT",
							"laminar/B738/TCAS/y15", "FLOAT" , tcas_show15)
				
	function tcas_show16(tcas_on,tcas_show,tcas_show16,alt_dn_show16,alt_up_show16,arrow_dn_show16,arrow_up_show16,box_show16,circle_show16,diamond_e_show16,diamond_show16,alt16,alt_dn_show16,tcas_x16,tcas_y16)

	  txt_set(txt_tcas_altw_t16, alt16)
	  txt_set(txt_tcas_altw_b16, alt16)
	  txt_set(txt_tcas_alta_t16, alt16)
	  txt_set(txt_tcas_alta_b16, alt16)
	  txt_set(txt_tcas_altr_t16, alt16)
	  txt_set(txt_tcas_altr_b16, alt16)
	  
	  local my_x = 400 - (21 / 2)
	  local my_y = 641.36 - (21 / 2)
	  
	--white16
	  visible(img_tcas_diamond16, tcas_on == 1 and tcas_show  == 1  and tcas_show16 == 1 and diamond_show16 == 1)
	  visible(img_tcas_diamond_e16, tcas_on == 1 and tcas_show  == 1  and tcas_show16 == 1 and diamond_e_show16 == 1)
	  visible(img_tcas_arrow_up_white16, tcas_on == 1 and tcas_show  == 1 and tcas_show16 == 1 and arrow_up_show16 == 1 and (diamond_show16 == 1 or diamond_e_show16 == 1))
	  visible(img_tcas_arrow_dn_white16, tcas_on == 1 and tcas_show  == 1 and tcas_show16 == 1 and arrow_dn_show16 == 1 and (diamond_show16 == 1 or diamond_e_show16 == 1))
	  visible(txt_tcas_altw_t16, tcas_on == 1 and tcas_show  == 1  and tcas_show16 == 1 and alt_dn_show16 == 0 and (diamond_show16 == 1 or diamond_e_show16 == 1))
	  visible(txt_tcas_altw_b16, tcas_on == 1 and tcas_show  == 1  and tcas_show16 == 1 and alt_dn_show16 == 1 and (diamond_show16 == 1 or diamond_e_show16 == 1))
	--amber16
	  visible(img_tcas_circle16, tcas_on == 1 and tcas_show  == 1  and tcas_show16 == 1 and circle_show16 == 1)
	  visible(img_tcas_arrow_up_amber16, tcas_on == 1 and tcas_show  == 1 and tcas_show16 == 1 and arrow_up_show16 == 1 and circle_show16 == 1)
	  visible(img_tcas_arrow_dn_amber16, tcas_on == 1 and tcas_show  == 1 and tcas_show16 == 1 and arrow_dn_show16 == 1 and circle_show16 == 1)
	  visible(txt_tcas_alta_t16, tcas_on == 1 and tcas_show  == 1  and tcas_show16 == 1 and alt_dn_show16 == 0 and circle_show16 == 1)
	  visible(txt_tcas_alta_b16, tcas_on == 1 and tcas_show  == 1  and tcas_show16 == 1 and alt_dn_show16 == 1 and circle_show16 == 1)
	--red16
	  visible(img_tcas_box16, tcas_on == 1 and tcas_show  == 1  and tcas_show16 == 1 and box_show16 == 1)
	  visible(img_tcas_arrow_up_red16, tcas_on == 1 and tcas_show  == 1  and tcas_show16 == 1 and arrow_up_show16 == 1 and box_show16 == 1)
	  visible(img_tcas_arrow_dn_red16, tcas_on == 1 and tcas_show  == 1  and tcas_show16 == 1 and arrow_dn_show16 == 1 and box_show16 == 1)
	  visible(txt_tcas_altr_t16, tcas_on == 1 and tcas_show  == 1  and tcas_show16 == 1 and alt_dn_show16 == 0 and box_show16 == 1)
	  visible(txt_tcas_altr_b16, tcas_on == 1 and tcas_show  == 1  and tcas_show16 == 1 and alt_dn_show16 == 1 and box_show16 == 1)
	--if statements
	  if tcas_on == 1 and tcas_show  == 1  and tcas_show16 == 1 then
	  -- icon
		if diamond_show16 == 1 then
		  move(img_tcas_diamond16, my_x + ((tcas_x16 * 100) / 1.75), my_y - ((tcas_y16 * 100) / 1.75), nil, nil)
		elseif diamond_e_show16 == 1 then
		  move(img_tcas_diamond_e16, my_x + ((tcas_x16 * 100) / 1.75), my_y - ((tcas_y16 * 100) / 1.75), nil, nil)
		elseif circle_show16 == 1 then
		  move(img_tcas_circle16, my_x + ((tcas_x16 * 100) / 1.75), my_y - ((tcas_y16 * 100) / 1.75), nil, nil)
		elseif box_show16 == 1 then
		  move(img_tcas_box16, my_x + ((tcas_x16 * 100) / 1.75), my_y - ((tcas_y16 * 100) / 1.75), nil, nil)
		end
	  -- arrow up
		if arrow_dn_show16 == 0 and (diamond_show16 == 1 or diamond_e_show16 == 1) then
		  move(img_tcas_arrow_up_white16, (my_x + ((tcas_x16 * 100) / 1.75) + 30), (my_y - (tcas_y16 * 100) / 1.75), nil, nil)
		elseif arrow_dn_show16 == 0 and circle_show16 == 1 then
		  move(img_tcas_arrow_up_amber16, (my_x + ((tcas_x16 * 100) / 1.75) + 30), (my_y - (tcas_y16 * 100) / 1.75), nil, nil)
		elseif arrow_dn_show16 == 0 and box_show16 == 1 then
		  move(img_tcas_arrow_up_red16, (my_x + ((tcas_x16 * 100) / 1.75)  + 30), (my_y - (tcas_y16 * 100) / 1.75), nil, nil)
		end
	  -- arrow down
		if arrow_dn_show16 == 1 and (diamond_show16 == 1 or diamond_e_show16 == 1) then
		  move(img_tcas_arrow_dn_white16, (my_x + ((tcas_x16 * 100) / 1.75)  + 30), (my_y - (tcas_y16 * 100) / 1.75), nil, nil)
		elseif arrow_dn_show16 == 1 and circle_show16 == 1 then
		  move(img_tcas_arrow_dn_amber16, (my_x + ((tcas_x16 * 100) / 1.75)  + 30), (my_y - (tcas_y16 * 100) / 1.75), nil, nil)
		elseif arrow_dn_show16 == 1 and box_show16 == 1 then
		  move(img_tcas_arrow_dn_red16, (my_x + ((tcas_x16 * 100) / 1.75)  + 30), (my_y - (tcas_y16 * 100) / 1.75), nil, nil)
		end
	  -- alt text above
		if alt_dn_show16 == 0 and (diamond_show16 == 1 or diamond_e_show16 == 1) then
		  move(txt_tcas_altw_t16, (my_x + ((tcas_x16 * 100) / 1.75) - 15), (my_y - ((tcas_y16 * 100) / 1.75) -25), nil, nil)
		elseif alt_dn_show16 == 0 and circle_show16 == 1 then
		  move(txt_tcas_alta_t16, (my_x + ((tcas_x16 * 100) / 1.75) - 15), (my_y - ((tcas_y16 * 100) / 1.75) -25), nil, nil)
		elseif alt_dn_show16 == 0 and box_show16 == 1 then
		  move(txt_tcas_altr_t16, (my_x + ((tcas_x16 * 100) / 1.75) - 15), (my_y - ((tcas_y16 * 100) / 1.75) -25), nil, nil)
		end
	  -- alt text underneath
		if alt_dn_show16 == 1 and (diamond_show16 == 1 or diamond_e_show16 == 1) then
		  move(txt_tcas_altw_b16, (my_x + ((tcas_x16 * 100) / 1.75) - 15), (my_y - ((tcas_y16 * 100) / 1.75) +35), nil, nil)
		elseif alt_dn_show16 == 1 and circle_show16 == 1 then
		  move(txt_tcas_alta_b16, (my_x + ((tcas_x16 * 100) / 1.75) - 15), (my_y - ((tcas_y16 * 100) / 1.75) +25), nil, nil)
		elseif alt_dn_show16 == 1 and box_show16 == 1 then
		  move(txt_tcas_altr_b16, (my_x + ((tcas_x16 * 100) / 1.75) - 15), (my_y - ((tcas_y16 * 100) / 1.75) +25), nil, nil)
		end
	  end
	end
	xpl_dataref_subscribe(  "laminar/B738/EFIS/tcas_on", "INT",
							"laminar/B738/EFIS/tcas_show", "INT",
							"laminar/B738/EFIS/tcas_show16", "INT",
							"laminar/B738/TCAS/alt_dn_show16", "INT",
							"laminar/B738/TCAS/alt_up_show16", "INT",
							"laminar/B738/TCAS/arrow_dn_show16", "INT",
							"laminar/B738/TCAS/arrow_up_show16", "INT",
							"laminar/B738/TCAS/box_show16", "INT",
							"laminar/B738/TCAS/circle_show16", "INT",
							"laminar/B738/TCAS/diamond_e_show16", "INT",
							"laminar/B738/TCAS/diamond_show16", "INT",
							"laminar/B738/TCAS/alt16", "STRING",
							"laminar/B738/TCAS/alt_dn_show16", "INT",
							"laminar/B738/TCAS/x16", "FLOAT",
							"laminar/B738/TCAS/y16", "FLOAT" , tcas_show16)
				
	function tcas_show17(tcas_on,tcas_show,tcas_show17,alt_dn_show17,alt_up_show17,arrow_dn_show17,arrow_up_show17,box_show17,circle_show17,diamond_e_show17,diamond_show17,alt17,alt_dn_show17,tcas_x17,tcas_y17)

	  txt_set(txt_tcas_altw_t17, alt17)
	  txt_set(txt_tcas_altw_b17, alt17)
	  txt_set(txt_tcas_alta_t17, alt17)
	  txt_set(txt_tcas_alta_b17, alt17)
	  txt_set(txt_tcas_altr_t17, alt17)
	  txt_set(txt_tcas_altr_b17, alt17)
	  
	  local my_x = 400 - (21 / 2)
	  local my_y = 641.36 - (21 / 2)
	  
	--white17
	  visible(img_tcas_diamond17, tcas_on == 1 and tcas_show  == 1  and tcas_show17 == 1 and diamond_show17 == 1)
	  visible(img_tcas_diamond_e17, tcas_on == 1 and tcas_show  == 1  and tcas_show17 == 1 and diamond_e_show17 == 1)
	  visible(img_tcas_arrow_up_white17, tcas_on == 1 and tcas_show  == 1 and tcas_show17 == 1 and arrow_up_show17 == 1 and (diamond_show17 == 1 or diamond_e_show17 == 1))
	  visible(img_tcas_arrow_dn_white17, tcas_on == 1 and tcas_show  == 1 and tcas_show17 == 1 and arrow_dn_show17 == 1 and (diamond_show17 == 1 or diamond_e_show17 == 1))
	  visible(txt_tcas_altw_t17, tcas_on == 1 and tcas_show  == 1  and tcas_show17 == 1 and alt_dn_show17 == 0 and (diamond_show17 == 1 or diamond_e_show17 == 1))
	  visible(txt_tcas_altw_b17, tcas_on == 1 and tcas_show  == 1  and tcas_show17 == 1 and alt_dn_show17 == 1 and (diamond_show17 == 1 or diamond_e_show17 == 1))
	--amber17
	  visible(img_tcas_circle17, tcas_on == 1 and tcas_show  == 1  and tcas_show17 == 1 and circle_show17 == 1)
	  visible(img_tcas_arrow_up_amber17, tcas_on == 1 and tcas_show  == 1 and tcas_show17 == 1 and arrow_up_show17 == 1 and circle_show17 == 1)
	  visible(img_tcas_arrow_dn_amber17, tcas_on == 1 and tcas_show  == 1 and tcas_show17 == 1 and arrow_dn_show17 == 1 and circle_show17 == 1)
	  visible(txt_tcas_alta_t17, tcas_on == 1 and tcas_show  == 1  and tcas_show17 == 1 and alt_dn_show17 == 0 and circle_show17 == 1)
	  visible(txt_tcas_alta_b17, tcas_on == 1 and tcas_show  == 1  and tcas_show17 == 1 and alt_dn_show17 == 1 and circle_show17 == 1)
	--red17
	  visible(img_tcas_box17, tcas_on == 1 and tcas_show  == 1  and tcas_show17 == 1 and box_show17 == 1)
	  visible(img_tcas_arrow_up_red17, tcas_on == 1 and tcas_show  == 1  and tcas_show17 == 1 and arrow_up_show17 == 1 and box_show17 == 1)
	  visible(img_tcas_arrow_dn_red17, tcas_on == 1 and tcas_show  == 1  and tcas_show17 == 1 and arrow_dn_show17 == 1 and box_show17 == 1)
	  visible(txt_tcas_altr_t17, tcas_on == 1 and tcas_show  == 1  and tcas_show17 == 1 and alt_dn_show17 == 0 and box_show17 == 1)
	  visible(txt_tcas_altr_b17, tcas_on == 1 and tcas_show  == 1  and tcas_show17 == 1 and alt_dn_show17 == 1 and box_show17 == 1)
	--if statements
	  if tcas_on == 1 and tcas_show  == 1  and tcas_show17 == 1 then
	  -- icon
		if diamond_show17 == 1 then
		  move(img_tcas_diamond17, my_x + ((tcas_x17 * 100) / 1.75), my_y - ((tcas_y17 * 100) / 1.75), nil, nil)
		elseif diamond_e_show17 == 1 then
		  move(img_tcas_diamond_e17, my_x + ((tcas_x17 * 100) / 1.75), my_y - ((tcas_y17 * 100) / 1.75), nil, nil)
		elseif circle_show17 == 1 then
		  move(img_tcas_circle17, my_x + ((tcas_x17 * 100) / 1.75), my_y - ((tcas_y17 * 100) / 1.75), nil, nil)
		elseif box_show17 == 1 then
		  move(img_tcas_box17, my_x + ((tcas_x17 * 100) / 1.75), my_y - ((tcas_y17 * 100) / 1.75), nil, nil)
		end
	  -- arrow up
		if arrow_dn_show17 == 0 and (diamond_show17 == 1 or diamond_e_show17 == 1) then
		  move(img_tcas_arrow_up_white17, (my_x + ((tcas_x17 * 100) / 1.75) + 30), (my_y - (tcas_y17 * 100) / 1.75), nil, nil)
		elseif arrow_dn_show17 == 0 and circle_show17 == 1 then
		  move(img_tcas_arrow_up_amber17, (my_x + ((tcas_x17 * 100) / 1.75) + 30), (my_y - (tcas_y17 * 100) / 1.75), nil, nil)
		elseif arrow_dn_show17 == 0 and box_show17 == 1 then
		  move(img_tcas_arrow_up_red17, (my_x + ((tcas_x17 * 100) / 1.75)  + 30), (my_y - (tcas_y17 * 100) / 1.75), nil, nil)
		end
	  -- arrow down
		if arrow_dn_show17 == 1 and (diamond_show17 == 1 or diamond_e_show17 == 1) then
		  move(img_tcas_arrow_dn_white17, (my_x + ((tcas_x17 * 100) / 1.75)  + 30), (my_y - (tcas_y17 * 100) / 1.75), nil, nil)
		elseif arrow_dn_show17 == 1 and circle_show17 == 1 then
		  move(img_tcas_arrow_dn_amber17, (my_x + ((tcas_x17 * 100) / 1.75)  + 30), (my_y - (tcas_y17 * 100) / 1.75), nil, nil)
		elseif arrow_dn_show17 == 1 and box_show17 == 1 then
		  move(img_tcas_arrow_dn_red17, (my_x + ((tcas_x17 * 100) / 1.75)  + 30), (my_y - (tcas_y17 * 100) / 1.75), nil, nil)
		end
	  -- alt text above
		if alt_dn_show17 == 0 and (diamond_show17 == 1 or diamond_e_show17 == 1) then
		  move(txt_tcas_altw_t17, (my_x + ((tcas_x17 * 100) / 1.75) - 15), (my_y - ((tcas_y17 * 100) / 1.75) -25), nil, nil)
		elseif alt_dn_show17 == 0 and circle_show17 == 1 then
		  move(txt_tcas_alta_t17, (my_x + ((tcas_x17 * 100) / 1.75) - 15), (my_y - ((tcas_y17 * 100) / 1.75) -25), nil, nil)
		elseif alt_dn_show17 == 0 and box_show17 == 1 then
		  move(txt_tcas_altr_t17, (my_x + ((tcas_x17 * 100) / 1.75) - 15), (my_y - ((tcas_y17 * 100) / 1.75) -25), nil, nil)
		end
	  -- alt text underneath
		if alt_dn_show17 == 1 and (diamond_show17 == 1 or diamond_e_show17 == 1) then
		  move(txt_tcas_altw_b17, (my_x + ((tcas_x17 * 100) / 1.75) - 15), (my_y - ((tcas_y17 * 100) / 1.75) +35), nil, nil)
		elseif alt_dn_show17 == 1 and circle_show17 == 1 then
		  move(txt_tcas_alta_b17, (my_x + ((tcas_x17 * 100) / 1.75) - 15), (my_y - ((tcas_y17 * 100) / 1.75) +25), nil, nil)
		elseif alt_dn_show17 == 1 and box_show17 == 1 then
		  move(txt_tcas_altr_b17, (my_x + ((tcas_x17 * 100) / 1.75) - 15), (my_y - ((tcas_y17 * 100) / 1.75) +25), nil, nil)
		end
	  end
	end
	xpl_dataref_subscribe(  "laminar/B738/EFIS/tcas_on", "INT",
							"laminar/B738/EFIS/tcas_show", "INT",
							"laminar/B738/EFIS/tcas_show17", "INT",
							"laminar/B738/TCAS/alt_dn_show17", "INT",
							"laminar/B738/TCAS/alt_up_show17", "INT",
							"laminar/B738/TCAS/arrow_dn_show17", "INT",
							"laminar/B738/TCAS/arrow_up_show17", "INT",
							"laminar/B738/TCAS/box_show17", "INT",
							"laminar/B738/TCAS/circle_show17", "INT",
							"laminar/B738/TCAS/diamond_e_show17", "INT",
							"laminar/B738/TCAS/diamond_show17", "INT",
							"laminar/B738/TCAS/alt17", "STRING",
							"laminar/B738/TCAS/alt_dn_show17", "INT",
							"laminar/B738/TCAS/x17", "FLOAT",
							"laminar/B738/TCAS/y17", "FLOAT" , tcas_show17)
				
	function tcas_show18(tcas_on,tcas_show,tcas_show18,alt_dn_show18,alt_up_show18,arrow_dn_show18,arrow_up_show18,box_show18,circle_show18,diamond_e_show18,diamond_show18,alt18,alt_dn_show18,tcas_x18,tcas_y18)

	  txt_set(txt_tcas_altw_t18, alt18)
	  txt_set(txt_tcas_altw_b18, alt18)
	  txt_set(txt_tcas_alta_t18, alt18)
	  txt_set(txt_tcas_alta_b18, alt18)
	  txt_set(txt_tcas_altr_t18, alt18)
	  txt_set(txt_tcas_altr_b18, alt18)
	  
	  local my_x = 400 - (21 / 2)
	  local my_y = 641.36 - (21 / 2)
	  
	--white18
	  visible(img_tcas_diamond18, tcas_on == 1 and tcas_show  == 1  and tcas_show18 == 1 and diamond_show18 == 1)
	  visible(img_tcas_diamond_e18, tcas_on == 1 and tcas_show  == 1  and tcas_show18 == 1 and diamond_e_show18 == 1)
	  visible(img_tcas_arrow_up_white18, tcas_on == 1 and tcas_show  == 1 and tcas_show18 == 1 and arrow_up_show18 == 1 and (diamond_show18 == 1 or diamond_e_show18 == 1))
	  visible(img_tcas_arrow_dn_white18, tcas_on == 1 and tcas_show  == 1 and tcas_show18 == 1 and arrow_dn_show18 == 1 and (diamond_show18 == 1 or diamond_e_show18 == 1))
	  visible(txt_tcas_altw_t18, tcas_on == 1 and tcas_show  == 1  and tcas_show18 == 1 and alt_dn_show18 == 0 and (diamond_show18 == 1 or diamond_e_show18 == 1))
	  visible(txt_tcas_altw_b18, tcas_on == 1 and tcas_show  == 1  and tcas_show18 == 1 and alt_dn_show18 == 1 and (diamond_show18 == 1 or diamond_e_show18 == 1))
	--amber18
	  visible(img_tcas_circle18, tcas_on == 1 and tcas_show  == 1  and tcas_show18 == 1 and circle_show18 == 1)
	  visible(img_tcas_arrow_up_amber18, tcas_on == 1 and tcas_show  == 1 and tcas_show18 == 1 and arrow_up_show18 == 1 and circle_show18 == 1)
	  visible(img_tcas_arrow_dn_amber18, tcas_on == 1 and tcas_show  == 1 and tcas_show18 == 1 and arrow_dn_show18 == 1 and circle_show18 == 1)
	  visible(txt_tcas_alta_t18, tcas_on == 1 and tcas_show  == 1  and tcas_show18 == 1 and alt_dn_show18 == 0 and circle_show18 == 1)
	  visible(txt_tcas_alta_b18, tcas_on == 1 and tcas_show  == 1  and tcas_show18 == 1 and alt_dn_show18 == 1 and circle_show18 == 1)
	--red18
	  visible(img_tcas_box18, tcas_on == 1 and tcas_show  == 1  and tcas_show18 == 1 and box_show18 == 1)
	  visible(img_tcas_arrow_up_red18, tcas_on == 1 and tcas_show  == 1  and tcas_show18 == 1 and arrow_up_show18 == 1 and box_show18 == 1)
	  visible(img_tcas_arrow_dn_red18, tcas_on == 1 and tcas_show  == 1  and tcas_show18 == 1 and arrow_dn_show18 == 1 and box_show18 == 1)
	  visible(txt_tcas_altr_t18, tcas_on == 1 and tcas_show  == 1  and tcas_show18 == 1 and alt_dn_show18 == 0 and box_show18 == 1)
	  visible(txt_tcas_altr_b18, tcas_on == 1 and tcas_show  == 1  and tcas_show18 == 1 and alt_dn_show18 == 1 and box_show18 == 1)
	--if statements
	  if tcas_on == 1 and tcas_show  == 1  and tcas_show18 == 1 then
	  -- icon
		if diamond_show18 == 1 then
		  move(img_tcas_diamond18, my_x + ((tcas_x18 * 100) / 1.75), my_y - ((tcas_y18 * 100) / 1.75), nil, nil)
		elseif diamond_e_show18 == 1 then
		  move(img_tcas_diamond_e18, my_x + ((tcas_x18 * 100) / 1.75), my_y - ((tcas_y18 * 100) / 1.75), nil, nil)
		elseif circle_show18 == 1 then
		  move(img_tcas_circle18, my_x + ((tcas_x18 * 100) / 1.75), my_y - ((tcas_y18 * 100) / 1.75), nil, nil)
		elseif box_show18 == 1 then
		  move(img_tcas_box18, my_x + ((tcas_x18 * 100) / 1.75), my_y - ((tcas_y18 * 100) / 1.75), nil, nil)
		end
	  -- arrow up
		if arrow_dn_show18 == 0 and (diamond_show18 == 1 or diamond_e_show18 == 1) then
		  move(img_tcas_arrow_up_white18, (my_x + ((tcas_x18 * 100) / 1.75) + 30), (my_y - (tcas_y18 * 100) / 1.75), nil, nil)
		elseif arrow_dn_show18 == 0 and circle_show18 == 1 then
		  move(img_tcas_arrow_up_amber18, (my_x + ((tcas_x18 * 100) / 1.75) + 30), (my_y - (tcas_y18 * 100) / 1.75), nil, nil)
		elseif arrow_dn_show18 == 0 and box_show18 == 1 then
		  move(img_tcas_arrow_up_red18, (my_x + ((tcas_x18 * 100) / 1.75)  + 30), (my_y - (tcas_y18 * 100) / 1.75), nil, nil)
		end
	  -- arrow down
		if arrow_dn_show18 == 1 and (diamond_show18 == 1 or diamond_e_show18 == 1) then
		  move(img_tcas_arrow_dn_white18, (my_x + ((tcas_x18 * 100) / 1.75)  + 30), (my_y - (tcas_y18 * 100) / 1.75), nil, nil)
		elseif arrow_dn_show18 == 1 and circle_show18 == 1 then
		  move(img_tcas_arrow_dn_amber18, (my_x + ((tcas_x18 * 100) / 1.75)  + 30), (my_y - (tcas_y18 * 100) / 1.75), nil, nil)
		elseif arrow_dn_show18 == 1 and box_show18 == 1 then
		  move(img_tcas_arrow_dn_red18, (my_x + ((tcas_x18 * 100) / 1.75)  + 30), (my_y - (tcas_y18 * 100) / 1.75), nil, nil)
		end
	  -- alt text above
		if alt_dn_show18 == 0 and (diamond_show18 == 1 or diamond_e_show18 == 1) then
		  move(txt_tcas_altw_t18, (my_x + ((tcas_x18 * 100) / 1.75) - 15), (my_y - ((tcas_y18 * 100) / 1.75) -25), nil, nil)
		elseif alt_dn_show18 == 0 and circle_show18 == 1 then
		  move(txt_tcas_alta_t18, (my_x + ((tcas_x18 * 100) / 1.75) - 15), (my_y - ((tcas_y18 * 100) / 1.75) -25), nil, nil)
		elseif alt_dn_show18 == 0 and box_show18 == 1 then
		  move(txt_tcas_altr_t18, (my_x + ((tcas_x18 * 100) / 1.75) - 15), (my_y - ((tcas_y18 * 100) / 1.75) -25), nil, nil)
		end
	  -- alt text underneath
		if alt_dn_show18 == 1 and (diamond_show18 == 1 or diamond_e_show18 == 1) then
		  move(txt_tcas_altw_b18, (my_x + ((tcas_x18 * 100) / 1.75) - 15), (my_y - ((tcas_y18 * 100) / 1.75) +35), nil, nil)
		elseif alt_dn_show18 == 1 and circle_show18 == 1 then
		  move(txt_tcas_alta_b18, (my_x + ((tcas_x18 * 100) / 1.75) - 15), (my_y - ((tcas_y18 * 100) / 1.75) +25), nil, nil)
		elseif alt_dn_show18 == 1 and box_show18 == 1 then
		  move(txt_tcas_altr_b18, (my_x + ((tcas_x18 * 100) / 1.75) - 15), (my_y - ((tcas_y18 * 100) / 1.75) +25), nil, nil)
		end
	  end
	end
	xpl_dataref_subscribe(  "laminar/B738/EFIS/tcas_on", "INT",
							"laminar/B738/EFIS/tcas_show", "INT",
							"laminar/B738/EFIS/tcas_show18", "INT",
							"laminar/B738/TCAS/alt_dn_show18", "INT",
							"laminar/B738/TCAS/alt_up_show18", "INT",
							"laminar/B738/TCAS/arrow_dn_show18", "INT",
							"laminar/B738/TCAS/arrow_up_show18", "INT",
							"laminar/B738/TCAS/box_show18", "INT",
							"laminar/B738/TCAS/circle_show18", "INT",
							"laminar/B738/TCAS/diamond_e_show18", "INT",
							"laminar/B738/TCAS/diamond_show18", "INT",
							"laminar/B738/TCAS/alt18", "STRING",
							"laminar/B738/TCAS/alt_dn_show18", "INT",
							"laminar/B738/TCAS/x18", "FLOAT",
							"laminar/B738/TCAS/y18", "FLOAT" , tcas_show18)
				
	function tcas_show19(tcas_on,tcas_show,tcas_show19,alt_dn_show19,alt_up_show19,arrow_dn_show19,arrow_up_show19,box_show19,circle_show19,diamond_e_show19,diamond_show19,alt19,alt_dn_show19,tcas_x19,tcas_y19)

	  txt_set(txt_tcas_altw_t19, alt19)
	  txt_set(txt_tcas_altw_b19, alt19)
	  txt_set(txt_tcas_alta_t19, alt19)
	  txt_set(txt_tcas_alta_b19, alt19)
	  txt_set(txt_tcas_altr_t19, alt19)
	  txt_set(txt_tcas_altr_b19, alt19)
	  
	  local my_x = 400 - (21 / 2)
	  local my_y = 641.36 - (21 / 2)
	  
	--white19
	  visible(img_tcas_diamond19, tcas_on == 1 and tcas_show  == 1  and tcas_show19 == 1 and diamond_show19 == 1)
	  visible(img_tcas_diamond_e19, tcas_on == 1 and tcas_show  == 1  and tcas_show19 == 1 and diamond_e_show19 == 1)
	  visible(img_tcas_arrow_up_white19, tcas_on == 1 and tcas_show  == 1 and tcas_show19 == 1 and arrow_up_show19 == 1 and (diamond_show19 == 1 or diamond_e_show19 == 1))
	  visible(img_tcas_arrow_dn_white19, tcas_on == 1 and tcas_show  == 1 and tcas_show19 == 1 and arrow_dn_show19 == 1 and (diamond_show19 == 1 or diamond_e_show19 == 1))
	  visible(txt_tcas_altw_t19, tcas_on == 1 and tcas_show  == 1  and tcas_show19 == 1 and alt_dn_show19 == 0 and (diamond_show19 == 1 or diamond_e_show19 == 1))
	  visible(txt_tcas_altw_b19, tcas_on == 1 and tcas_show  == 1  and tcas_show19 == 1 and alt_dn_show19 == 1 and (diamond_show19 == 1 or diamond_e_show19 == 1))
	--amber19
	  visible(img_tcas_circle19, tcas_on == 1 and tcas_show  == 1  and tcas_show19 == 1 and circle_show19 == 1)
	  visible(img_tcas_arrow_up_amber19, tcas_on == 1 and tcas_show  == 1 and tcas_show19 == 1 and arrow_up_show19 == 1 and circle_show19 == 1)
	  visible(img_tcas_arrow_dn_amber19, tcas_on == 1 and tcas_show  == 1 and tcas_show19 == 1 and arrow_dn_show19 == 1 and circle_show19 == 1)
	  visible(txt_tcas_alta_t19, tcas_on == 1 and tcas_show  == 1  and tcas_show19 == 1 and alt_dn_show19 == 0 and circle_show19 == 1)
	  visible(txt_tcas_alta_b19, tcas_on == 1 and tcas_show  == 1  and tcas_show19 == 1 and alt_dn_show19 == 1 and circle_show19 == 1)
	--red19
	  visible(img_tcas_box19, tcas_on == 1 and tcas_show  == 1  and tcas_show19 == 1 and box_show19 == 1)
	  visible(img_tcas_arrow_up_red19, tcas_on == 1 and tcas_show  == 1  and tcas_show19 == 1 and arrow_up_show19 == 1 and box_show19 == 1)
	  visible(img_tcas_arrow_dn_red19, tcas_on == 1 and tcas_show  == 1  and tcas_show19 == 1 and arrow_dn_show19 == 1 and box_show19 == 1)
	  visible(txt_tcas_altr_t19, tcas_on == 1 and tcas_show  == 1  and tcas_show19 == 1 and alt_dn_show19 == 0 and box_show19 == 1)
	  visible(txt_tcas_altr_b19, tcas_on == 1 and tcas_show  == 1  and tcas_show19 == 1 and alt_dn_show19 == 1 and box_show19 == 1)
	--if statements
	  if tcas_on == 1 and tcas_show  == 1  and tcas_show19 == 1 then
	  -- icon
		if diamond_show19 == 1 then
		  move(img_tcas_diamond19, my_x + ((tcas_x19 * 100) / 1.75), my_y - ((tcas_y19 * 100) / 1.75), nil, nil)
		elseif diamond_e_show19 == 1 then
		  move(img_tcas_diamond_e19, my_x + ((tcas_x19 * 100) / 1.75), my_y - ((tcas_y19 * 100) / 1.75), nil, nil)
		elseif circle_show19 == 1 then
		  move(img_tcas_circle19, my_x + ((tcas_x19 * 100) / 1.75), my_y - ((tcas_y19 * 100) / 1.75), nil, nil)
		elseif box_show19 == 1 then
		  move(img_tcas_box19, my_x + ((tcas_x19 * 100) / 1.75), my_y - ((tcas_y19 * 100) / 1.75), nil, nil)
		end
	  -- arrow up
		if arrow_dn_show19 == 0 and (diamond_show19 == 1 or diamond_e_show19 == 1) then
		  move(img_tcas_arrow_up_white19, (my_x + ((tcas_x19 * 100) / 1.75) + 30), (my_y - (tcas_y19 * 100) / 1.75), nil, nil)
		elseif arrow_dn_show19 == 0 and circle_show19 == 1 then
		  move(img_tcas_arrow_up_amber19, (my_x + ((tcas_x19 * 100) / 1.75) + 30), (my_y - (tcas_y19 * 100) / 1.75), nil, nil)
		elseif arrow_dn_show19 == 0 and box_show19 == 1 then
		  move(img_tcas_arrow_up_red19, (my_x + ((tcas_x19 * 100) / 1.75)  + 30), (my_y - (tcas_y19 * 100) / 1.75), nil, nil)
		end
	  -- arrow down
		if arrow_dn_show19 == 1 and (diamond_show19 == 1 or diamond_e_show19 == 1) then
		  move(img_tcas_arrow_dn_white19, (my_x + ((tcas_x19 * 100) / 1.75)  + 30), (my_y - (tcas_y19 * 100) / 1.75), nil, nil)
		elseif arrow_dn_show19 == 1 and circle_show19 == 1 then
		  move(img_tcas_arrow_dn_amber19, (my_x + ((tcas_x19 * 100) / 1.75)  + 30), (my_y - (tcas_y19 * 100) / 1.75), nil, nil)
		elseif arrow_dn_show19 == 1 and box_show19 == 1 then
		  move(img_tcas_arrow_dn_red19, (my_x + ((tcas_x19 * 100) / 1.75)  + 30), (my_y - (tcas_y19 * 100) / 1.75), nil, nil)
		end
	  -- alt text above
		if alt_dn_show19 == 0 and (diamond_show19 == 1 or diamond_e_show19 == 1) then
		  move(txt_tcas_altw_t19, (my_x + ((tcas_x19 * 100) / 1.75) - 15), (my_y - ((tcas_y19 * 100) / 1.75) -25), nil, nil)
		elseif alt_dn_show19 == 0 and circle_show19 == 1 then
		  move(txt_tcas_alta_t19, (my_x + ((tcas_x19 * 100) / 1.75) - 15), (my_y - ((tcas_y19 * 100) / 1.75) -25), nil, nil)
		elseif alt_dn_show19 == 0 and box_show19 == 1 then
		  move(txt_tcas_altr_t19, (my_x + ((tcas_x19 * 100) / 1.75) - 15), (my_y - ((tcas_y19 * 100) / 1.75) -25), nil, nil)
		end
	  -- alt text underneath
		if alt_dn_show19 == 1 and (diamond_show19 == 1 or diamond_e_show19 == 1) then
		  move(txt_tcas_altw_b19, (my_x + ((tcas_x19 * 100) / 1.75) - 15), (my_y - ((tcas_y19 * 100) / 1.75) +35), nil, nil)
		elseif alt_dn_show19 == 1 and circle_show19 == 1 then
		  move(txt_tcas_alta_b19, (my_x + ((tcas_x19 * 100) / 1.75) - 15), (my_y - ((tcas_y19 * 100) / 1.75) +25), nil, nil)
		elseif alt_dn_show19 == 1 and box_show19 == 1 then
		  move(txt_tcas_altr_b19, (my_x + ((tcas_x19 * 100) / 1.75) - 15), (my_y - ((tcas_y19 * 100) / 1.75) +25), nil, nil)
		end
	  end
	end
	xpl_dataref_subscribe(  "laminar/B738/EFIS/tcas_on", "INT",
							"laminar/B738/EFIS/tcas_show", "INT",
							"laminar/B738/EFIS/tcas_show19", "INT",
							"laminar/B738/TCAS/alt_dn_show19", "INT",
							"laminar/B738/TCAS/alt_up_show19", "INT",
							"laminar/B738/TCAS/arrow_dn_show19", "INT",
							"laminar/B738/TCAS/arrow_up_show19", "INT",
							"laminar/B738/TCAS/box_show19", "INT",
							"laminar/B738/TCAS/circle_show19", "INT",
							"laminar/B738/TCAS/diamond_e_show19", "INT",
							"laminar/B738/TCAS/diamond_show19", "INT",
							"laminar/B738/TCAS/alt19", "STRING",
							"laminar/B738/TCAS/alt_dn_show19", "INT",
							"laminar/B738/TCAS/x19", "FLOAT",
							"laminar/B738/TCAS/y19", "FLOAT" , tcas_show19)
end