canvas_default_black_bg = canvas_add(0, 0, 800, 800, function()
	_fill("black")
end)visible(canvas_default_black_bg,true)

function ypos (img_y, img_height)
	ypix = 800 - img_y - img_height
	return ypix
end
function get_x_px (x, size, txt_offset)
	local myx = 400 - (size / 2)
	x_px = myx + (((x * 100) / 1.768) + txt_offset)
	return x_px
end
function get_y_px (y, size, txt_offset)
	local myy = 641.36 - (size / 2)
	y_px = myy - (((y * 100) / 1.786) - txt_offset)
	return y_px
end

-- text
-- airport codes

apt_txt_size =						"18px"
apt_txt_font =						"my737glass.otf"
apt_txt_color =						"cyan"
apt_txt_halign =					"left"
apt_txt_width =						50
apt_txt_height =					22

sta_txt_size =						"18px"
sta_txt_font =						"my737glass.otf"
sta_txt_color =						"cyan"
sta_txt_halign =					"left"
sta_txt_width =						50
sta_txt_height =					22

wptw_txt_size =						"16px"
wptw_txt_font =						"my737glass.otf"
wptw_txt_color =					"white"
wptw_txt_halign =					"left"
wptw_txt_width =					80
wptw_txt_height =					22

wptm_txt_size =						"16px"
wptm_txt_font =						"my737glass.otf"
wptm_txt_color =					"magenta"
wptm_txt_halign =					"left"
wptm_txt_width =					80
wptm_txt_height =					22

alt_txt_size =						"20px"
alt_txt_font =						"my737glass.otf"
alt_txt_halign =					"left"
alt_txt_width =						50
alt_txt_height =					22


txt_apt0 =							txt_add(" ", "size:"..apt_txt_size.."; font:"..apt_txt_font.."; color: "..apt_txt_color.."; halign:"..apt_txt_halign..";", -100, -100, apt_txt_width, apt_txt_height) visible(txt_apt0,false)
txt_apt1 =							txt_add(" ", "size:"..apt_txt_size.."; font:"..apt_txt_font.."; color: "..apt_txt_color.."; halign:"..apt_txt_halign..";", -100, -100, apt_txt_width, apt_txt_height) visible(txt_apt1,false)
txt_apt2 =							txt_add(" ", "size:"..apt_txt_size.."; font:"..apt_txt_font.."; color: "..apt_txt_color.."; halign:"..apt_txt_halign..";", -100, -100, apt_txt_width, apt_txt_height) visible(txt_apt2,false)
txt_apt3 =							txt_add(" ", "size:"..apt_txt_size.."; font:"..apt_txt_font.."; color: "..apt_txt_color.."; halign:"..apt_txt_halign..";", -100, -100, apt_txt_width, apt_txt_height) visible(txt_apt3,false)
txt_apt4 =							txt_add(" ", "size:"..apt_txt_size.."; font:"..apt_txt_font.."; color: "..apt_txt_color.."; halign:"..apt_txt_halign..";", -100, -100, apt_txt_width, apt_txt_height) visible(txt_apt4,false)
txt_apt5 =							txt_add(" ", "size:"..apt_txt_size.."; font:"..apt_txt_font.."; color: "..apt_txt_color.."; halign:"..apt_txt_halign..";", -100, -100, apt_txt_width, apt_txt_height) visible(txt_apt5,false)
txt_apt6 =							txt_add(" ", "size:"..apt_txt_size.."; font:"..apt_txt_font.."; color: "..apt_txt_color.."; halign:"..apt_txt_halign..";", -100, -100, apt_txt_width, apt_txt_height) visible(txt_apt6,false)
txt_apt7 =							txt_add(" ", "size:"..apt_txt_size.."; font:"..apt_txt_font.."; color: "..apt_txt_color.."; halign:"..apt_txt_halign..";", -100, -100, apt_txt_width, apt_txt_height) visible(txt_apt7,false)
txt_apt8 =							txt_add(" ", "size:"..apt_txt_size.."; font:"..apt_txt_font.."; color: "..apt_txt_color.."; halign:"..apt_txt_halign..";", -100, -100, apt_txt_width, apt_txt_height) visible(txt_apt8,false)
txt_apt9 =							txt_add(" ", "size:"..apt_txt_size.."; font:"..apt_txt_font.."; color: "..apt_txt_color.."; halign:"..apt_txt_halign..";", -100, -100, apt_txt_width, apt_txt_height) visible(txt_apt9,false)
txt_apt10 =							txt_add(" ", "size:"..apt_txt_size.."; font:"..apt_txt_font.."; color: "..apt_txt_color.."; halign:"..apt_txt_halign..";", -100, -100, apt_txt_width, apt_txt_height) visible(txt_apt10,false)
txt_apt11 =							txt_add(" ", "size:"..apt_txt_size.."; font:"..apt_txt_font.."; color: "..apt_txt_color.."; halign:"..apt_txt_halign..";", -100, -100, apt_txt_width, apt_txt_height) visible(txt_apt11,false)
txt_apt12 =							txt_add(" ", "size:"..apt_txt_size.."; font:"..apt_txt_font.."; color: "..apt_txt_color.."; halign:"..apt_txt_halign..";", -100, -100, apt_txt_width, apt_txt_height) visible(txt_apt12,false)
txt_apt13 =							txt_add(" ", "size:"..apt_txt_size.."; font:"..apt_txt_font.."; color: "..apt_txt_color.."; halign:"..apt_txt_halign..";", -100, -100, apt_txt_width, apt_txt_height) visible(txt_apt13,false)
txt_apt14 =							txt_add(" ", "size:"..apt_txt_size.."; font:"..apt_txt_font.."; color: "..apt_txt_color.."; halign:"..apt_txt_halign..";", -100, -100, apt_txt_width, apt_txt_height) visible(txt_apt14,false)
txt_apt15 =							txt_add(" ", "size:"..apt_txt_size.."; font:"..apt_txt_font.."; color: "..apt_txt_color.."; halign:"..apt_txt_halign..";", -100, -100, apt_txt_width, apt_txt_height) visible(txt_apt15,false)
txt_apt16 =							txt_add(" ", "size:"..apt_txt_size.."; font:"..apt_txt_font.."; color: "..apt_txt_color.."; halign:"..apt_txt_halign..";", -100, -100, apt_txt_width, apt_txt_height) visible(txt_apt16,false)
txt_apt17 =							txt_add(" ", "size:"..apt_txt_size.."; font:"..apt_txt_font.."; color: "..apt_txt_color.."; halign:"..apt_txt_halign..";", -100, -100, apt_txt_width, apt_txt_height) visible(txt_apt17,false)
txt_apt18 =							txt_add(" ", "size:"..apt_txt_size.."; font:"..apt_txt_font.."; color: "..apt_txt_color.."; halign:"..apt_txt_halign..";", -100, -100, apt_txt_width, apt_txt_height) visible(txt_apt18,false)
txt_apt19 =							txt_add(" ", "size:"..apt_txt_size.."; font:"..apt_txt_font.."; color: "..apt_txt_color.."; halign:"..apt_txt_halign..";", -100, -100, apt_txt_width, apt_txt_height) visible(txt_apt19,false)
txt_apt20 =							txt_add(" ", "size:"..apt_txt_size.."; font:"..apt_txt_font.."; color: "..apt_txt_color.."; halign:"..apt_txt_halign..";", -100, -100, apt_txt_width, apt_txt_height) visible(txt_apt20,false)
txt_apt21 =							txt_add(" ", "size:"..apt_txt_size.."; font:"..apt_txt_font.."; color: "..apt_txt_color.."; halign:"..apt_txt_halign..";", -100, -100, apt_txt_width, apt_txt_height) visible(txt_apt21,false)
txt_apt22 =							txt_add(" ", "size:"..apt_txt_size.."; font:"..apt_txt_font.."; color: "..apt_txt_color.."; halign:"..apt_txt_halign..";", -100, -100, apt_txt_width, apt_txt_height) visible(txt_apt22,false)
txt_apt23 =							txt_add(" ", "size:"..apt_txt_size.."; font:"..apt_txt_font.."; color: "..apt_txt_color.."; halign:"..apt_txt_halign..";", -100, -100, apt_txt_width, apt_txt_height) visible(txt_apt23,false)
txt_apt24 =							txt_add(" ", "size:"..apt_txt_size.."; font:"..apt_txt_font.."; color: "..apt_txt_color.."; halign:"..apt_txt_halign..";", -100, -100, apt_txt_width, apt_txt_height) visible(txt_apt24,false)
txt_apt25 =							txt_add(" ", "size:"..apt_txt_size.."; font:"..apt_txt_font.."; color: "..apt_txt_color.."; halign:"..apt_txt_halign..";", -100, -100, apt_txt_width, apt_txt_height) visible(txt_apt25,false)
txt_apt26 =							txt_add(" ", "size:"..apt_txt_size.."; font:"..apt_txt_font.."; color: "..apt_txt_color.."; halign:"..apt_txt_halign..";", -100, -100, apt_txt_width, apt_txt_height) visible(txt_apt26,false)
txt_apt27 =							txt_add(" ", "size:"..apt_txt_size.."; font:"..apt_txt_font.."; color: "..apt_txt_color.."; halign:"..apt_txt_halign..";", -100, -100, apt_txt_width, apt_txt_height) visible(txt_apt27,false)
txt_apt28 =							txt_add(" ", "size:"..apt_txt_size.."; font:"..apt_txt_font.."; color: "..apt_txt_color.."; halign:"..apt_txt_halign..";", -100, -100, apt_txt_width, apt_txt_height) visible(txt_apt28,false)
txt_apt29 =							txt_add(" ", "size:"..apt_txt_size.."; font:"..apt_txt_font.."; color: "..apt_txt_color.."; halign:"..apt_txt_halign..";", -100, -100, apt_txt_width, apt_txt_height) visible(txt_apt29,false)

txt_sta0 =							txt_add(" ", "size:"..sta_txt_size.."; font:"..sta_txt_font.."; color: "..sta_txt_color.."; halign:"..sta_txt_halign..";", -100, -100, sta_txt_width, sta_txt_height) visible(txt_sta0,false)
txt_sta1 =							txt_add(" ", "size:"..sta_txt_size.."; font:"..sta_txt_font.."; color: "..sta_txt_color.."; halign:"..sta_txt_halign..";", -100, -100, sta_txt_width, sta_txt_height) visible(txt_sta1,false)
txt_sta2 =							txt_add(" ", "size:"..sta_txt_size.."; font:"..sta_txt_font.."; color: "..sta_txt_color.."; halign:"..sta_txt_halign..";", -100, -100, sta_txt_width, sta_txt_height) visible(txt_sta2,false)
txt_sta3 =							txt_add(" ", "size:"..sta_txt_size.."; font:"..sta_txt_font.."; color: "..sta_txt_color.."; halign:"..sta_txt_halign..";", -100, -100, sta_txt_width, sta_txt_height) visible(txt_sta3,false)
txt_sta4 =							txt_add(" ", "size:"..sta_txt_size.."; font:"..sta_txt_font.."; color: "..sta_txt_color.."; halign:"..sta_txt_halign..";", -100, -100, sta_txt_width, sta_txt_height) visible(txt_sta4,false)
txt_sta5 =							txt_add(" ", "size:"..sta_txt_size.."; font:"..sta_txt_font.."; color: "..sta_txt_color.."; halign:"..sta_txt_halign..";", -100, -100, sta_txt_width, sta_txt_height) visible(txt_sta5,false)
txt_sta6 =							txt_add(" ", "size:"..sta_txt_size.."; font:"..sta_txt_font.."; color: "..sta_txt_color.."; halign:"..sta_txt_halign..";", -100, -100, sta_txt_width, sta_txt_height) visible(txt_sta6,false)
txt_sta7 =							txt_add(" ", "size:"..sta_txt_size.."; font:"..sta_txt_font.."; color: "..sta_txt_color.."; halign:"..sta_txt_halign..";", -100, -100, sta_txt_width, sta_txt_height) visible(txt_sta7,false)
txt_sta8 =							txt_add(" ", "size:"..sta_txt_size.."; font:"..sta_txt_font.."; color: "..sta_txt_color.."; halign:"..sta_txt_halign..";", -100, -100, sta_txt_width, sta_txt_height) visible(txt_sta8,false)
txt_sta9 =							txt_add(" ", "size:"..sta_txt_size.."; font:"..sta_txt_font.."; color: "..sta_txt_color.."; halign:"..sta_txt_halign..";", -100, -100, sta_txt_width, sta_txt_height) visible(txt_sta9,false)
txt_sta10 =							txt_add(" ", "size:"..sta_txt_size.."; font:"..sta_txt_font.."; color: "..sta_txt_color.."; halign:"..sta_txt_halign..";", -100, -100, sta_txt_width, sta_txt_height) visible(txt_sta10,false)
txt_sta11 =							txt_add(" ", "size:"..sta_txt_size.."; font:"..sta_txt_font.."; color: "..sta_txt_color.."; halign:"..sta_txt_halign..";", -100, -100, sta_txt_width, sta_txt_height) visible(txt_sta11,false)
txt_sta12 =							txt_add(" ", "size:"..sta_txt_size.."; font:"..sta_txt_font.."; color: "..sta_txt_color.."; halign:"..sta_txt_halign..";", -100, -100, sta_txt_width, sta_txt_height) visible(txt_sta12,false)
txt_sta13 =							txt_add(" ", "size:"..sta_txt_size.."; font:"..sta_txt_font.."; color: "..sta_txt_color.."; halign:"..sta_txt_halign..";", -100, -100, sta_txt_width, sta_txt_height) visible(txt_sta13,false)
txt_sta14 =							txt_add(" ", "size:"..sta_txt_size.."; font:"..sta_txt_font.."; color: "..sta_txt_color.."; halign:"..sta_txt_halign..";", -100, -100, sta_txt_width, sta_txt_height) visible(txt_sta14,false)
txt_sta15 =							txt_add(" ", "size:"..sta_txt_size.."; font:"..sta_txt_font.."; color: "..sta_txt_color.."; halign:"..sta_txt_halign..";", -100, -100, sta_txt_width, sta_txt_height) visible(txt_sta15,false)
txt_sta16 =							txt_add(" ", "size:"..sta_txt_size.."; font:"..sta_txt_font.."; color: "..sta_txt_color.."; halign:"..sta_txt_halign..";", -100, -100, sta_txt_width, sta_txt_height) visible(txt_sta16,false)
txt_sta17 =							txt_add(" ", "size:"..sta_txt_size.."; font:"..sta_txt_font.."; color: "..sta_txt_color.."; halign:"..sta_txt_halign..";", -100, -100, sta_txt_width, sta_txt_height) visible(txt_sta17,false)
txt_sta18 =							txt_add(" ", "size:"..sta_txt_size.."; font:"..sta_txt_font.."; color: "..sta_txt_color.."; halign:"..sta_txt_halign..";", -100, -100, sta_txt_width, sta_txt_height) visible(txt_sta18,false)
txt_sta19 =							txt_add(" ", "size:"..sta_txt_size.."; font:"..sta_txt_font.."; color: "..sta_txt_color.."; halign:"..sta_txt_halign..";", -100, -100, sta_txt_width, sta_txt_height) visible(txt_sta19,false)
txt_sta20 =							txt_add(" ", "size:"..sta_txt_size.."; font:"..sta_txt_font.."; color: "..sta_txt_color.."; halign:"..sta_txt_halign..";", -100, -100, sta_txt_width, sta_txt_height) visible(txt_sta20,false)
txt_sta21 =							txt_add(" ", "size:"..sta_txt_size.."; font:"..sta_txt_font.."; color: "..sta_txt_color.."; halign:"..sta_txt_halign..";", -100, -100, sta_txt_width, sta_txt_height) visible(txt_sta21,false)
txt_sta22 =							txt_add(" ", "size:"..sta_txt_size.."; font:"..sta_txt_font.."; color: "..sta_txt_color.."; halign:"..sta_txt_halign..";", -100, -100, sta_txt_width, sta_txt_height) visible(txt_sta22,false)
txt_sta23 =							txt_add(" ", "size:"..sta_txt_size.."; font:"..sta_txt_font.."; color: "..sta_txt_color.."; halign:"..sta_txt_halign..";", -100, -100, sta_txt_width, sta_txt_height) visible(txt_sta23,false)
txt_sta24 =							txt_add(" ", "size:"..sta_txt_size.."; font:"..sta_txt_font.."; color: "..sta_txt_color.."; halign:"..sta_txt_halign..";", -100, -100, sta_txt_width, sta_txt_height) visible(txt_sta24,false)
txt_sta25 =							txt_add(" ", "size:"..sta_txt_size.."; font:"..sta_txt_font.."; color: "..sta_txt_color.."; halign:"..sta_txt_halign..";", -100, -100, sta_txt_width, sta_txt_height) visible(txt_sta25,false)
txt_sta26 =							txt_add(" ", "size:"..sta_txt_size.."; font:"..sta_txt_font.."; color: "..sta_txt_color.."; halign:"..sta_txt_halign..";", -100, -100, sta_txt_width, sta_txt_height) visible(txt_sta26,false)
txt_sta27 =							txt_add(" ", "size:"..sta_txt_size.."; font:"..sta_txt_font.."; color: "..sta_txt_color.."; halign:"..sta_txt_halign..";", -100, -100, sta_txt_width, sta_txt_height) visible(txt_sta27,false)
txt_sta28 =							txt_add(" ", "size:"..sta_txt_size.."; font:"..sta_txt_font.."; color: "..sta_txt_color.."; halign:"..sta_txt_halign..";", -100, -100, sta_txt_width, sta_txt_height) visible(txt_sta28,false)
txt_sta29 =							txt_add(" ", "size:"..sta_txt_size.."; font:"..sta_txt_font.."; color: "..sta_txt_color.."; halign:"..sta_txt_halign..";", -100, -100, sta_txt_width, sta_txt_height) visible(txt_sta29,false)
txt_sta30 =							txt_add(" ", "size:"..sta_txt_size.."; font:"..sta_txt_font.."; color: "..sta_txt_color.."; halign:"..sta_txt_halign..";", -100, -100, sta_txt_width, sta_txt_height) visible(txt_sta30,false)
txt_sta31 =							txt_add(" ", "size:"..sta_txt_size.."; font:"..sta_txt_font.."; color: "..sta_txt_color.."; halign:"..sta_txt_halign..";", -100, -100, sta_txt_width, sta_txt_height) visible(txt_sta31,false)
txt_sta32 =							txt_add(" ", "size:"..sta_txt_size.."; font:"..sta_txt_font.."; color: "..sta_txt_color.."; halign:"..sta_txt_halign..";", -100, -100, sta_txt_width, sta_txt_height) visible(txt_sta32,false)
txt_sta33 =							txt_add(" ", "size:"..sta_txt_size.."; font:"..sta_txt_font.."; color: "..sta_txt_color.."; halign:"..sta_txt_halign..";", -100, -100, sta_txt_width, sta_txt_height) visible(txt_sta33,false)
txt_sta34 =							txt_add(" ", "size:"..sta_txt_size.."; font:"..sta_txt_font.."; color: "..sta_txt_color.."; halign:"..sta_txt_halign..";", -100, -100, sta_txt_width, sta_txt_height) visible(txt_sta34,false)
txt_sta35 =							txt_add(" ", "size:"..sta_txt_size.."; font:"..sta_txt_font.."; color: "..sta_txt_color.."; halign:"..sta_txt_halign..";", -100, -100, sta_txt_width, sta_txt_height) visible(txt_sta35,false)
txt_sta36 =							txt_add(" ", "size:"..sta_txt_size.."; font:"..sta_txt_font.."; color: "..sta_txt_color.."; halign:"..sta_txt_halign..";", -100, -100, sta_txt_width, sta_txt_height) visible(txt_sta36,false)
txt_sta37 =							txt_add(" ", "size:"..sta_txt_size.."; font:"..sta_txt_font.."; color: "..sta_txt_color.."; halign:"..sta_txt_halign..";", -100, -100, sta_txt_width, sta_txt_height) visible(txt_sta37,false)
txt_sta38 =							txt_add(" ", "size:"..sta_txt_size.."; font:"..sta_txt_font.."; color: "..sta_txt_color.."; halign:"..sta_txt_halign..";", -100, -100, sta_txt_width, sta_txt_height) visible(txt_sta38,false)
txt_sta39 =							txt_add(" ", "size:"..sta_txt_size.."; font:"..sta_txt_font.."; color: "..sta_txt_color.."; halign:"..sta_txt_halign..";", -100, -100, sta_txt_width, sta_txt_height) visible(txt_sta39,false)
txt_sta40 =							txt_add(" ", "size:"..sta_txt_size.."; font:"..sta_txt_font.."; color: "..sta_txt_color.."; halign:"..sta_txt_halign..";", -100, -100, sta_txt_width, sta_txt_height) visible(txt_sta40,false)
txt_sta41 =							txt_add(" ", "size:"..sta_txt_size.."; font:"..sta_txt_font.."; color: "..sta_txt_color.."; halign:"..sta_txt_halign..";", -100, -100, sta_txt_width, sta_txt_height) visible(txt_sta41,false)
txt_sta42 =							txt_add(" ", "size:"..sta_txt_size.."; font:"..sta_txt_font.."; color: "..sta_txt_color.."; halign:"..sta_txt_halign..";", -100, -100, sta_txt_width, sta_txt_height) visible(txt_sta42,false)
txt_sta43 =							txt_add(" ", "size:"..sta_txt_size.."; font:"..sta_txt_font.."; color: "..sta_txt_color.."; halign:"..sta_txt_halign..";", -100, -100, sta_txt_width, sta_txt_height) visible(txt_sta43,false)
txt_sta44 =							txt_add(" ", "size:"..sta_txt_size.."; font:"..sta_txt_font.."; color: "..sta_txt_color.."; halign:"..sta_txt_halign..";", -100, -100, sta_txt_width, sta_txt_height) visible(txt_sta44,false)
txt_sta45 =							txt_add(" ", "size:"..sta_txt_size.."; font:"..sta_txt_font.."; color: "..sta_txt_color.."; halign:"..sta_txt_halign..";", -100, -100, sta_txt_width, sta_txt_height) visible(txt_sta45,false)
txt_sta46 =							txt_add(" ", "size:"..sta_txt_size.."; font:"..sta_txt_font.."; color: "..sta_txt_color.."; halign:"..sta_txt_halign..";", -100, -100, sta_txt_width, sta_txt_height) visible(txt_sta46,false)
txt_sta47 =							txt_add(" ", "size:"..sta_txt_size.."; font:"..sta_txt_font.."; color: "..sta_txt_color.."; halign:"..sta_txt_halign..";", -100, -100, sta_txt_width, sta_txt_height) visible(txt_sta47,false)
txt_sta48 =							txt_add(" ", "size:"..sta_txt_size.."; font:"..sta_txt_font.."; color: "..sta_txt_color.."; halign:"..sta_txt_halign..";", -100, -100, sta_txt_width, sta_txt_height) visible(txt_sta48,false)
txt_sta49 =							txt_add(" ", "size:"..sta_txt_size.."; font:"..sta_txt_font.."; color: "..sta_txt_color.."; halign:"..sta_txt_halign..";", -100, -100, sta_txt_width, sta_txt_height) visible(txt_sta49,false)

txt_wptw0 =                 		txt_add(" ", "size:"..wptw_txt_size.."; font:"..wptw_txt_font.."; color: "..wptw_txt_color.."; halign:"..wptw_txt_halign..";", -100, -100, wptw_txt_width, wptw_txt_height) visible(txt_wptw0,false)
txt_wptw1 =                		 	txt_add(" ", "size:"..wptw_txt_size.."; font:"..wptw_txt_font.."; color: "..wptw_txt_color.."; halign:"..wptw_txt_halign..";", -100, -100, wptw_txt_width, wptw_txt_height) visible(txt_wptw1,false)
txt_wptw2 =                 		txt_add(" ", "size:"..wptw_txt_size.."; font:"..wptw_txt_font.."; color: "..wptw_txt_color.."; halign:"..wptw_txt_halign..";", -100, -100, wptw_txt_width, wptw_txt_height) visible(txt_wptw2,false)
txt_wptw3 =                		 	txt_add(" ", "size:"..wptw_txt_size.."; font:"..wptw_txt_font.."; color: "..wptw_txt_color.."; halign:"..wptw_txt_halign..";", -100, -100, wptw_txt_width, wptw_txt_height) visible(txt_wptw3,false)
txt_wptw4 =                		 	txt_add(" ", "size:"..wptw_txt_size.."; font:"..wptw_txt_font.."; color: "..wptw_txt_color.."; halign:"..wptw_txt_halign..";", -100, -100, wptw_txt_width, wptw_txt_height) visible(txt_wptw4,false)
txt_wptw5 =                		 	txt_add(" ", "size:"..wptw_txt_size.."; font:"..wptw_txt_font.."; color: "..wptw_txt_color.."; halign:"..wptw_txt_halign..";", -100, -100, wptw_txt_width, wptw_txt_height) visible(txt_wptw5,false)
txt_wptw6 =                		 	txt_add(" ", "size:"..wptw_txt_size.."; font:"..wptw_txt_font.."; color: "..wptw_txt_color.."; halign:"..wptw_txt_halign..";", -100, -100, wptw_txt_width, wptw_txt_height) visible(txt_wptw6,false)
txt_wptw7 =                		 	txt_add(" ", "size:"..wptw_txt_size.."; font:"..wptw_txt_font.."; color: "..wptw_txt_color.."; halign:"..wptw_txt_halign..";", -100, -100, wptw_txt_width, wptw_txt_height) visible(txt_wptw7,false)
txt_wptw8 =                		 	txt_add(" ", "size:"..wptw_txt_size.."; font:"..wptw_txt_font.."; color: "..wptw_txt_color.."; halign:"..wptw_txt_halign..";", -100, -100, wptw_txt_width, wptw_txt_height) visible(txt_wptw8,false)
txt_wptw9 =                			txt_add(" ", "size:"..wptw_txt_size.."; font:"..wptw_txt_font.."; color: "..wptw_txt_color.."; halign:"..wptw_txt_halign..";", -100, -100, wptw_txt_width, wptw_txt_height) visible(txt_wptw9,false)
txt_wptw10 =                		txt_add(" ", "size:"..wptw_txt_size.."; font:"..wptw_txt_font.."; color: "..wptw_txt_color.."; halign:"..wptw_txt_halign..";", -100, -100, wptw_txt_width, wptw_txt_height) visible(txt_wptw10,false)
txt_wptw11 =                		txt_add(" ", "size:"..wptw_txt_size.."; font:"..wptw_txt_font.."; color: "..wptw_txt_color.."; halign:"..wptw_txt_halign..";", -100, -100, wptw_txt_width, wptw_txt_height) visible(txt_wptw11,false)
txt_wptw12 =                		txt_add(" ", "size:"..wptw_txt_size.."; font:"..wptw_txt_font.."; color: "..wptw_txt_color.."; halign:"..wptw_txt_halign..";", -100, -100, wptw_txt_width, wptw_txt_height) visible(txt_wptw12,false)
txt_wptw13 =                		txt_add(" ", "size:"..wptw_txt_size.."; font:"..wptw_txt_font.."; color: "..wptw_txt_color.."; halign:"..wptw_txt_halign..";", -100, -100, wptw_txt_width, wptw_txt_height) visible(txt_wptw13,false)
txt_wptw14 =                		txt_add(" ", "size:"..wptw_txt_size.."; font:"..wptw_txt_font.."; color: "..wptw_txt_color.."; halign:"..wptw_txt_halign..";", -100, -100, wptw_txt_width, wptw_txt_height) visible(txt_wptw14,false)
txt_wptw15 =                		txt_add(" ", "size:"..wptw_txt_size.."; font:"..wptw_txt_font.."; color: "..wptw_txt_color.."; halign:"..wptw_txt_halign..";", -100, -100, wptw_txt_width, wptw_txt_height) visible(txt_wptw15,false)
txt_wptw16 =                		txt_add(" ", "size:"..wptw_txt_size.."; font:"..wptw_txt_font.."; color: "..wptw_txt_color.."; halign:"..wptw_txt_halign..";", -100, -100, wptw_txt_width, wptw_txt_height) visible(txt_wptw16,false)
txt_wptw17 =                		txt_add(" ", "size:"..wptw_txt_size.."; font:"..wptw_txt_font.."; color: "..wptw_txt_color.."; halign:"..wptw_txt_halign..";", -100, -100, wptw_txt_width, wptw_txt_height) visible(txt_wptw17,false)
txt_wptw18 =                		txt_add(" ", "size:"..wptw_txt_size.."; font:"..wptw_txt_font.."; color: "..wptw_txt_color.."; halign:"..wptw_txt_halign..";", -100, -100, wptw_txt_width, wptw_txt_height) visible(txt_wptw18,false)
txt_wptw19 =                		txt_add(" ", "size:"..wptw_txt_size.."; font:"..wptw_txt_font.."; color: "..wptw_txt_color.."; halign:"..wptw_txt_halign..";", -100, -100, wptw_txt_width, wptw_txt_height) visible(txt_wptw19,false)

txt_wptm0 =                 		txt_add(" ", "size:"..wptm_txt_size.."; font:"..wptm_txt_font.."; color: "..wptm_txt_color.."; halign:"..wptm_txt_halign..";", -100, -100, wptm_txt_width, wptm_txt_height) visible(txt_wptm0,false)
txt_wptm1 =                		 	txt_add(" ", "size:"..wptm_txt_size.."; font:"..wptm_txt_font.."; color: "..wptm_txt_color.."; halign:"..wptm_txt_halign..";", -100, -100, wptm_txt_width, wptm_txt_height) visible(txt_wptm1,false)
txt_wptm2 =                 		txt_add(" ", "size:"..wptm_txt_size.."; font:"..wptm_txt_font.."; color: "..wptm_txt_color.."; halign:"..wptm_txt_halign..";", -100, -100, wptm_txt_width, wptm_txt_height) visible(txt_wptm2,false)
txt_wptm3 =                		 	txt_add(" ", "size:"..wptm_txt_size.."; font:"..wptm_txt_font.."; color: "..wptm_txt_color.."; halign:"..wptm_txt_halign..";", -100, -100, wptm_txt_width, wptm_txt_height) visible(txt_wptm3,false)
txt_wptm4 =                		 	txt_add(" ", "size:"..wptm_txt_size.."; font:"..wptm_txt_font.."; color: "..wptm_txt_color.."; halign:"..wptm_txt_halign..";", -100, -100, wptm_txt_width, wptm_txt_height) visible(txt_wptm4,false)
txt_wptm5 =                		 	txt_add(" ", "size:"..wptm_txt_size.."; font:"..wptm_txt_font.."; color: "..wptm_txt_color.."; halign:"..wptm_txt_halign..";", -100, -100, wptm_txt_width, wptm_txt_height) visible(txt_wptm5,false)
txt_wptm6 =                		 	txt_add(" ", "size:"..wptm_txt_size.."; font:"..wptm_txt_font.."; color: "..wptm_txt_color.."; halign:"..wptm_txt_halign..";", -100, -100, wptm_txt_width, wptm_txt_height) visible(txt_wptm6,false)
txt_wptm7 =                		 	txt_add(" ", "size:"..wptm_txt_size.."; font:"..wptm_txt_font.."; color: "..wptm_txt_color.."; halign:"..wptm_txt_halign..";", -100, -100, wptm_txt_width, wptm_txt_height) visible(txt_wptm7,false)
txt_wptm8 =                		 	txt_add(" ", "size:"..wptm_txt_size.."; font:"..wptm_txt_font.."; color: "..wptm_txt_color.."; halign:"..wptm_txt_halign..";", -100, -100, wptm_txt_width, wptm_txt_height) visible(txt_wptm8,false)
txt_wptm9 =                			txt_add(" ", "size:"..wptm_txt_size.."; font:"..wptm_txt_font.."; color: "..wptm_txt_color.."; halign:"..wptm_txt_halign..";", -100, -100, wptm_txt_width, wptm_txt_height) visible(txt_wptm9,false)
txt_wptm10 =                		txt_add(" ", "size:"..wptm_txt_size.."; font:"..wptm_txt_font.."; color: "..wptm_txt_color.."; halign:"..wptm_txt_halign..";", -100, -100, wptm_txt_width, wptm_txt_height) visible(txt_wptm10,false)
txt_wptm11 =                		txt_add(" ", "size:"..wptm_txt_size.."; font:"..wptm_txt_font.."; color: "..wptm_txt_color.."; halign:"..wptm_txt_halign..";", -100, -100, wptm_txt_width, wptm_txt_height) visible(txt_wptm11,false)
txt_wptm12 =                		txt_add(" ", "size:"..wptm_txt_size.."; font:"..wptm_txt_font.."; color: "..wptm_txt_color.."; halign:"..wptm_txt_halign..";", -100, -100, wptm_txt_width, wptm_txt_height) visible(txt_wptm12,false)
txt_wptm13 =                		txt_add(" ", "size:"..wptm_txt_size.."; font:"..wptm_txt_font.."; color: "..wptm_txt_color.."; halign:"..wptm_txt_halign..";", -100, -100, wptm_txt_width, wptm_txt_height) visible(txt_wptm13,false)
txt_wptm14 =                		txt_add(" ", "size:"..wptm_txt_size.."; font:"..wptm_txt_font.."; color: "..wptm_txt_color.."; halign:"..wptm_txt_halign..";", -100, -100, wptm_txt_width, wptm_txt_height) visible(txt_wptm14,false)
txt_wptm15 =                		txt_add(" ", "size:"..wptm_txt_size.."; font:"..wptm_txt_font.."; color: "..wptm_txt_color.."; halign:"..wptm_txt_halign..";", -100, -100, wptm_txt_width, wptm_txt_height) visible(txt_wptm15,false)
txt_wptm16 =                		txt_add(" ", "size:"..wptm_txt_size.."; font:"..wptm_txt_font.."; color: "..wptm_txt_color.."; halign:"..wptm_txt_halign..";", -100, -100, wptm_txt_width, wptm_txt_height) visible(txt_wptm16,false)
txt_wptm17 =                		txt_add(" ", "size:"..wptm_txt_size.."; font:"..wptm_txt_font.."; color: "..wptm_txt_color.."; halign:"..wptm_txt_halign..";", -100, -100, wptm_txt_width, wptm_txt_height) visible(txt_wptm17,false)
txt_wptm18 =                		txt_add(" ", "size:"..wptm_txt_size.."; font:"..wptm_txt_font.."; color: "..wptm_txt_color.."; halign:"..wptm_txt_halign..";", -100, -100, wptm_txt_width, wptm_txt_height) visible(txt_wptm18,false)
txt_wptm19 =                		txt_add(" ", "size:"..wptm_txt_size.."; font:"..wptm_txt_font.."; color: "..wptm_txt_color.."; halign:"..wptm_txt_halign..";", -100, -100, wptm_txt_width, wptm_txt_height) visible(txt_wptm19,false)

--tcas text white top
txt_tcas_altw_t =					txt_add(" ", "size:"..alt_txt_size.."; font:"..alt_txt_font.."; color: white; halign:"..alt_txt_halign..";", -100, -100, alt_txt_width, alt_txt_height) visible(txt_tcas_altw_t,false)
txt_tcas_altw_t2 =					txt_add(" ", "size:"..alt_txt_size.."; font:"..alt_txt_font.."; color: white; halign:"..alt_txt_halign..";", -100, -100, alt_txt_width, alt_txt_height) visible(txt_tcas_altw_t2,false)
txt_tcas_altw_t3 =					txt_add(" ", "size:"..alt_txt_size.."; font:"..alt_txt_font.."; color: white; halign:"..alt_txt_halign..";", -100, -100, alt_txt_width, alt_txt_height) visible(txt_tcas_altw_t3,false)
txt_tcas_altw_t4 =					txt_add(" ", "size:"..alt_txt_size.."; font:"..alt_txt_font.."; color: white; halign:"..alt_txt_halign..";", -100, -100, alt_txt_width, alt_txt_height) visible(txt_tcas_altw_t4,false)
txt_tcas_altw_t5 =					txt_add(" ", "size:"..alt_txt_size.."; font:"..alt_txt_font.."; color: white; halign:"..alt_txt_halign..";", -100, -100, alt_txt_width, alt_txt_height) visible(txt_tcas_altw_t5,false)
txt_tcas_altw_t6 =					txt_add(" ", "size:"..alt_txt_size.."; font:"..alt_txt_font.."; color: white; halign:"..alt_txt_halign..";", -100, -100, alt_txt_width, alt_txt_height) visible(txt_tcas_altw_t6,false)
txt_tcas_altw_t7 =					txt_add(" ", "size:"..alt_txt_size.."; font:"..alt_txt_font.."; color: white; halign:"..alt_txt_halign..";", -100, -100, alt_txt_width, alt_txt_height) visible(txt_tcas_altw_t7,false)
txt_tcas_altw_t8 =					txt_add(" ", "size:"..alt_txt_size.."; font:"..alt_txt_font.."; color: white; halign:"..alt_txt_halign..";", -100, -100, alt_txt_width, alt_txt_height) visible(txt_tcas_altw_t8,false)
txt_tcas_altw_t9 =					txt_add(" ", "size:"..alt_txt_size.."; font:"..alt_txt_font.."; color: white; halign:"..alt_txt_halign..";", -100, -100, alt_txt_width, alt_txt_height) visible(txt_tcas_altw_t9,false)
txt_tcas_altw_t10 =					txt_add(" ", "size:"..alt_txt_size.."; font:"..alt_txt_font.."; color: white; halign:"..alt_txt_halign..";", -100, -100, alt_txt_width, alt_txt_height) visible(txt_tcas_altw_t10,false)
txt_tcas_altw_t11 =					txt_add(" ", "size:"..alt_txt_size.."; font:"..alt_txt_font.."; color: white; halign:"..alt_txt_halign..";", -100, -100, alt_txt_width, alt_txt_height) visible(txt_tcas_altw_t11,false)
txt_tcas_altw_t12 =					txt_add(" ", "size:"..alt_txt_size.."; font:"..alt_txt_font.."; color: white; halign:"..alt_txt_halign..";", -100, -100, alt_txt_width, alt_txt_height) visible(txt_tcas_altw_t12,false)
txt_tcas_altw_t13 =					txt_add(" ", "size:"..alt_txt_size.."; font:"..alt_txt_font.."; color: white; halign:"..alt_txt_halign..";", -100, -100, alt_txt_width, alt_txt_height) visible(txt_tcas_altw_t13,false)
txt_tcas_altw_t14 =					txt_add(" ", "size:"..alt_txt_size.."; font:"..alt_txt_font.."; color: white; halign:"..alt_txt_halign..";", -100, -100, alt_txt_width, alt_txt_height) visible(txt_tcas_altw_t14,false)
txt_tcas_altw_t15 =					txt_add(" ", "size:"..alt_txt_size.."; font:"..alt_txt_font.."; color: white; halign:"..alt_txt_halign..";", -100, -100, alt_txt_width, alt_txt_height) visible(txt_tcas_altw_t15,false)
txt_tcas_altw_t16 =					txt_add(" ", "size:"..alt_txt_size.."; font:"..alt_txt_font.."; color: white; halign:"..alt_txt_halign..";", -100, -100, alt_txt_width, alt_txt_height) visible(txt_tcas_altw_t16,false)
txt_tcas_altw_t17 =					txt_add(" ", "size:"..alt_txt_size.."; font:"..alt_txt_font.."; color: white; halign:"..alt_txt_halign..";", -100, -100, alt_txt_width, alt_txt_height) visible(txt_tcas_altw_t17,false)
txt_tcas_altw_t18 =					txt_add(" ", "size:"..alt_txt_size.."; font:"..alt_txt_font.."; color: white; halign:"..alt_txt_halign..";", -100, -100, alt_txt_width, alt_txt_height) visible(txt_tcas_altw_t18,false)
txt_tcas_altw_t19 =					txt_add(" ", "size:"..alt_txt_size.."; font:"..alt_txt_font.."; color: white; halign:"..alt_txt_halign..";", -100, -100, alt_txt_width, alt_txt_height) visible(txt_tcas_altw_t19,false)
-- tcas text white bottom
txt_tcas_altw_b =					txt_add(" ", "size:"..alt_txt_size.."; font:"..alt_txt_font.."; color: white; halign:"..alt_txt_halign..";", -100, -100, alt_txt_width, alt_txt_height) visible(txt_tcas_altw_b,false)
txt_tcas_altw_b2 =					txt_add(" ", "size:"..alt_txt_size.."; font:"..alt_txt_font.."; color: white; halign:"..alt_txt_halign..";", -100, -100, alt_txt_width, alt_txt_height) visible(txt_tcas_altw_b2,false)
txt_tcas_altw_b3 =					txt_add(" ", "size:"..alt_txt_size.."; font:"..alt_txt_font.."; color: white; halign:"..alt_txt_halign..";", -100, -100, alt_txt_width, alt_txt_height) visible(txt_tcas_altw_b3,false)
txt_tcas_altw_b4 =					txt_add(" ", "size:"..alt_txt_size.."; font:"..alt_txt_font.."; color: white; halign:"..alt_txt_halign..";", -100, -100, alt_txt_width, alt_txt_height) visible(txt_tcas_altw_b4,false)
txt_tcas_altw_b5 =					txt_add(" ", "size:"..alt_txt_size.."; font:"..alt_txt_font.."; color: white; halign:"..alt_txt_halign..";", -100, -100, alt_txt_width, alt_txt_height) visible(txt_tcas_altw_b5,false)
txt_tcas_altw_b6 =					txt_add(" ", "size:"..alt_txt_size.."; font:"..alt_txt_font.."; color: white; halign:"..alt_txt_halign..";", -100, -100, alt_txt_width, alt_txt_height) visible(txt_tcas_altw_b6,false)
txt_tcas_altw_b7 =					txt_add(" ", "size:"..alt_txt_size.."; font:"..alt_txt_font.."; color: white; halign:"..alt_txt_halign..";", -100, -100, alt_txt_width, alt_txt_height) visible(txt_tcas_altw_b7,false)
txt_tcas_altw_b8 =					txt_add(" ", "size:"..alt_txt_size.."; font:"..alt_txt_font.."; color: white; halign:"..alt_txt_halign..";", -100, -100, alt_txt_width, alt_txt_height) visible(txt_tcas_altw_b8,false)
txt_tcas_altw_b9 =					txt_add(" ", "size:"..alt_txt_size.."; font:"..alt_txt_font.."; color: white; halign:"..alt_txt_halign..";", -100, -100, alt_txt_width, alt_txt_height) visible(txt_tcas_altw_b9,false)
txt_tcas_altw_b10 =					txt_add(" ", "size:"..alt_txt_size.."; font:"..alt_txt_font.."; color: white; halign:"..alt_txt_halign..";", -100, -100, alt_txt_width, alt_txt_height) visible(txt_tcas_altw_b10,false)
txt_tcas_altw_b11 =					txt_add(" ", "size:"..alt_txt_size.."; font:"..alt_txt_font.."; color: white; halign:"..alt_txt_halign..";", -100, -100, alt_txt_width, alt_txt_height) visible(txt_tcas_altw_b11,false)
txt_tcas_altw_b12 =					txt_add(" ", "size:"..alt_txt_size.."; font:"..alt_txt_font.."; color: white; halign:"..alt_txt_halign..";", -100, -100, alt_txt_width, alt_txt_height) visible(txt_tcas_altw_b12,false)
txt_tcas_altw_b13 =					txt_add(" ", "size:"..alt_txt_size.."; font:"..alt_txt_font.."; color: white; halign:"..alt_txt_halign..";", -100, -100, alt_txt_width, alt_txt_height) visible(txt_tcas_altw_b13,false)
txt_tcas_altw_b14 =					txt_add(" ", "size:"..alt_txt_size.."; font:"..alt_txt_font.."; color: white; halign:"..alt_txt_halign..";", -100, -100, alt_txt_width, alt_txt_height) visible(txt_tcas_altw_b14,false)
txt_tcas_altw_b15 =					txt_add(" ", "size:"..alt_txt_size.."; font:"..alt_txt_font.."; color: white; halign:"..alt_txt_halign..";", -100, -100, alt_txt_width, alt_txt_height) visible(txt_tcas_altw_b15,false)
txt_tcas_altw_b16 =					txt_add(" ", "size:"..alt_txt_size.."; font:"..alt_txt_font.."; color: white; halign:"..alt_txt_halign..";", -100, -100, alt_txt_width, alt_txt_height) visible(txt_tcas_altw_b16,false)
txt_tcas_altw_b17 =					txt_add(" ", "size:"..alt_txt_size.."; font:"..alt_txt_font.."; color: white; halign:"..alt_txt_halign..";", -100, -100, alt_txt_width, alt_txt_height) visible(txt_tcas_altw_b17,false)
txt_tcas_altw_b18 =					txt_add(" ", "size:"..alt_txt_size.."; font:"..alt_txt_font.."; color: white; halign:"..alt_txt_halign..";", -100, -100, alt_txt_width, alt_txt_height) visible(txt_tcas_altw_b18,false)
txt_tcas_altw_b19 =					txt_add(" ", "size:"..alt_txt_size.."; font:"..alt_txt_font.."; color: white; halign:"..alt_txt_halign..";", -100, -100, alt_txt_width, alt_txt_height) visible(txt_tcas_altw_b19,false)

--tcas text amber top
txt_tcas_alta_t =					txt_add(" ", "size:"..alt_txt_size.."; font:"..alt_txt_font.."; color: #FFAE2A; halign:"..alt_txt_halign..";", -100, -100, alt_txt_width, alt_txt_height) visible(txt_tcas_alta_t,false)
txt_tcas_alta_t2 =					txt_add(" ", "size:"..alt_txt_size.."; font:"..alt_txt_font.."; color: #FFAE2A; halign:"..alt_txt_halign..";", -100, -100, alt_txt_width, alt_txt_height) visible(txt_tcas_alta_t2,false)
txt_tcas_alta_t3 =					txt_add(" ", "size:"..alt_txt_size.."; font:"..alt_txt_font.."; color: #FFAE2A; halign:"..alt_txt_halign..";", -100, -100, alt_txt_width, alt_txt_height) visible(txt_tcas_alta_t3,false)
txt_tcas_alta_t4 =					txt_add(" ", "size:"..alt_txt_size.."; font:"..alt_txt_font.."; color: #FFAE2A; halign:"..alt_txt_halign..";", -100, -100, alt_txt_width, alt_txt_height) visible(txt_tcas_alta_t4,false)
txt_tcas_alta_t5 =					txt_add(" ", "size:"..alt_txt_size.."; font:"..alt_txt_font.."; color: #FFAE2A; halign:"..alt_txt_halign..";", -100, -100, alt_txt_width, alt_txt_height) visible(txt_tcas_alta_t5,false)
txt_tcas_alta_t6 =					txt_add(" ", "size:"..alt_txt_size.."; font:"..alt_txt_font.."; color: #FFAE2A; halign:"..alt_txt_halign..";", -100, -100, alt_txt_width, alt_txt_height) visible(txt_tcas_alta_t6,false)
txt_tcas_alta_t7 =					txt_add(" ", "size:"..alt_txt_size.."; font:"..alt_txt_font.."; color: #FFAE2A; halign:"..alt_txt_halign..";", -100, -100, alt_txt_width, alt_txt_height) visible(txt_tcas_alta_t7,false)
txt_tcas_alta_t8 =					txt_add(" ", "size:"..alt_txt_size.."; font:"..alt_txt_font.."; color: #FFAE2A; halign:"..alt_txt_halign..";", -100, -100, alt_txt_width, alt_txt_height) visible(txt_tcas_alta_t8,false)
txt_tcas_alta_t9 =					txt_add(" ", "size:"..alt_txt_size.."; font:"..alt_txt_font.."; color: #FFAE2A; halign:"..alt_txt_halign..";", -100, -100, alt_txt_width, alt_txt_height) visible(txt_tcas_alta_t9,false)
txt_tcas_alta_t10 =					txt_add(" ", "size:"..alt_txt_size.."; font:"..alt_txt_font.."; color: #FFAE2A; halign:"..alt_txt_halign..";", -100, -100, alt_txt_width, alt_txt_height) visible(txt_tcas_alta_t10,false)
txt_tcas_alta_t11 =					txt_add(" ", "size:"..alt_txt_size.."; font:"..alt_txt_font.."; color: #FFAE2A; halign:"..alt_txt_halign..";", -100, -100, alt_txt_width, alt_txt_height) visible(txt_tcas_alta_t11,false)
txt_tcas_alta_t12 =					txt_add(" ", "size:"..alt_txt_size.."; font:"..alt_txt_font.."; color: #FFAE2A; halign:"..alt_txt_halign..";", -100, -100, alt_txt_width, alt_txt_height) visible(txt_tcas_alta_t12,false)
txt_tcas_alta_t13 =					txt_add(" ", "size:"..alt_txt_size.."; font:"..alt_txt_font.."; color: #FFAE2A; halign:"..alt_txt_halign..";", -100, -100, alt_txt_width, alt_txt_height) visible(txt_tcas_alta_t13,false)
txt_tcas_alta_t14 =					txt_add(" ", "size:"..alt_txt_size.."; font:"..alt_txt_font.."; color: #FFAE2A; halign:"..alt_txt_halign..";", -100, -100, alt_txt_width, alt_txt_height) visible(txt_tcas_alta_t14,false)
txt_tcas_alta_t15 =					txt_add(" ", "size:"..alt_txt_size.."; font:"..alt_txt_font.."; color: #FFAE2A; halign:"..alt_txt_halign..";", -100, -100, alt_txt_width, alt_txt_height) visible(txt_tcas_alta_t15,false)
txt_tcas_alta_t16 =					txt_add(" ", "size:"..alt_txt_size.."; font:"..alt_txt_font.."; color: #FFAE2A; halign:"..alt_txt_halign..";", -100, -100, alt_txt_width, alt_txt_height) visible(txt_tcas_alta_t16,false)
txt_tcas_alta_t17 =					txt_add(" ", "size:"..alt_txt_size.."; font:"..alt_txt_font.."; color: #FFAE2A; halign:"..alt_txt_halign..";", -100, -100, alt_txt_width, alt_txt_height) visible(txt_tcas_alta_t17,false)
txt_tcas_alta_t18 =					txt_add(" ", "size:"..alt_txt_size.."; font:"..alt_txt_font.."; color: #FFAE2A; halign:"..alt_txt_halign..";", -100, -100, alt_txt_width, alt_txt_height) visible(txt_tcas_alta_t18,false)
txt_tcas_alta_t19 =					txt_add(" ", "size:"..alt_txt_size.."; font:"..alt_txt_font.."; color: #FFAE2A; halign:"..alt_txt_halign..";", -100, -100, alt_txt_width, alt_txt_height) visible(txt_tcas_alta_t19,false)
-- tcas text amber bottom
txt_tcas_alta_b =					txt_add(" ", "size:"..alt_txt_size.."; font:"..alt_txt_font.."; color: #FFAE2A; halign:"..alt_txt_halign..";", -100, -100, alt_txt_width, alt_txt_height) visible(txt_tcas_alta_b,false)
txt_tcas_alta_b2 =					txt_add(" ", "size:"..alt_txt_size.."; font:"..alt_txt_font.."; color: #FFAE2A; halign:"..alt_txt_halign..";", -100, -100, alt_txt_width, alt_txt_height) visible(txt_tcas_alta_b2,false)
txt_tcas_alta_b3 =					txt_add(" ", "size:"..alt_txt_size.."; font:"..alt_txt_font.."; color: #FFAE2A; halign:"..alt_txt_halign..";", -100, -100, alt_txt_width, alt_txt_height) visible(txt_tcas_alta_b3,false)
txt_tcas_alta_b4 =					txt_add(" ", "size:"..alt_txt_size.."; font:"..alt_txt_font.."; color: #FFAE2A; halign:"..alt_txt_halign..";", -100, -100, alt_txt_width, alt_txt_height) visible(txt_tcas_alta_b4,false)
txt_tcas_alta_b5 =					txt_add(" ", "size:"..alt_txt_size.."; font:"..alt_txt_font.."; color: #FFAE2A; halign:"..alt_txt_halign..";", -100, -100, alt_txt_width, alt_txt_height) visible(txt_tcas_alta_b5,false)
txt_tcas_alta_b6 =					txt_add(" ", "size:"..alt_txt_size.."; font:"..alt_txt_font.."; color: #FFAE2A; halign:"..alt_txt_halign..";", -100, -100, alt_txt_width, alt_txt_height) visible(txt_tcas_alta_b6,false)
txt_tcas_alta_b7 =					txt_add(" ", "size:"..alt_txt_size.."; font:"..alt_txt_font.."; color: #FFAE2A; halign:"..alt_txt_halign..";", -100, -100, alt_txt_width, alt_txt_height) visible(txt_tcas_alta_b7,false)
txt_tcas_alta_b8 =					txt_add(" ", "size:"..alt_txt_size.."; font:"..alt_txt_font.."; color: #FFAE2A; halign:"..alt_txt_halign..";", -100, -100, alt_txt_width, alt_txt_height) visible(txt_tcas_alta_b8,false)
txt_tcas_alta_b9 =					txt_add(" ", "size:"..alt_txt_size.."; font:"..alt_txt_font.."; color: #FFAE2A; halign:"..alt_txt_halign..";", -100, -100, alt_txt_width, alt_txt_height) visible(txt_tcas_alta_b9,false)
txt_tcas_alta_b10 =					txt_add(" ", "size:"..alt_txt_size.."; font:"..alt_txt_font.."; color: #FFAE2A; halign:"..alt_txt_halign..";", -100, -100, alt_txt_width, alt_txt_height) visible(txt_tcas_alta_b10,false)
txt_tcas_alta_b11 =					txt_add(" ", "size:"..alt_txt_size.."; font:"..alt_txt_font.."; color: #FFAE2A; halign:"..alt_txt_halign..";", -100, -100, alt_txt_width, alt_txt_height) visible(txt_tcas_alta_b11,false)
txt_tcas_alta_b12 =					txt_add(" ", "size:"..alt_txt_size.."; font:"..alt_txt_font.."; color: #FFAE2A; halign:"..alt_txt_halign..";", -100, -100, alt_txt_width, alt_txt_height) visible(txt_tcas_alta_b12,false)
txt_tcas_alta_b13 =					txt_add(" ", "size:"..alt_txt_size.."; font:"..alt_txt_font.."; color: #FFAE2A; halign:"..alt_txt_halign..";", -100, -100, alt_txt_width, alt_txt_height) visible(txt_tcas_alta_b13,false)
txt_tcas_alta_b14 =					txt_add(" ", "size:"..alt_txt_size.."; font:"..alt_txt_font.."; color: #FFAE2A; halign:"..alt_txt_halign..";", -100, -100, alt_txt_width, alt_txt_height) visible(txt_tcas_alta_b14,false)
txt_tcas_alta_b15 =					txt_add(" ", "size:"..alt_txt_size.."; font:"..alt_txt_font.."; color: #FFAE2A; halign:"..alt_txt_halign..";", -100, -100, alt_txt_width, alt_txt_height) visible(txt_tcas_alta_b15,false)
txt_tcas_alta_b16 =					txt_add(" ", "size:"..alt_txt_size.."; font:"..alt_txt_font.."; color: #FFAE2A; halign:"..alt_txt_halign..";", -100, -100, alt_txt_width, alt_txt_height) visible(txt_tcas_alta_b16,false)
txt_tcas_alta_b17 =					txt_add(" ", "size:"..alt_txt_size.."; font:"..alt_txt_font.."; color: #FFAE2A; halign:"..alt_txt_halign..";", -100, -100, alt_txt_width, alt_txt_height) visible(txt_tcas_alta_b17,false)
txt_tcas_alta_b18 =					txt_add(" ", "size:"..alt_txt_size.."; font:"..alt_txt_font.."; color: #FFAE2A; halign:"..alt_txt_halign..";", -100, -100, alt_txt_width, alt_txt_height) visible(txt_tcas_alta_b18,false)
txt_tcas_alta_b19 =					txt_add(" ", "size:"..alt_txt_size.."; font:"..alt_txt_font.."; color: #FFAE2A; halign:"..alt_txt_halign..";", -100, -100, alt_txt_width, alt_txt_height) visible(txt_tcas_alta_b19,false)

--tcas text red top
txt_tcas_altr_t =					txt_add(" ", "size:"..alt_txt_size.."; font:"..alt_txt_font.."; color: red; halign:"..alt_txt_halign..";", -100, -100, alt_txt_width, alt_txt_height) visible(txt_tcas_altr_t,false)
txt_tcas_altr_t2 =					txt_add(" ", "size:"..alt_txt_size.."; font:"..alt_txt_font.."; color: red; halign:"..alt_txt_halign..";", -100, -100, alt_txt_width, alt_txt_height) visible(txt_tcas_altr_t2,false)
txt_tcas_altr_t3 =					txt_add(" ", "size:"..alt_txt_size.."; font:"..alt_txt_font.."; color: red; halign:"..alt_txt_halign..";", -100, -100, alt_txt_width, alt_txt_height) visible(txt_tcas_altr_t3,false)
txt_tcas_altr_t4 =					txt_add(" ", "size:"..alt_txt_size.."; font:"..alt_txt_font.."; color: red; halign:"..alt_txt_halign..";", -100, -100, alt_txt_width, alt_txt_height) visible(txt_tcas_altr_t4,false)
txt_tcas_altr_t5 =					txt_add(" ", "size:"..alt_txt_size.."; font:"..alt_txt_font.."; color: red; halign:"..alt_txt_halign..";", -100, -100, alt_txt_width, alt_txt_height) visible(txt_tcas_altr_t5,false)
txt_tcas_altr_t6 =					txt_add(" ", "size:"..alt_txt_size.."; font:"..alt_txt_font.."; color: red; halign:"..alt_txt_halign..";", -100, -100, alt_txt_width, alt_txt_height) visible(txt_tcas_altr_t6,false)
txt_tcas_altr_t7 =					txt_add(" ", "size:"..alt_txt_size.."; font:"..alt_txt_font.."; color: red; halign:"..alt_txt_halign..";", -100, -100, alt_txt_width, alt_txt_height) visible(txt_tcas_altr_t7,false)
txt_tcas_altr_t8 =					txt_add(" ", "size:"..alt_txt_size.."; font:"..alt_txt_font.."; color: red; halign:"..alt_txt_halign..";", -100, -100, alt_txt_width, alt_txt_height) visible(txt_tcas_altr_t8,false)
txt_tcas_altr_t9 =					txt_add(" ", "size:"..alt_txt_size.."; font:"..alt_txt_font.."; color: red; halign:"..alt_txt_halign..";", -100, -100, alt_txt_width, alt_txt_height) visible(txt_tcas_altr_t9,false)
txt_tcas_altr_t10 =					txt_add(" ", "size:"..alt_txt_size.."; font:"..alt_txt_font.."; color: red; halign:"..alt_txt_halign..";", -100, -100, alt_txt_width, alt_txt_height) visible(txt_tcas_altr_t10,false)
txt_tcas_altr_t11 =					txt_add(" ", "size:"..alt_txt_size.."; font:"..alt_txt_font.."; color: red; halign:"..alt_txt_halign..";", -100, -100, alt_txt_width, alt_txt_height) visible(txt_tcas_altr_t11,false)
txt_tcas_altr_t12 =					txt_add(" ", "size:"..alt_txt_size.."; font:"..alt_txt_font.."; color: red; halign:"..alt_txt_halign..";", -100, -100, alt_txt_width, alt_txt_height) visible(txt_tcas_altr_t12,false)
txt_tcas_altr_t13 =					txt_add(" ", "size:"..alt_txt_size.."; font:"..alt_txt_font.."; color: red; halign:"..alt_txt_halign..";", -100, -100, alt_txt_width, alt_txt_height) visible(txt_tcas_altr_t13,false)
txt_tcas_altr_t14 =					txt_add(" ", "size:"..alt_txt_size.."; font:"..alt_txt_font.."; color: red; halign:"..alt_txt_halign..";", -100, -100, alt_txt_width, alt_txt_height) visible(txt_tcas_altr_t14,false)
txt_tcas_altr_t15 =					txt_add(" ", "size:"..alt_txt_size.."; font:"..alt_txt_font.."; color: red; halign:"..alt_txt_halign..";", -100, -100, alt_txt_width, alt_txt_height) visible(txt_tcas_altr_t15,false)
txt_tcas_altr_t16 =					txt_add(" ", "size:"..alt_txt_size.."; font:"..alt_txt_font.."; color: red; halign:"..alt_txt_halign..";", -100, -100, alt_txt_width, alt_txt_height) visible(txt_tcas_altr_t16,false)
txt_tcas_altr_t17 =					txt_add(" ", "size:"..alt_txt_size.."; font:"..alt_txt_font.."; color: red; halign:"..alt_txt_halign..";", -100, -100, alt_txt_width, alt_txt_height) visible(txt_tcas_altr_t17,false)
txt_tcas_altr_t18 =					txt_add(" ", "size:"..alt_txt_size.."; font:"..alt_txt_font.."; color: red; halign:"..alt_txt_halign..";", -100, -100, alt_txt_width, alt_txt_height) visible(txt_tcas_altr_t18,false)
txt_tcas_altr_t19 =					txt_add(" ", "size:"..alt_txt_size.."; font:"..alt_txt_font.."; color: red; halign:"..alt_txt_halign..";", -100, -100, alt_txt_width, alt_txt_height) visible(txt_tcas_altr_t19,false)
-- tcas text red bottom
txt_tcas_altr_b =					txt_add(" ", "size:"..alt_txt_size.."; font:"..alt_txt_font.."; color: red; halign:"..alt_txt_halign..";", -100, -100, alt_txt_width, alt_txt_height) visible(txt_tcas_altr_b,false)
txt_tcas_altr_b2 =					txt_add(" ", "size:"..alt_txt_size.."; font:"..alt_txt_font.."; color: red; halign:"..alt_txt_halign..";", -100, -100, alt_txt_width, alt_txt_height) visible(txt_tcas_altr_b2,false)
txt_tcas_altr_b3 =					txt_add(" ", "size:"..alt_txt_size.."; font:"..alt_txt_font.."; color: red; halign:"..alt_txt_halign..";", -100, -100, alt_txt_width, alt_txt_height) visible(txt_tcas_altr_b3,false)
txt_tcas_altr_b4 =					txt_add(" ", "size:"..alt_txt_size.."; font:"..alt_txt_font.."; color: red; halign:"..alt_txt_halign..";", -100, -100, alt_txt_width, alt_txt_height) visible(txt_tcas_altr_b4,false)
txt_tcas_altr_b5 =					txt_add(" ", "size:"..alt_txt_size.."; font:"..alt_txt_font.."; color: red; halign:"..alt_txt_halign..";", -100, -100, alt_txt_width, alt_txt_height) visible(txt_tcas_altr_b5,false)
txt_tcas_altr_b6 =					txt_add(" ", "size:"..alt_txt_size.."; font:"..alt_txt_font.."; color: red; halign:"..alt_txt_halign..";", -100, -100, alt_txt_width, alt_txt_height) visible(txt_tcas_altr_b6,false)
txt_tcas_altr_b7 =					txt_add(" ", "size:"..alt_txt_size.."; font:"..alt_txt_font.."; color: red; halign:"..alt_txt_halign..";", -100, -100, alt_txt_width, alt_txt_height) visible(txt_tcas_altr_b7,false)
txt_tcas_altr_b8 =					txt_add(" ", "size:"..alt_txt_size.."; font:"..alt_txt_font.."; color: red; halign:"..alt_txt_halign..";", -100, -100, alt_txt_width, alt_txt_height) visible(txt_tcas_altr_b8,false)
txt_tcas_altr_b9 =					txt_add(" ", "size:"..alt_txt_size.."; font:"..alt_txt_font.."; color: red; halign:"..alt_txt_halign..";", -100, -100, alt_txt_width, alt_txt_height) visible(txt_tcas_altr_b9,false)
txt_tcas_altr_b10 =					txt_add(" ", "size:"..alt_txt_size.."; font:"..alt_txt_font.."; color: red; halign:"..alt_txt_halign..";", -100, -100, alt_txt_width, alt_txt_height) visible(txt_tcas_altr_b10,false)
txt_tcas_altr_b11 =					txt_add(" ", "size:"..alt_txt_size.."; font:"..alt_txt_font.."; color: red; halign:"..alt_txt_halign..";", -100, -100, alt_txt_width, alt_txt_height) visible(txt_tcas_altr_b11,false)
txt_tcas_altr_b12 =					txt_add(" ", "size:"..alt_txt_size.."; font:"..alt_txt_font.."; color: red; halign:"..alt_txt_halign..";", -100, -100, alt_txt_width, alt_txt_height) visible(txt_tcas_altr_b12,false)
txt_tcas_altr_b13 =					txt_add(" ", "size:"..alt_txt_size.."; font:"..alt_txt_font.."; color: red; halign:"..alt_txt_halign..";", -100, -100, alt_txt_width, alt_txt_height) visible(txt_tcas_altr_b13,false)
txt_tcas_altr_b14 =					txt_add(" ", "size:"..alt_txt_size.."; font:"..alt_txt_font.."; color: red; halign:"..alt_txt_halign..";", -100, -100, alt_txt_width, alt_txt_height) visible(txt_tcas_altr_b14,false)
txt_tcas_altr_b15 =					txt_add(" ", "size:"..alt_txt_size.."; font:"..alt_txt_font.."; color: red; halign:"..alt_txt_halign..";", -100, -100, alt_txt_width, alt_txt_height) visible(txt_tcas_altr_b15,false)
txt_tcas_altr_b16 =					txt_add(" ", "size:"..alt_txt_size.."; font:"..alt_txt_font.."; color: red; halign:"..alt_txt_halign..";", -100, -100, alt_txt_width, alt_txt_height) visible(txt_tcas_altr_b16,false)
txt_tcas_altr_b17 =					txt_add(" ", "size:"..alt_txt_size.."; font:"..alt_txt_font.."; color: red; halign:"..alt_txt_halign..";", -100, -100, alt_txt_width, alt_txt_height) visible(txt_tcas_altr_b17,false)
txt_tcas_altr_b18 =					txt_add(" ", "size:"..alt_txt_size.."; font:"..alt_txt_font.."; color: red; halign:"..alt_txt_halign..";", -100, -100, alt_txt_width, alt_txt_height) visible(txt_tcas_altr_b18,false)
txt_tcas_altr_b19 =					txt_add(" ", "size:"..alt_txt_size.."; font:"..alt_txt_font.."; color: red; halign:"..alt_txt_halign..";", -100, -100, alt_txt_width, alt_txt_height) visible(txt_tcas_altr_b19,false)

txt_tcas_warning_a =				txt_add("TRAFFIC", "size:20px; font:my737glass.otf; color:#FFAE2A; halign:right;", 680, 330, 100, 24) 	visible(txt_tcas_warning_a,false)
txt_tcas_warning_r =				txt_add("TRAFFIC", "size:20px; font:my737glass.otf; color:red; halign:right;", 680, 330, 100, 24) 		visible(txt_tcas_warning_r,false)

-- images

img_airport_circle0 =				img_add("img_airport_circle.png", -100, -100, 21, 21)					visible(img_airport_circle0,false)
img_airport_circle1 =				img_add("img_airport_circle.png", -100, -100, 21, 21)					visible(img_airport_circle1,false)
img_airport_circle2 =				img_add("img_airport_circle.png", -100, -100, 21, 21)					visible(img_airport_circle2,false)
img_airport_circle3 =				img_add("img_airport_circle.png", -100, -100, 21, 21)					visible(img_airport_circle3,false)
img_airport_circle4 =				img_add("img_airport_circle.png", -100, -100, 21, 21)					visible(img_airport_circle4,false)
img_airport_circle5 =				img_add("img_airport_circle.png", -100, -100, 21, 21)					visible(img_airport_circle5,false)
img_airport_circle6 =				img_add("img_airport_circle.png", -100, -100, 21, 21)					visible(img_airport_circle6,false)
img_airport_circle7 =				img_add("img_airport_circle.png", -100, -100, 21, 21)					visible(img_airport_circle7,false)
img_airport_circle8 =				img_add("img_airport_circle.png", -100, -100, 21, 21)					visible(img_airport_circle8,false)
img_airport_circle9 =				img_add("img_airport_circle.png", -100, -100, 21, 21)					visible(img_airport_circle9,false)
img_airport_circle10 =				img_add("img_airport_circle.png", -100, -100, 21, 21)					visible(img_airport_circle10,false)
img_airport_circle11 =				img_add("img_airport_circle.png", -100, -100, 21, 21)					visible(img_airport_circle11,false)
img_airport_circle12 =				img_add("img_airport_circle.png", -100, -100, 21, 21)					visible(img_airport_circle12,false)
img_airport_circle13 =				img_add("img_airport_circle.png", -100, -100, 21, 21)					visible(img_airport_circle13,false)
img_airport_circle14 =				img_add("img_airport_circle.png", -100, -100, 21, 21)					visible(img_airport_circle14,false)
img_airport_circle15 =				img_add("img_airport_circle.png", -100, -100, 21, 21)					visible(img_airport_circle15,false)
img_airport_circle16 =				img_add("img_airport_circle.png", -100, -100, 21, 21)					visible(img_airport_circle16,false)
img_airport_circle17 =				img_add("img_airport_circle.png", -100, -100, 21, 21)					visible(img_airport_circle17,false)
img_airport_circle18 =				img_add("img_airport_circle.png", -100, -100, 21, 21)					visible(img_airport_circle18,false)
img_airport_circle19 =				img_add("img_airport_circle.png", -100, -100, 21, 21)					visible(img_airport_circle19,false)
img_airport_circle20 =				img_add("img_airport_circle.png", -100, -100, 21, 21)					visible(img_airport_circle20,false)
img_airport_circle21 =				img_add("img_airport_circle.png", -100, -100, 21, 21)					visible(img_airport_circle21,false)
img_airport_circle22 =				img_add("img_airport_circle.png", -100, -100, 21, 21)					visible(img_airport_circle22,false)
img_airport_circle23 =				img_add("img_airport_circle.png", -100, -100, 21, 21)					visible(img_airport_circle23,false)
img_airport_circle24 =				img_add("img_airport_circle.png", -100, -100, 21, 21)					visible(img_airport_circle24,false)
img_airport_circle25 =				img_add("img_airport_circle.png", -100, -100, 21, 21)					visible(img_airport_circle25,false)
img_airport_circle26 =				img_add("img_airport_circle.png", -100, -100, 21, 21)					visible(img_airport_circle26,false)
img_airport_circle27 =				img_add("img_airport_circle.png", -100, -100, 21, 21)					visible(img_airport_circle27,false)
img_airport_circle28 =				img_add("img_airport_circle.png", -100, -100, 21, 21)					visible(img_airport_circle28,false)
img_airport_circle29 =				img_add("img_airport_circle.png", -100, -100, 21, 21)					visible(img_airport_circle29,false)

img_vortac_cyan0 =				    img_add("img_vortac_cyan.png", -100, -100, 40.892, 35.414)               visible(img_vortac_cyan0,false)
img_vortac_cyan1 =				    img_add("img_vortac_cyan.png", -100, -100, 40.892, 35.414)               visible(img_vortac_cyan1,false)
img_vortac_cyan2 =				    img_add("img_vortac_cyan.png", -100, -100, 40.892, 35.414)               visible(img_vortac_cyan2,false)
img_vortac_cyan3 =				    img_add("img_vortac_cyan.png", -100, -100, 40.892, 35.414)               visible(img_vortac_cyan3,false)
img_vortac_cyan4 =				    img_add("img_vortac_cyan.png", -100, -100, 40.892, 35.414)               visible(img_vortac_cyan4,false)
img_vortac_cyan5 =				    img_add("img_vortac_cyan.png", -100, -100, 40.892, 35.414)               visible(img_vortac_cyan5,false)
img_vortac_cyan6 =				    img_add("img_vortac_cyan.png", -100, -100, 40.892, 35.414)               visible(img_vortac_cyan6,false)
img_vortac_cyan7 =				    img_add("img_vortac_cyan.png", -100, -100, 40.892, 35.414)               visible(img_vortac_cyan7,false)
img_vortac_cyan8 =				    img_add("img_vortac_cyan.png", -100, -100, 40.892, 35.414)               visible(img_vortac_cyan8,false)
img_vortac_cyan9 =				    img_add("img_vortac_cyan.png", -100, -100, 40.892, 35.414)               visible(img_vortac_cyan9,false)
img_vortac_cyan10 =				    img_add("img_vortac_cyan.png", -100, -100, 40.892, 35.414)               visible(img_vortac_cyan10,false)
img_vortac_cyan11 =				    img_add("img_vortac_cyan.png", -100, -100, 40.892, 35.414)               visible(img_vortac_cyan11,false)
img_vortac_cyan12 =				    img_add("img_vortac_cyan.png", -100, -100, 40.892, 35.414)               visible(img_vortac_cyan12,false)
img_vortac_cyan13 =				    img_add("img_vortac_cyan.png", -100, -100, 40.892, 35.414)               visible(img_vortac_cyan13,false)
img_vortac_cyan14 =				    img_add("img_vortac_cyan.png", -100, -100, 40.892, 35.414)               visible(img_vortac_cyan14,false)
img_vortac_cyan15 =				    img_add("img_vortac_cyan.png", -100, -100, 40.892, 35.414)               visible(img_vortac_cyan15,false)
img_vortac_cyan16 =				    img_add("img_vortac_cyan.png", -100, -100, 40.892, 35.414)               visible(img_vortac_cyan16,false)
img_vortac_cyan17 =				    img_add("img_vortac_cyan.png", -100, -100, 40.892, 35.414)               visible(img_vortac_cyan17,false)
img_vortac_cyan18 =				    img_add("img_vortac_cyan.png", -100, -100, 40.892, 35.414)               visible(img_vortac_cyan18,false)
img_vortac_cyan19 =				    img_add("img_vortac_cyan.png", -100, -100, 40.892, 35.414)               visible(img_vortac_cyan19,false)
img_vortac_cyan20 =				    img_add("img_vortac_cyan.png", -100, -100, 40.892, 35.414)               visible(img_vortac_cyan20,false)
img_vortac_cyan21 =				    img_add("img_vortac_cyan.png", -100, -100, 40.892, 35.414)               visible(img_vortac_cyan21,false)
img_vortac_cyan22 =				    img_add("img_vortac_cyan.png", -100, -100, 40.892, 35.414)               visible(img_vortac_cyan22,false)
img_vortac_cyan23 =				    img_add("img_vortac_cyan.png", -100, -100, 40.892, 35.414)               visible(img_vortac_cyan23,false)
img_vortac_cyan24 =				    img_add("img_vortac_cyan.png", -100, -100, 40.892, 35.414)               visible(img_vortac_cyan24,false)
img_vortac_cyan25 =				    img_add("img_vortac_cyan.png", -100, -100, 40.892, 35.414)               visible(img_vortac_cyan25,false)
img_vortac_cyan26 =				    img_add("img_vortac_cyan.png", -100, -100, 40.892, 35.414)               visible(img_vortac_cyan26,false)
img_vortac_cyan27 =				    img_add("img_vortac_cyan.png", -100, -100, 40.892, 35.414)               visible(img_vortac_cyan27,false)
img_vortac_cyan28 =				    img_add("img_vortac_cyan.png", -100, -100, 40.892, 35.414)               visible(img_vortac_cyan28,false)
img_vortac_cyan29 =				    img_add("img_vortac_cyan.png", -100, -100, 40.892, 35.414)               visible(img_vortac_cyan29,false)
img_vortac_cyan30 =				    img_add("img_vortac_cyan.png", -100, -100, 40.892, 35.414)               visible(img_vortac_cyan30,false)
img_vortac_cyan31 =				    img_add("img_vortac_cyan.png", -100, -100, 40.892, 35.414)               visible(img_vortac_cyan31,false)
img_vortac_cyan32 =				    img_add("img_vortac_cyan.png", -100, -100, 40.892, 35.414)               visible(img_vortac_cyan32,false)
img_vortac_cyan33 =				    img_add("img_vortac_cyan.png", -100, -100, 40.892, 35.414)               visible(img_vortac_cyan33,false)
img_vortac_cyan34 =				    img_add("img_vortac_cyan.png", -100, -100, 40.892, 35.414)               visible(img_vortac_cyan34,false)
img_vortac_cyan35 =				    img_add("img_vortac_cyan.png", -100, -100, 40.892, 35.414)               visible(img_vortac_cyan35,false)
img_vortac_cyan36 =				    img_add("img_vortac_cyan.png", -100, -100, 40.892, 35.414)               visible(img_vortac_cyan36,false)
img_vortac_cyan37 =				    img_add("img_vortac_cyan.png", -100, -100, 40.892, 35.414)               visible(img_vortac_cyan37,false)
img_vortac_cyan38 =				    img_add("img_vortac_cyan.png", -100, -100, 40.892, 35.414)               visible(img_vortac_cyan38,false)
img_vortac_cyan39 =				    img_add("img_vortac_cyan.png", -100, -100, 40.892, 35.414)               visible(img_vortac_cyan39,false)
img_vortac_cyan40 =				    img_add("img_vortac_cyan.png", -100, -100, 40.892, 35.414)               visible(img_vortac_cyan40,false)
img_vortac_cyan41 =				    img_add("img_vortac_cyan.png", -100, -100, 40.892, 35.414)               visible(img_vortac_cyan41,false)
img_vortac_cyan42 =				    img_add("img_vortac_cyan.png", -100, -100, 40.892, 35.414)               visible(img_vortac_cyan42,false)
img_vortac_cyan43 =				    img_add("img_vortac_cyan.png", -100, -100, 40.892, 35.414)               visible(img_vortac_cyan43,false)
img_vortac_cyan44 =				    img_add("img_vortac_cyan.png", -100, -100, 40.892, 35.414)               visible(img_vortac_cyan44,false)
img_vortac_cyan45 =				    img_add("img_vortac_cyan.png", -100, -100, 40.892, 35.414)               visible(img_vortac_cyan45,false)
img_vortac_cyan46 =				    img_add("img_vortac_cyan.png", -100, -100, 40.892, 35.414)               visible(img_vortac_cyan46,false)
img_vortac_cyan47 =				    img_add("img_vortac_cyan.png", -100, -100, 40.892, 35.414)               visible(img_vortac_cyan47,false)
img_vortac_cyan48 =				    img_add("img_vortac_cyan.png", -100, -100, 40.892, 35.414)               visible(img_vortac_cyan48,false)
img_vortac_cyan49 =				    img_add("img_vortac_cyan.png", -100, -100, 40.892, 35.414)               visible(img_vortac_cyan49,false)

img_vortac_green1 =				    img_add("img_vortac_green.png", -100, -100, 40.892, 35.414)              visible(img_vortac_green1,false)
img_vortac_green2 =				    img_add("img_vortac_green.png", -100, -100, 40.892, 35.414)              visible(img_vortac_green2,false)

img_white_star0 =				    img_add("img_white_star.png", -100, -100, 38, 38)                		visible(img_white_star0,false)
img_white_star1 =				    img_add("img_white_star.png", -100, -100, 38, 38)                		visible(img_white_star1,false)
img_white_star2 =				    img_add("img_white_star.png", -100, -100, 38, 38)                		visible(img_white_star2,false)
img_white_star3 =				    img_add("img_white_star.png", -100, -100, 38, 38)                		visible(img_white_star3,false)
img_white_star4 =				    img_add("img_white_star.png", -100, -100, 38, 38)                		visible(img_white_star4,false)
img_white_star5 =				    img_add("img_white_star.png", -100, -100, 38, 38)                		visible(img_white_star5,false)
img_white_star6 =				    img_add("img_white_star.png", -100, -100, 38, 38)                		visible(img_white_star6,false)
img_white_star7 =				    img_add("img_white_star.png", -100, -100, 38, 38)                		visible(img_white_star7,false)
img_white_star8 =				    img_add("img_white_star.png", -100, -100, 38, 38)                		visible(img_white_star8,false)
img_white_star9 =				    img_add("img_white_star.png", -100, -100, 38, 38)                		visible(img_white_star9,false)
img_white_star10 =				    img_add("img_white_star.png", -100, -100, 38, 38)                		visible(img_white_star10,false)
img_white_star11 =				    img_add("img_white_star.png", -100, -100, 38, 38)                		visible(img_white_star11,false)
img_white_star12 =				    img_add("img_white_star.png", -100, -100, 38, 38)                		visible(img_white_star12,false)
img_white_star13 =				    img_add("img_white_star.png", -100, -100, 38, 38)                		visible(img_white_star13,false)
img_white_star14 =				    img_add("img_white_star.png", -100, -100, 38, 38)                		visible(img_white_star14,false)
img_white_star15 =				    img_add("img_white_star.png", -100, -100, 38, 38)                		visible(img_white_star15,false)
img_white_star16 =				    img_add("img_white_star.png", -100, -100, 38, 38)                		visible(img_white_star16,false)
img_white_star17 =				    img_add("img_white_star.png", -100, -100, 38, 38)                		visible(img_white_star17,false)
img_white_star18 =				    img_add("img_white_star.png", -100, -100, 38, 38)                		visible(img_white_star18,false)
img_white_star19 =				    img_add("img_white_star.png", -100, -100, 38, 38)                		visible(img_white_star19,false)

img_magenta_star0 =				    img_add("img_magenta_star.png", -100, -100, 38, 38)                		visible(img_magenta_star0,false)
img_magenta_star1 =				    img_add("img_magenta_star.png", -100, -100, 38, 38)                		visible(img_magenta_star1,false)
img_magenta_star2 =				    img_add("img_magenta_star.png", -100, -100, 38, 38)                		visible(img_magenta_star2,false)
img_magenta_star3 =				    img_add("img_magenta_star.png", -100, -100, 38, 38)                		visible(img_magenta_star3,false)
img_magenta_star4 =				    img_add("img_magenta_star.png", -100, -100, 38, 38)                		visible(img_magenta_star4,false)
img_magenta_star5 =				    img_add("img_magenta_star.png", -100, -100, 38, 38)                		visible(img_magenta_star5,false)
img_magenta_star6 =				    img_add("img_magenta_star.png", -100, -100, 38, 38)                		visible(img_magenta_star6,false)
img_magenta_star7 =				    img_add("img_magenta_star.png", -100, -100, 38, 38)                		visible(img_magenta_star7,false)
img_magenta_star8 =				    img_add("img_magenta_star.png", -100, -100, 38, 38)                		visible(img_magenta_star8,false)
img_magenta_star9 =				    img_add("img_magenta_star.png", -100, -100, 38, 38)                		visible(img_magenta_star9,false)
img_magenta_star10 =				img_add("img_magenta_star.png", -100, -100, 38, 38)                		visible(img_magenta_star10,false)
img_magenta_star11 =				img_add("img_magenta_star.png", -100, -100, 38, 38)                		visible(img_magenta_star11,false)
img_magenta_star12 =				img_add("img_magenta_star.png", -100, -100, 38, 38)                		visible(img_magenta_star12,false)
img_magenta_star13 =				img_add("img_magenta_star.png", -100, -100, 38, 38)                		visible(img_magenta_star13,false)
img_magenta_star14 =				img_add("img_magenta_star.png", -100, -100, 38, 38)                		visible(img_magenta_star14,false)
img_magenta_star15 =				img_add("img_magenta_star.png", -100, -100, 38, 38)                		visible(img_magenta_star15,false)
img_magenta_star16 =				img_add("img_magenta_star.png", -100, -100, 38, 38)                		visible(img_magenta_star16,false)
img_magenta_star17 =				img_add("img_magenta_star.png", -100, -100, 38, 38)                		visible(img_magenta_star17,false)
img_magenta_star18 =				img_add("img_magenta_star.png", -100, -100, 38, 38)                		visible(img_magenta_star18,false)
img_magenta_star19 =				img_add("img_magenta_star.png", -100, -100, 38, 38)                		visible(img_magenta_star19,false)


--tcas images
--diamonds
img_tcas_diamond =					img_add("img_tcas_diamond.png", -100, -100, 19, 31)						visible(img_tcas_diamond,false)
img_tcas_diamond2 =					img_add("img_tcas_diamond.png", -100, -100, 19, 31)						visible(img_tcas_diamond2,false)
img_tcas_diamond3 =					img_add("img_tcas_diamond.png", -100, -100, 19, 31)						visible(img_tcas_diamond3,false)
img_tcas_diamond4 =					img_add("img_tcas_diamond.png", -100, -100, 19, 31)						visible(img_tcas_diamond4,false)
img_tcas_diamond5 =					img_add("img_tcas_diamond.png", -100, -100, 19, 31)						visible(img_tcas_diamond5,false)
img_tcas_diamond6 =					img_add("img_tcas_diamond.png", -100, -100, 19, 31)						visible(img_tcas_diamond6,false)
img_tcas_diamond7 =					img_add("img_tcas_diamond.png", -100, -100, 19, 31)						visible(img_tcas_diamond7,false)
img_tcas_diamond8 =					img_add("img_tcas_diamond.png", -100, -100, 19, 31)						visible(img_tcas_diamond8,false)
img_tcas_diamond9 =					img_add("img_tcas_diamond.png", -100, -100, 19, 31)						visible(img_tcas_diamond9,false)
img_tcas_diamond10 =				img_add("img_tcas_diamond.png", -100, -100, 19, 31)						visible(img_tcas_diamond10,false)
img_tcas_diamond11 =				img_add("img_tcas_diamond.png", -100, -100, 19, 31)						visible(img_tcas_diamond11,false)
img_tcas_diamond12 =				img_add("img_tcas_diamond.png", -100, -100, 19, 31)						visible(img_tcas_diamond12,false)
img_tcas_diamond13 =				img_add("img_tcas_diamond.png", -100, -100, 19, 31)						visible(img_tcas_diamond13,false)
img_tcas_diamond14 =				img_add("img_tcas_diamond.png", -100, -100, 19, 31)						visible(img_tcas_diamond14,false)
img_tcas_diamond15 =				img_add("img_tcas_diamond.png", -100, -100, 19, 31)						visible(img_tcas_diamond15,false)
img_tcas_diamond16 =				img_add("img_tcas_diamond.png", -100, -100, 19, 31)						visible(img_tcas_diamond16,false)
img_tcas_diamond17 =				img_add("img_tcas_diamond.png", -100, -100, 19, 31)						visible(img_tcas_diamond17,false)
img_tcas_diamond18 =				img_add("img_tcas_diamond.png", -100, -100, 19, 31)						visible(img_tcas_diamond18,false)
img_tcas_diamond19 =				img_add("img_tcas_diamond.png", -100, -100, 19, 31)						visible(img_tcas_diamond19,false)
--empty diamonds
img_tcas_diamond_e =				img_add("img_tcas_diamond_e.png", -100, -100, 19, 31)					visible(img_tcas_diamond_e,false)
img_tcas_diamond_e2 =				img_add("img_tcas_diamond_e.png", -100, -100, 19, 31)					visible(img_tcas_diamond_e2,false)
img_tcas_diamond_e3 =				img_add("img_tcas_diamond_e.png", -100, -100, 19, 31)					visible(img_tcas_diamond_e3,false)
img_tcas_diamond_e4 =				img_add("img_tcas_diamond_e.png", -100, -100, 19, 31)					visible(img_tcas_diamond_e4,false)
img_tcas_diamond_e5 =				img_add("img_tcas_diamond_e.png", -100, -100, 19, 31)					visible(img_tcas_diamond_e5,false)
img_tcas_diamond_e6 =				img_add("img_tcas_diamond_e.png", -100, -100, 19, 31)					visible(img_tcas_diamond_e6,false)
img_tcas_diamond_e7 =				img_add("img_tcas_diamond_e.png", -100, -100, 19, 31)					visible(img_tcas_diamond_e7,false)
img_tcas_diamond_e8 =				img_add("img_tcas_diamond_e.png", -100, -100, 19, 31)					visible(img_tcas_diamond_e8,false)
img_tcas_diamond_e9 =				img_add("img_tcas_diamond_e.png", -100, -100, 19, 31)					visible(img_tcas_diamond_e9,false)
img_tcas_diamond_e10 =				img_add("img_tcas_diamond_e.png", -100, -100, 19, 31)					visible(img_tcas_diamond_e10,false)
img_tcas_diamond_e11 =				img_add("img_tcas_diamond_e.png", -100, -100, 19, 31)					visible(img_tcas_diamond_e11,false)
img_tcas_diamond_e12 =				img_add("img_tcas_diamond_e.png", -100, -100, 19, 31)					visible(img_tcas_diamond_e12,false)
img_tcas_diamond_e13 =				img_add("img_tcas_diamond_e.png", -100, -100, 19, 31)					visible(img_tcas_diamond_e13,false)
img_tcas_diamond_e14 =				img_add("img_tcas_diamond_e.png", -100, -100, 19, 31)					visible(img_tcas_diamond_e14,false)
img_tcas_diamond_e15 =				img_add("img_tcas_diamond_e.png", -100, -100, 19, 31)					visible(img_tcas_diamond_e15,false)
img_tcas_diamond_e16 =				img_add("img_tcas_diamond_e.png", -100, -100, 19, 31)					visible(img_tcas_diamond_e16,false)
img_tcas_diamond_e17 =				img_add("img_tcas_diamond_e.png", -100, -100, 19, 31)					visible(img_tcas_diamond_e17,false)
img_tcas_diamond_e18 =				img_add("img_tcas_diamond_e.png", -100, -100, 19, 31)					visible(img_tcas_diamond_e18,false)
img_tcas_diamond_e19 =				img_add("img_tcas_diamond_e.png", -100, -100, 19, 31)					visible(img_tcas_diamond_e19,false)
--red boxes
img_tcas_box =						img_add("img_tcas_box.png", -100, -100, 21, 21)							visible(img_tcas_box,false)
img_tcas_box2 =						img_add("img_tcas_box.png", -100, -100, 21, 21)							visible(img_tcas_box2,false)
img_tcas_box3 =						img_add("img_tcas_box.png", -100, -100, 21, 21)							visible(img_tcas_box3,false)
img_tcas_box4 =						img_add("img_tcas_box.png", -100, -100, 21, 21)							visible(img_tcas_box4,false)
img_tcas_box5 =						img_add("img_tcas_box.png", -100, -100, 21, 21)							visible(img_tcas_box5,false)
img_tcas_box6 =						img_add("img_tcas_box.png", -100, -100, 21, 21)							visible(img_tcas_box6,false)
img_tcas_box7 =						img_add("img_tcas_box.png", -100, -100, 21, 21)							visible(img_tcas_box7,false)
img_tcas_box8 =						img_add("img_tcas_box.png", -100, -100, 21, 21)							visible(img_tcas_box8,false)
img_tcas_box9 =						img_add("img_tcas_box.png", -100, -100, 21, 21)							visible(img_tcas_box9,false)
img_tcas_box10 =					img_add("img_tcas_box.png", -100, -100, 21, 21)							visible(img_tcas_box10,false)
img_tcas_box11 =					img_add("img_tcas_box.png", -100, -100, 21, 21)							visible(img_tcas_box11,false)
img_tcas_box12 =					img_add("img_tcas_box.png", -100, -100, 21, 21)							visible(img_tcas_box12,false)
img_tcas_box13 =					img_add("img_tcas_box.png", -100, -100, 21, 21)							visible(img_tcas_box13,false)
img_tcas_box14 =					img_add("img_tcas_box.png", -100, -100, 21, 21)							visible(img_tcas_box14,false)
img_tcas_box15 =					img_add("img_tcas_box.png", -100, -100, 21, 21)							visible(img_tcas_box15,false)
img_tcas_box16 =					img_add("img_tcas_box.png", -100, -100, 21, 21)							visible(img_tcas_box16,false)
img_tcas_box17 =					img_add("img_tcas_box.png", -100, -100, 21, 21)							visible(img_tcas_box17,false)
img_tcas_box18 =					img_add("img_tcas_box.png", -100, -100, 21, 21)							visible(img_tcas_box18,false)
img_tcas_box19 =					img_add("img_tcas_box.png", -100, -100, 21, 21)							visible(img_tcas_box19,false)
--amber circles
img_tcas_circle =					img_add("img_tcas_circle.png", -100, -100, 21, 21)						visible(img_tcas_circle,false)
img_tcas_circle2 =					img_add("img_tcas_circle.png", -100, -100, 21, 21)						visible(img_tcas_circle2,false)
img_tcas_circle3 =					img_add("img_tcas_circle.png", -100, -100, 21, 21)						visible(img_tcas_circle3,false)
img_tcas_circle4 =					img_add("img_tcas_circle.png", -100, -100, 21, 21)						visible(img_tcas_circle4,false)
img_tcas_circle5 =					img_add("img_tcas_circle.png", -100, -100, 21, 21)						visible(img_tcas_circle5,false)
img_tcas_circle6 =					img_add("img_tcas_circle.png", -100, -100, 21, 21)						visible(img_tcas_circle6,false)
img_tcas_circle7 =					img_add("img_tcas_circle.png", -100, -100, 21, 21)						visible(img_tcas_circle7,false)
img_tcas_circle8 =					img_add("img_tcas_circle.png", -100, -100, 21, 21)						visible(img_tcas_circle8,false)
img_tcas_circle9 =					img_add("img_tcas_circle.png", -100, -100, 21, 21)						visible(img_tcas_circle9,false)
img_tcas_circle10 =					img_add("img_tcas_circle.png", -100, -100, 21, 21)						visible(img_tcas_circle10,false)
img_tcas_circle11 =					img_add("img_tcas_circle.png", -100, -100, 21, 21)						visible(img_tcas_circle11,false)
img_tcas_circle12 =					img_add("img_tcas_circle.png", -100, -100, 21, 21)						visible(img_tcas_circle12,false)
img_tcas_circle13 =					img_add("img_tcas_circle.png", -100, -100, 21, 21)						visible(img_tcas_circle13,false)
img_tcas_circle14 =					img_add("img_tcas_circle.png", -100, -100, 21, 21)						visible(img_tcas_circle14,false)
img_tcas_circle15 =					img_add("img_tcas_circle.png", -100, -100, 21, 21)						visible(img_tcas_circle15,false)
img_tcas_circle16 =					img_add("img_tcas_circle.png", -100, -100, 21, 21)						visible(img_tcas_circle16,false)
img_tcas_circle17 =					img_add("img_tcas_circle.png", -100, -100, 21, 21)						visible(img_tcas_circle17,false)
img_tcas_circle18 =					img_add("img_tcas_circle.png", -100, -100, 21, 21)						visible(img_tcas_circle18,false)
img_tcas_circle19 =					img_add("img_tcas_circle.png", -100, -100, 21, 21)						visible(img_tcas_circle19,false)
-- white up arrows
img_tcas_arrow_up_white =			img_add("img_tcas_arrow_up_white.png", -100, -100, 16.347, 28.773)						visible(img_tcas_arrow_up_white,false)
img_tcas_arrow_up_white2 =			img_add("img_tcas_arrow_up_white.png", -100, -100, 16.347, 28.773)						visible(img_tcas_arrow_up_white2,false)
img_tcas_arrow_up_white3 =			img_add("img_tcas_arrow_up_white.png", -100, -100, 16.347, 28.773)						visible(img_tcas_arrow_up_white3,false)
img_tcas_arrow_up_white4 =			img_add("img_tcas_arrow_up_white.png", -100, -100, 16.347, 28.773)						visible(img_tcas_arrow_up_white4,false)
img_tcas_arrow_up_white5 =			img_add("img_tcas_arrow_up_white.png", -100, -100, 16.347, 28.773)						visible(img_tcas_arrow_up_white5,false)
img_tcas_arrow_up_white6 =			img_add("img_tcas_arrow_up_white.png", -100, -100, 16.347, 28.773)						visible(img_tcas_arrow_up_white6,false)
img_tcas_arrow_up_white7 =			img_add("img_tcas_arrow_up_white.png", -100, -100, 16.347, 28.773)						visible(img_tcas_arrow_up_white7,false)
img_tcas_arrow_up_white8 =			img_add("img_tcas_arrow_up_white.png", -100, -100, 16.347, 28.773)						visible(img_tcas_arrow_up_white8,false)
img_tcas_arrow_up_white9 =			img_add("img_tcas_arrow_up_white.png", -100, -100, 16.347, 28.773)						visible(img_tcas_arrow_up_white9,false)
img_tcas_arrow_up_white10 =			img_add("img_tcas_arrow_up_white.png", -100, -100, 16.347, 28.773)						visible(img_tcas_arrow_up_white10,false)
img_tcas_arrow_up_white11 =			img_add("img_tcas_arrow_up_white.png", -100, -100, 16.347, 28.773)						visible(img_tcas_arrow_up_white11,false)
img_tcas_arrow_up_white12 =			img_add("img_tcas_arrow_up_white.png", -100, -100, 16.347, 28.773)						visible(img_tcas_arrow_up_white12,false)
img_tcas_arrow_up_white13 =			img_add("img_tcas_arrow_up_white.png", -100, -100, 16.347, 28.773)						visible(img_tcas_arrow_up_white13,false)
img_tcas_arrow_up_white14 =			img_add("img_tcas_arrow_up_white.png", -100, -100, 16.347, 28.773)						visible(img_tcas_arrow_up_white14,false)
img_tcas_arrow_up_white15 =			img_add("img_tcas_arrow_up_white.png", -100, -100, 16.347, 28.773)						visible(img_tcas_arrow_up_white15,false)
img_tcas_arrow_up_white16 =			img_add("img_tcas_arrow_up_white.png", -100, -100, 16.347, 28.773)						visible(img_tcas_arrow_up_white16,false)
img_tcas_arrow_up_white17 =			img_add("img_tcas_arrow_up_white.png", -100, -100, 16.347, 28.773)						visible(img_tcas_arrow_up_white17,false)
img_tcas_arrow_up_white18 =			img_add("img_tcas_arrow_up_white.png", -100, -100, 16.347, 28.773)						visible(img_tcas_arrow_up_white18,false)
img_tcas_arrow_up_white19 =			img_add("img_tcas_arrow_up_white.png", -100, -100, 16.347, 28.773)						visible(img_tcas_arrow_up_white19,false)
--white dn arrows
img_tcas_arrow_dn_white =			img_add("img_tcas_arrow_dn_white.png", -100, -100, 16.347, 28.773)						visible(img_tcas_arrow_dn_white,false)
img_tcas_arrow_dn_white2 =			img_add("img_tcas_arrow_dn_white.png", -100, -100, 16.347, 28.773)						visible(img_tcas_arrow_dn_white2,false)
img_tcas_arrow_dn_white3 =			img_add("img_tcas_arrow_dn_white.png", -100, -100, 16.347, 28.773)						visible(img_tcas_arrow_dn_white3,false)
img_tcas_arrow_dn_white4 =			img_add("img_tcas_arrow_dn_white.png", -100, -100, 16.347, 28.773)						visible(img_tcas_arrow_dn_white4,false)
img_tcas_arrow_dn_white5 =			img_add("img_tcas_arrow_dn_white.png", -100, -100, 16.347, 28.773)						visible(img_tcas_arrow_dn_white5,false)
img_tcas_arrow_dn_white6 =			img_add("img_tcas_arrow_dn_white.png", -100, -100, 16.347, 28.773)						visible(img_tcas_arrow_dn_white6,false)
img_tcas_arrow_dn_white7 =			img_add("img_tcas_arrow_dn_white.png", -100, -100, 16.347, 28.773)						visible(img_tcas_arrow_dn_white7,false)
img_tcas_arrow_dn_white8 =			img_add("img_tcas_arrow_dn_white.png", -100, -100, 16.347, 28.773)						visible(img_tcas_arrow_dn_white8,false)
img_tcas_arrow_dn_white9 =			img_add("img_tcas_arrow_dn_white.png", -100, -100, 16.347, 28.773)						visible(img_tcas_arrow_dn_white9,false)
img_tcas_arrow_dn_white10 =			img_add("img_tcas_arrow_dn_white.png", -100, -100, 16.347, 28.773)						visible(img_tcas_arrow_dn_white10,false)
img_tcas_arrow_dn_white11 =			img_add("img_tcas_arrow_dn_white.png", -100, -100, 16.347, 28.773)						visible(img_tcas_arrow_dn_white11,false)
img_tcas_arrow_dn_white12 =			img_add("img_tcas_arrow_dn_white.png", -100, -100, 16.347, 28.773)						visible(img_tcas_arrow_dn_white12,false)
img_tcas_arrow_dn_white13 =			img_add("img_tcas_arrow_dn_white.png", -100, -100, 16.347, 28.773)						visible(img_tcas_arrow_dn_white13,false)
img_tcas_arrow_dn_white14 =			img_add("img_tcas_arrow_dn_white.png", -100, -100, 16.347, 28.773)						visible(img_tcas_arrow_dn_white14,false)
img_tcas_arrow_dn_white15 =			img_add("img_tcas_arrow_dn_white.png", -100, -100, 16.347, 28.773)						visible(img_tcas_arrow_dn_white15,false)
img_tcas_arrow_dn_white16 =			img_add("img_tcas_arrow_dn_white.png", -100, -100, 16.347, 28.773)						visible(img_tcas_arrow_dn_white16,false)
img_tcas_arrow_dn_white17 =			img_add("img_tcas_arrow_dn_white.png", -100, -100, 16.347, 28.773)						visible(img_tcas_arrow_dn_white17,false)
img_tcas_arrow_dn_white18 =			img_add("img_tcas_arrow_dn_white.png", -100, -100, 16.347, 28.773)						visible(img_tcas_arrow_dn_white18,false)
img_tcas_arrow_dn_white19 =			img_add("img_tcas_arrow_dn_white.png", -100, -100, 16.347, 28.773)						visible(img_tcas_arrow_dn_white19,false)
-- red up arrows
img_tcas_arrow_up_red =				img_add("img_tcas_arrow_up_red.png", -100, -100, 16.347, 28.773)						visible(img_tcas_arrow_up_red,false)
img_tcas_arrow_up_red2 =			img_add("img_tcas_arrow_up_red.png", -100, -100, 16.347, 28.773)						visible(img_tcas_arrow_up_red2,false)
img_tcas_arrow_up_red3 =			img_add("img_tcas_arrow_up_red.png", -100, -100, 16.347, 28.773)						visible(img_tcas_arrow_up_red3,false)
img_tcas_arrow_up_red4 =			img_add("img_tcas_arrow_up_red.png", -100, -100, 16.347, 28.773)						visible(img_tcas_arrow_up_red4,false)
img_tcas_arrow_up_red5 =			img_add("img_tcas_arrow_up_red.png", -100, -100, 16.347, 28.773)						visible(img_tcas_arrow_up_red5,false)
img_tcas_arrow_up_red6 =			img_add("img_tcas_arrow_up_red.png", -100, -100, 16.347, 28.773)						visible(img_tcas_arrow_up_red6,false)
img_tcas_arrow_up_red7 =			img_add("img_tcas_arrow_up_red.png", -100, -100, 16.347, 28.773)						visible(img_tcas_arrow_up_red7,false)
img_tcas_arrow_up_red8 =			img_add("img_tcas_arrow_up_red.png", -100, -100, 16.347, 28.773)						visible(img_tcas_arrow_up_red8,false)
img_tcas_arrow_up_red9 =			img_add("img_tcas_arrow_up_red.png", -100, -100, 16.347, 28.773)						visible(img_tcas_arrow_up_red9,false)
img_tcas_arrow_up_red10 =			img_add("img_tcas_arrow_up_red.png", -100, -100, 16.347, 28.773)						visible(img_tcas_arrow_up_red10,false)
img_tcas_arrow_up_red11 =			img_add("img_tcas_arrow_up_red.png", -100, -100, 16.347, 28.773)						visible(img_tcas_arrow_up_red11,false)
img_tcas_arrow_up_red12 =			img_add("img_tcas_arrow_up_red.png", -100, -100, 16.347, 28.773)						visible(img_tcas_arrow_up_red12,false)
img_tcas_arrow_up_red13 =			img_add("img_tcas_arrow_up_red.png", -100, -100, 16.347, 28.773)						visible(img_tcas_arrow_up_red13,false)
img_tcas_arrow_up_red14 =			img_add("img_tcas_arrow_up_red.png", -100, -100, 16.347, 28.773)						visible(img_tcas_arrow_up_red14,false)
img_tcas_arrow_up_red15 =			img_add("img_tcas_arrow_up_red.png", -100, -100, 16.347, 28.773)						visible(img_tcas_arrow_up_red15,false)
img_tcas_arrow_up_red16 =			img_add("img_tcas_arrow_up_red.png", -100, -100, 16.347, 28.773)						visible(img_tcas_arrow_up_red16,false)
img_tcas_arrow_up_red17 =			img_add("img_tcas_arrow_up_red.png", -100, -100, 16.347, 28.773)						visible(img_tcas_arrow_up_red17,false)
img_tcas_arrow_up_red18 =			img_add("img_tcas_arrow_up_red.png", -100, -100, 16.347, 28.773)						visible(img_tcas_arrow_up_red18,false)
img_tcas_arrow_up_red19 =			img_add("img_tcas_arrow_up_red.png", -100, -100, 16.347, 28.773)						visible(img_tcas_arrow_up_red19,false)
-- red dn arrows
img_tcas_arrow_dn_red =				img_add("img_tcas_arrow_dn_red.png", -100, -100, 16.347, 28.773)						visible(img_tcas_arrow_dn_red,false)
img_tcas_arrow_dn_red2 =			img_add("img_tcas_arrow_dn_red.png", -100, -100, 16.347, 28.773)						visible(img_tcas_arrow_dn_red2,false)
img_tcas_arrow_dn_red3 =			img_add("img_tcas_arrow_dn_red.png", -100, -100, 16.347, 28.773)						visible(img_tcas_arrow_dn_red3,false)
img_tcas_arrow_dn_red4 =			img_add("img_tcas_arrow_dn_red.png", -100, -100, 16.347, 28.773)						visible(img_tcas_arrow_dn_red4,false)
img_tcas_arrow_dn_red5 =			img_add("img_tcas_arrow_dn_red.png", -100, -100, 16.347, 28.773)						visible(img_tcas_arrow_dn_red5,false)
img_tcas_arrow_dn_red6 =			img_add("img_tcas_arrow_dn_red.png", -100, -100, 16.347, 28.773)						visible(img_tcas_arrow_dn_red6,false)
img_tcas_arrow_dn_red7 =			img_add("img_tcas_arrow_dn_red.png", -100, -100, 16.347, 28.773)						visible(img_tcas_arrow_dn_red7,false)
img_tcas_arrow_dn_red8 =			img_add("img_tcas_arrow_dn_red.png", -100, -100, 16.347, 28.773)						visible(img_tcas_arrow_dn_red8,false)
img_tcas_arrow_dn_red9 =			img_add("img_tcas_arrow_dn_red.png", -100, -100, 16.347, 28.773)						visible(img_tcas_arrow_dn_red9,false)
img_tcas_arrow_dn_red10 =			img_add("img_tcas_arrow_dn_red.png", -100, -100, 16.347, 28.773)						visible(img_tcas_arrow_dn_red10,false)
img_tcas_arrow_dn_red11 =			img_add("img_tcas_arrow_dn_red.png", -100, -100, 16.347, 28.773)						visible(img_tcas_arrow_dn_red11,false)
img_tcas_arrow_dn_red12 =			img_add("img_tcas_arrow_dn_red.png", -100, -100, 16.347, 28.773)						visible(img_tcas_arrow_dn_red12,false)
img_tcas_arrow_dn_red13 =			img_add("img_tcas_arrow_dn_red.png", -100, -100, 16.347, 28.773)						visible(img_tcas_arrow_dn_red13,false)
img_tcas_arrow_dn_red14 =			img_add("img_tcas_arrow_dn_red.png", -100, -100, 16.347, 28.773)						visible(img_tcas_arrow_dn_red14,false)
img_tcas_arrow_dn_red15 =			img_add("img_tcas_arrow_dn_red.png", -100, -100, 16.347, 28.773)						visible(img_tcas_arrow_dn_red15,false)
img_tcas_arrow_dn_red16 =			img_add("img_tcas_arrow_dn_red.png", -100, -100, 16.347, 28.773)						visible(img_tcas_arrow_dn_red16,false)
img_tcas_arrow_dn_red17 =			img_add("img_tcas_arrow_dn_red.png", -100, -100, 16.347, 28.773)						visible(img_tcas_arrow_dn_red17,false)
img_tcas_arrow_dn_red18 =			img_add("img_tcas_arrow_dn_red.png", -100, -100, 16.347, 28.773)						visible(img_tcas_arrow_dn_red18,false)
img_tcas_arrow_dn_red19 =			img_add("img_tcas_arrow_dn_red.png", -100, -100, 16.347, 28.773)						visible(img_tcas_arrow_dn_red19,false)
-- amber up arrows
img_tcas_arrow_up_amber =			img_add("img_tcas_arrow_up_amber.png", -100, -100, 16.347, 28.773)						visible(img_tcas_arrow_up_amber,false)
img_tcas_arrow_up_amber2 =			img_add("img_tcas_arrow_up_amber.png", -100, -100, 16.347, 28.773)						visible(img_tcas_arrow_up_amber2,false)
img_tcas_arrow_up_amber3 =			img_add("img_tcas_arrow_up_amber.png", -100, -100, 16.347, 28.773)						visible(img_tcas_arrow_up_amber3,false)
img_tcas_arrow_up_amber4 =			img_add("img_tcas_arrow_up_amber.png", -100, -100, 16.347, 28.773)						visible(img_tcas_arrow_up_amber4,false)
img_tcas_arrow_up_amber5 =			img_add("img_tcas_arrow_up_amber.png", -100, -100, 16.347, 28.773)						visible(img_tcas_arrow_up_amber5,false)
img_tcas_arrow_up_amber6 =			img_add("img_tcas_arrow_up_amber.png", -100, -100, 16.347, 28.773)						visible(img_tcas_arrow_up_amber6,false)
img_tcas_arrow_up_amber7 =			img_add("img_tcas_arrow_up_amber.png", -100, -100, 16.347, 28.773)						visible(img_tcas_arrow_up_amber7,false)
img_tcas_arrow_up_amber8 =			img_add("img_tcas_arrow_up_amber.png", -100, -100, 16.347, 28.773)						visible(img_tcas_arrow_up_amber8,false)
img_tcas_arrow_up_amber9 =			img_add("img_tcas_arrow_up_amber.png", -100, -100, 16.347, 28.773)						visible(img_tcas_arrow_up_amber9,false)
img_tcas_arrow_up_amber10 =			img_add("img_tcas_arrow_up_amber.png", -100, -100, 16.347, 28.773)						visible(img_tcas_arrow_up_amber10,false)
img_tcas_arrow_up_amber11 =			img_add("img_tcas_arrow_up_amber.png", -100, -100, 16.347, 28.773)						visible(img_tcas_arrow_up_amber11,false)
img_tcas_arrow_up_amber12 =			img_add("img_tcas_arrow_up_amber.png", -100, -100, 16.347, 28.773)						visible(img_tcas_arrow_up_amber12,false)
img_tcas_arrow_up_amber13 =			img_add("img_tcas_arrow_up_amber.png", -100, -100, 16.347, 28.773)						visible(img_tcas_arrow_up_amber13,false)
img_tcas_arrow_up_amber14 =			img_add("img_tcas_arrow_up_amber.png", -100, -100, 16.347, 28.773)						visible(img_tcas_arrow_up_amber14,false)
img_tcas_arrow_up_amber15 =			img_add("img_tcas_arrow_up_amber.png", -100, -100, 16.347, 28.773)						visible(img_tcas_arrow_up_amber15,false)
img_tcas_arrow_up_amber16 =			img_add("img_tcas_arrow_up_amber.png", -100, -100, 16.347, 28.773)						visible(img_tcas_arrow_up_amber16,false)
img_tcas_arrow_up_amber17 =			img_add("img_tcas_arrow_up_amber.png", -100, -100, 16.347, 28.773)						visible(img_tcas_arrow_up_amber17,false)
img_tcas_arrow_up_amber18 =			img_add("img_tcas_arrow_up_amber.png", -100, -100, 16.347, 28.773)						visible(img_tcas_arrow_up_amber18,false)
img_tcas_arrow_up_amber19 =			img_add("img_tcas_arrow_up_amber.png", -100, -100, 16.347, 28.773)						visible(img_tcas_arrow_up_amber19,false)
-- amber down arrows
img_tcas_arrow_dn_amber =			img_add("img_tcas_arrow_dn_amber.png", -100, -100, 16.347, 28.773)						visible(img_tcas_arrow_dn_amber,false)
img_tcas_arrow_dn_amber2 =			img_add("img_tcas_arrow_dn_amber.png", -100, -100, 16.347, 28.773)						visible(img_tcas_arrow_dn_amber2,false)
img_tcas_arrow_dn_amber3 =			img_add("img_tcas_arrow_dn_amber.png", -100, -100, 16.347, 28.773)						visible(img_tcas_arrow_dn_amber3,false)
img_tcas_arrow_dn_amber4 =			img_add("img_tcas_arrow_dn_amber.png", -100, -100, 16.347, 28.773)						visible(img_tcas_arrow_dn_amber4,false)
img_tcas_arrow_dn_amber5 =			img_add("img_tcas_arrow_dn_amber.png", -100, -100, 16.347, 28.773)						visible(img_tcas_arrow_dn_amber5,false)
img_tcas_arrow_dn_amber6 =			img_add("img_tcas_arrow_dn_amber.png", -100, -100, 16.347, 28.773)						visible(img_tcas_arrow_dn_amber6,false)
img_tcas_arrow_dn_amber7 =			img_add("img_tcas_arrow_dn_amber.png", -100, -100, 16.347, 28.773)						visible(img_tcas_arrow_dn_amber7,false)
img_tcas_arrow_dn_amber8 =			img_add("img_tcas_arrow_dn_amber.png", -100, -100, 16.347, 28.773)						visible(img_tcas_arrow_dn_amber8,false)
img_tcas_arrow_dn_amber9 =			img_add("img_tcas_arrow_dn_amber.png", -100, -100, 16.347, 28.773)						visible(img_tcas_arrow_dn_amber9,false)
img_tcas_arrow_dn_amber10 =			img_add("img_tcas_arrow_dn_amber.png", -100, -100, 16.347, 28.773)						visible(img_tcas_arrow_dn_amber10,false)
img_tcas_arrow_dn_amber11 =			img_add("img_tcas_arrow_dn_amber.png", -100, -100, 16.347, 28.773)						visible(img_tcas_arrow_dn_amber11,false)
img_tcas_arrow_dn_amber12 =			img_add("img_tcas_arrow_dn_amber.png", -100, -100, 16.347, 28.773)						visible(img_tcas_arrow_dn_amber12,false)
img_tcas_arrow_dn_amber13 =			img_add("img_tcas_arrow_dn_amber.png", -100, -100, 16.347, 28.773)						visible(img_tcas_arrow_dn_amber13,false)
img_tcas_arrow_dn_amber14 =			img_add("img_tcas_arrow_dn_amber.png", -100, -100, 16.347, 28.773)						visible(img_tcas_arrow_dn_amber14,false)
img_tcas_arrow_dn_amber15 =			img_add("img_tcas_arrow_dn_amber.png", -100, -100, 16.347, 28.773)						visible(img_tcas_arrow_dn_amber15,false)
img_tcas_arrow_dn_amber16 =			img_add("img_tcas_arrow_dn_amber.png", -100, -100, 16.347, 28.773)						visible(img_tcas_arrow_dn_amber16,false)
img_tcas_arrow_dn_amber17 =			img_add("img_tcas_arrow_dn_amber.png", -100, -100, 16.347, 28.773)						visible(img_tcas_arrow_dn_amber17,false)
img_tcas_arrow_dn_amber18 =			img_add("img_tcas_arrow_dn_amber.png", -100, -100, 16.347, 28.773)						visible(img_tcas_arrow_dn_amber18,false)
img_tcas_arrow_dn_amber19 =			img_add("img_tcas_arrow_dn_amber.png", -100, -100, 16.347, 28.773)						visible(img_tcas_arrow_dn_amber19,false)


img_triangle =						img_add("img_triangle.png", 374.5, ypos(100, 61),50, 61)				visible(img_triangle,false)
img_tfcring_5nm =					img_add("img_tfcring_5nm.png", 54.189, 295.549, 691.622, 691.622)		visible(img_tfcring_5nm,false)
img_tfcring_10nm =					img_add("img_tfcring_10nm.png", 54.189, 295.549, 691.622, 691.622)		visible(img_tfcring_10nm,false)
img_tfcring_20nm =					img_add("img_tfcring_20nm.png", 54.189, 295.549, 691.622, 691.622)		visible(img_tfcring_20nm,false)
img_tfcring_40nm =					img_add("img_tfcring_40nm.png", 54.189, 295.549, 691.622, 691.622)		visible(img_tfcring_40nm,false)
img_tfcring_80nm =					img_add("img_tfcring_80nm.png", 54.189, 295.549, 691.622, 691.622)		visible(img_tfcring_80nm,false)
img_compass_rose_no_text =			img_add("img_compass_rose_no_text.png", -162.500, 78.86, 1125, 1125)	visible(img_compass_rose_no_text,false)
img_compass_text =					img_add("img_compass_text.png", -162.500, 78.86, 1125, 1125)			visible(img_compass_text,false)
img_crs_line1 = 					img_add("img_crs_line.png", -200, 0, 3, 2000)							visible(img_crs_line1,false)
img_crs_line2 = 					img_add("img_crs_line.png", -200, 0, 3, 2000)							visible(img_crs_line2,false)
img_runway_centerline5 =			img_add("img_runway_centerline5.png", -100,-100, 1600.397, 3)					visible(img_runway_centerline5,false)
img_runway_centerline10 =			img_add("img_runway_centerline10.png", -100,-100, 800.198, 3)					visible(img_runway_centerline10,false)
img_runway_centerline20 = 			img_add("img_runway_centerline20.png", -100,-100, 400.099, 3)					visible(img_runway_centerline20,false)
img_runway_centerline40 =			img_add("img_runway_centerline40.png", -100,-100, 200.050, 3)					visible(img_runway_centerline40,false)

img_top_mask =						img_add("img_top_mask.png", 0, 0, 800, 800)								visible(img_top_mask,false) -- mask for the top

-- stuff that needs to go above the top mask
txt_gs =							txt_add("GS", "size:20px; font:my737glass.otf; color:white; halign:left;", 5, 10, 30, 50) visible(txt_gs,false)
txt_gs_value =						txt_add(" ", "size:28px; font:my737glass.otf; color:white; halign:left;", 30, 2, 60, 31) visible(txt_gs_value,false)
txt_tas =							txt_add("TAS", "size:20px; font:my737glass.otf; color:white; halign:left;", 95, 10, 60, 50) visible(txt_tas,false)
txt_tas_value =						txt_add(" ", "size:28px; font:my737glass.otf; color:white; halign:left;", 133, 2, 100, 31) visible(txt_tas_value,false)
txt_wind_heading =					txt_add("---", "size:28px; font:my737glass.otf; color:white; halign:left;", 5, 35, 70, 31) visible(txt_wind_heading,false)
txt_wind_speed =					txt_add("---", "size:28px; font:my737glass.otf; color:white; halign:left;", 75, 35, 60, 31) visible(txt_wind_speed,false)
img_wind_arrow =					img_add("img_wind_arrow.png", 40, 75, 13.345, 61.415)							visible(img_wind_arrow,false)
txt_trk_hdg =						txt_add(" ", "size:38px; font:my737glass.otf; color:white; halign:center;", 350, 3, 100, 39) visible(txt_trk_hdg,false)
txt_trk_hdg_green =					txt_add(" ", "size:24px; font:my737glass.otf; color:lime; halign:right;", 245, 20, 100, 25) visible(txt_trk_hdg_green,false)
txt_trk_hdg_mag_green =				txt_add("MAG", "size:24px; font:my737glass.otf; color:lime; halign:left;", 453, 20, 100, 25) visible(txt_trk_hdg_mag_green,false)
img_current_hdg_bug =				img_add("img_current_hdg_bug.png", 385.558, 53.847, 28.883, 1174.029)			visible(img_current_hdg_bug,false)
img_track_line =					img_add("img_track_line.png", 398.500, 80.861, 3, 1121.000)						visible(img_track_line,false)
img_track_box =						img_add("img_track_box.png", 350, 0, 100, 78.756)								visible(img_track_box,false)
img_magenta_hdg_bug =				img_add("img_magenta_hdg_bug.png", 382.5, 60.29, 35, 1161.143)					visible(img_magenta_hdg_bug,false)
img_magenta_line =					img_add("img_magenta_line.png", 398.500, 77.862, 3, 1127)						visible(img_magenta_line,false)
img_range_markers =					img_add("img_range_markers.png", 390.972, 219.15, 18.057, 280.900)				visible(img_range_markers,false)
img_vor1_arrow =					img_add("img_vor1_arrow.png", 387.760, 65.513, 24.398, 1151.867)				visible(img_vor1_arrow,false)
img_vor2_arrow =					img_add("img_vor2_arrow.png", 384.768, 65.196, 30.502, 1157.460)				visible(img_vor2_arrow,false)
img_runway =						img_add("img_runway.png", -100,-100, 120, 17)									visible(img_runway,false)


--failure flags
map_failure_flag_box = canvas_add(0, 0, 800, 800, function()
	_rect(374, 456, 52, 34)
	_stroke("#FFAE2A", 3)
end)visible(map_failure_flag_box,false)

hdg_failure_flag_box = canvas_add(0, 0, 800, 800, function()
	_rect(374, 10, 52, 34)
	_stroke("#FFAE2A", 3)
end)visible(hdg_failure_flag_box,false)
txt_hdg_failure_flag =				txt_add("HDG", "size:22px; font:my737glass.otf; color: #FFAE2A; halign:center;", 350, 14, 100, 50) visible(txt_hdg_failure_flag,false)
txt_map_failure_flag =				txt_add("MAP", "size:22px; font:my737glass.otf; color: #FFAE2A; halign:center;", 350, 460, 100, 50) visible(txt_map_failure_flag,false)

canvas_efis_range = canvas_add(342, 325, 50, 26, function()
	_fill("black")
end)visible(canvas_efis_range,false)

canvas_vor1 = canvas_add(0, 700 , 120, 100, function() --created a black box bottom left corner behind VOR1 etc
	_fill("black")
end)visible(canvas_vor1,true)

canvas_vor2 = canvas_add(680, 680 , 120, 100, function() --created a black box bottom left corner behind VOR2 etc
	_fill("black")
end)visible(canvas_vor2,true)

canvas_tfc = canvas_add(0, ypos(35, 100) , 100, 100, function() --created a black box bottom left corner behind VOR1 etc
	_fill("black")
end)visible(canvas_tfc,true)

txt_vor_1 =							txt_add("VOR 1", "size:24px; font:my737glass.otf; color:lime; halign:left;", 10, 710, 500, 24) 		visible(txt_vor_1,false)
txt_vor_1_id =						txt_add(" ", "size:24px; font:my737glass.otf; color:lime; halign:left;", 10, 710 + 25, 500, 24) 	visible(txt_vor_1_id,false)
txt_vor_1_dme =						txt_add(" ", "size:20px; font:my737glass.otf; color:lime; halign:left;", 10, 710 + 50, 500, 24) 	visible(txt_vor_1_dme,false)
txt_fmc_source =					txt_add(" ", "size:20px; font:my737glass.otf; color:lime; halign:left;", 170, 710 + 50, 500, 24) 	visible(txt_fmc_source,true)
txt_vor1_bcrs =						txt_add(" ", "size:20px; font:my737glass.otf; color:lime; halign:right;", -300, -300, 200, 60) 		visible(txt_vor1_bcrs,false)
txt_vor1_crs =						txt_add(" ", "size:20px; font:my737glass.otf; color:lime; halign:left;", -300, -300, 200, 60) 		visible(txt_vor1_crs,false)
txt_vortac_green1 =					txt_add(" ", "size:20px; font:my737glass.otf; color:lime; halign:left;", -100, -100, 80, 22) 		visible(txt_vortac_green1,false)
txt_vortac_green2 =					txt_add(" ", "size:20px; font:my737glass.otf; color:lime; halign:left;", -100, -100, 80, 22) 		visible(txt_vortac_green2,false)
txt_vor_2 =							txt_add("VOR 2", "size:24px; font:my737glass.otf; color:lime; halign:left;", 695, 710, 100, 24) 	visible(txt_vor_2,false)
txt_vor_2_id =						txt_add(" ", "size:24px; font:my737glass.otf; color:lime; halign:left;", 695, 710 + 25, 500, 24) 	visible(txt_vor_2_id,false)
txt_vor_2_dme =						txt_add(" ", "size:20px; font:my737glass.otf; color:lime; halign:left;", 695, 710 + 50, 500, 24) 	visible(txt_vor_2_dme,false)
txt_vor2_bcrs =						txt_add(" ", "size:20px; font:my737glass.otf; color:lime; halign:right;", -300, -300, 200, 60) 		visible(txt_vor2_bcrs,false)
txt_vor2_crs =						txt_add(" ", "size:20px; font:my737glass.otf; color:lime; halign:left;", -300, -300, 200, 60) 		visible(txt_vor2_crs,false)
txt_adf_1 =							txt_add("ADF 1", "size:24px; font:my737glass.otf; color:cyan; halign:left;", 10, 710, 500, 24) 		visible(txt_adf_1,false)
txt_adf_2 =							txt_add("ADF 2", "size:24px; font:my737glass.otf; color:cyan; halign:left;", 695, 710, 100, 24) 	visible(txt_adf_2,false)
txt_efis_range =					txt_add(" ", "size:22px; font:my737glass.otf; color:white; halign:right;", 342, 325, 50, 26) 		visible(txt_efis_range,false)
txt_fpln_nav =						txt_add(" ", "size:24px; font:my737glass.otf; color:magenta; halign:left;", 680, 0, 120, 50) 		visible(txt_fpln_nav,false)
txt_id_eta =						txt_add(" ", "size:22px; font:my737glass.otf; color:white; halign:right;", 650, 28, 80, 50) 		visible(txt_id_eta,false)
txt_id_eta_small =					txt_add("Z", "size:16px; font:my737glass.otf; color:white; halign:left;", 730, 34, 120, 50) 		visible(txt_id_eta_small,false)
txt_lnav_dist_next =				txt_add(" ", "size:22px; font:my737glass.otf; color:white; halign:right;", 650, 54, 80, 50) 		visible(txt_lnav_dist_next,false)
txt_lnav_dist_next_small =			txt_add("NM", "size:18px; font:my737glass.otf; color:white; halign:left;", 730, 58, 40, 50) 		visible(txt_lnav_dist_next_small,false)


canvas_arpt = canvas_add(0, 500 , 60, 20, function()
	_fill("black")
end)visible(canvas_arpt,false)
txt_arpt =							txt_add("ARPT", "size:18px; font:my737glass.otf; color:cyan; halign:left;", 10, 500, 150, 50) 		visible(txt_arpt,false)
canvas_wpt = canvas_add(0, 520 , 50, 20, function()
	_fill("black")
end)visible(canvas_wpt,false)
txt_wpt =							txt_add("WPT", "size:18px; font:my737glass.otf; color:cyan; halign:left;", 10, 520, 150, 50) 		visible(txt_wpt,false)
canvas_sta = canvas_add(0, 540 , 50, 20, function()
	_fill("black")
end)visible(canvas_sta,false)
txt_sta =							txt_add("STA", "size:18px; font:my737glass.otf; color:cyan; halign:left;", 10, 540, 150, 50) 		visible(txt_sta,false)
txt_tcas_off1 =						txt_add("TCAS", "size:18px; font:my737glass.otf; color:#FFAE2A; halign:left;", 10, 670, 150, 50) 	visible(txt_tcas_off1,false)
txt_tcas_off2 =						txt_add("OFF", "size:18px; font:my737glass.otf; color:#FFAE2A; halign:left;", 10, 690, 150, 50) 	visible(txt_tcas_off2,false)
txt_tcas =							txt_add(" ", "size:18px; font:my737glass.otf; color:cyan; halign:left;", 10, 670, 150, 50) 			visible(txt_tcas,false)

canvas_rnp = canvas_add(340, 730 , 40, 40, function()
	_fill("black")
end)visible(canvas_rnp,false)
canvas_anp = canvas_add(420, 730 , 40, 40, function()
	_fill("black")
end)visible(canvas_anp,false)
txt_rnp =							txt_add("RNP", "size:18px; font:my737glass.otf; color:lime; halign:center;", 320, 730, 80, 24) 		visible(txt_rnp, false)
txt_anp =							txt_add("ANP", "size:18px; font:my737glass.otf; color:lime; halign:center;", 400, 730, 80, 24) 		visible(txt_anp, false)
txt_rnp_value =						txt_add(" ", "size:18px; font:my737glass.otf; color:lime; halign:center;", 320, 750, 80, 24) 		visible(txt_rnp_value, false)
txt_anp_value =						txt_add(" ", "size:18px; font:my737glass.otf; color:lime; halign:center;", 400, 750, 80, 24) 		visible(txt_anp_value, false)
txt_rnp_amber =						txt_add("RNP", "size:18px; font:my737glass.otf; color:#FFAE2A; halign:center;", 320, 730, 80, 24) 	visible(txt_rnp_amber, false)
txt_anp_amber =						txt_add("ANP", "size:18px; font:my737glass.otf; color:#FFAE2A; halign:center;", 400, 730, 80, 24) 	visible(txt_anp_amber, false)
txt_rnp_value_amber =				txt_add(" ", "size:18px; font:my737glass.otf; color:#FFAE2A; halign:center;", 320, 750, 80, 24) 	visible(txt_rnp_value_amber, false)
txt_anp_value_amber =				txt_add(" ", "size:18px; font:my737glass.otf; color:#FFAE2A; halign:center;", 400, 750, 80, 24) 	visible(txt_anp_value_amber, false)

--groups
wind_speed_direction = group_add(txt_wind_heading, txt_wind_speed, img_wind_arrow)

cyan_lines = canvas_add(0, 0, 800, 800)

function general_nd (nd_mode, irs_mode, wind_heading, wind_speed, hdg_bug_line, true_airspeed, groundspeed, track_mag_pilot, mcp_hdg_dial, current_heading, map_range, fmc_source, rnp, anp) 
	
	visible(img_triangle,					nd_mode ~= 3) --Airplane symbol (W) MAP, MAP CTR,VOR,APP 
	visible(img_compass_rose_no_text,		nd_mode ~= 3) --Expanded compass (W)
	visible(img_top_mask,					nd_mode ~= 3)
	visible(img_track_line,					nd_mode ~= 3 and irs_mode == 2) --MAP,MAP CTR,VOR,VOR CTR,APP,APP CTR
	visible(img_range_markers,				nd_mode ~= 3) 
	visible(txt_efis_range,					nd_mode == 2) --Number indicates range (VOR CTR and APP CTR do not display range).
	visible(canvas_efis_range,				nd_mode == 2)
	visible(img_track_box,					nd_mode == 2 and irs_mode == 2) --Shows track in MAP, MAP CTR.
	visible(txt_trk_hdg_mag_green,			nd_mode ~= 3 and irs_mode == 2) -- MAG or TRU as the heading reference (TRU still needs to be done)
	visible(img_compass_text,				nd_mode ~= 3 and irs_mode == 2)
	visible(img_magenta_hdg_bug,			nd_mode ~= 3 and irs_mode == 2) --All except PLAN
	visible(img_magenta_line,				nd_mode ~= 3 and hdg_bug_line == 1 and irs_mode == 2)
	visible(img_current_hdg_bug,			nd_mode == 2 and irs_mode == 2)
	visible(txt_trk_hdg,					nd_mode == 2 and irs_mode == 2)
	visible(txt_gs,							irs_mode == 2)
	visible(txt_tas,						irs_mode == 2)
	visible(txt_fmc_source,					irs_mode == 2)
	visible(txt_hdg_failure_flag,			irs_mode ~= 2)
	visible(txt_map_failure_flag,			irs_mode ~= 2)
	visible(hdg_failure_flag_box,			irs_mode ~= 2) -- could use more logic instead of just going away when irs is aligned
	visible(map_failure_flag_box,			irs_mode ~= 2) -- could use more logic instead of just going away when irs is aligned
	
	txt_set(txt_rnp_value, string.format("%.2f", rnp))
	txt_set(txt_anp_value, string.format("%.2f", anp))
	txt_set(txt_rnp_value_amber, string.format("%.2f", rnp))
	txt_set(txt_anp_value_amber, string.format("%.2f", anp))
	
	visible(canvas_rnp,						rnp > 0)
	visible(canvas_anp,						rnp > 0)
	visible(txt_rnp, 						rnp > 0)
	visible(txt_anp, 						rnp > 0)
	visible(txt_rnp_amber, 					rnp > 0 and anp > rnp)
	visible(txt_anp_amber, 					rnp > 0 and anp > rnp)
	
	
	visible(txt_rnp_value, 					rnp > 0)
	visible(txt_anp_value, 					rnp > 0)
	visible(txt_rnp_value_amber, 			rnp > 0 and anp > rnp)
	visible(txt_anp_value_amber, 			rnp > 0 and anp > rnp)
	
	
	if fmc_source == 1 then txt_set(txt_fmc_source, "FMC L")
	elseif fmc_source == 2 then txt_set(txt_fmc_source, "FMC R")end
	
	txt_set(txt_trk_hdg, string.format("%03d", var_round(track_mag_pilot)))
	
	if irs_mode == 2 then
		img_rotate(img_compass_rose_no_text,(track_mag_pilot * -1))
		img_rotate(img_compass_text,(track_mag_pilot * -1))
		img_rotate(img_magenta_hdg_bug,mcp_hdg_dial - track_mag_pilot)
		img_rotate(img_magenta_line,mcp_hdg_dial - track_mag_pilot)
		img_rotate(img_current_hdg_bug,current_heading - track_mag_pilot)
	end
	
	if nd_mode == 2 then 
		txt_set(txt_trk_hdg_green, "TRK") --Shows track in MAP, MAP CTR.
	else
		txt_set(txt_trk_hdg_green, "HDG") --Shows HDG (heading) in VOR,	VOR CTR, APP, APP CTR
	end
	visible(txt_trk_hdg_green,				nd_mode ~= 3 and irs_mode == 2)
	
	local tas = var_round(true_airspeed * 1.94384)
	
	txt_set(txt_wind_heading, var_round(wind_heading).."°")
	txt_set(txt_wind_speed, "/"..var_round(wind_speed))
	
	img_rotate(img_wind_arrow, (wind_heading - track_mag_pilot) - 180)
	
	if tas < 101 then --Current true airspeed displayed above 100 knots
		txt_set(txt_tas_value, "---")
	else
		txt_set(txt_tas_value, tas)
	end
	
	if 		map_range == 0 then
		txt_set(txt_efis_range, "2.5")
	elseif	map_range == 1 then
		txt_set(txt_efis_range, "5")
	elseif	map_range == 2 then
		txt_set(txt_efis_range, "10")
	elseif	map_range == 3 then
		txt_set(txt_efis_range, "20")
	elseif	map_range == 4 then
		txt_set(txt_efis_range, "40")
	elseif	map_range == 5 then
		txt_set(txt_efis_range, "80")
	elseif	map_range == 6 then
		txt_set(txt_efis_range, "160")
	elseif	map_range == 7 then
		txt_set(txt_efis_range, "320")
	end
	
	txt_set(txt_gs_value, string.format("%3s", var_round(groundspeed)))
	visible(txt_tas_value,					irs_mode == 2)
	visible(txt_gs_value,					irs_mode == 2)
	visible(wind_speed_direction,			tas > 101 and irs_mode == 2) --  Blank until TAS is greater than 101 knots. --still need to do : PLAN mode displays speed/direction only.
	
end
xpl_dataref_subscribe("laminar/B738/EFIS_control/capt/map_mode_pos", "INT", --no_mode, 0 app, 1 vor, 2 map, 3 pln
					  "laminar/B738/irs/irs_mode", "INT",
					  "sim/cockpit2/gauges/indicators/wind_heading_deg_mag", "FLOAT",
					  "sim/cockpit2/gauges/indicators/wind_speed_kts", "FLOAT",
					  "laminar/B738/nd/hdg_bug_line", "INT", 
					  "sim/flightmodel/position/true_airspeed", "FLOAT", 
					  "laminar/b738/fmodpack/real_groundspeed", "FLOAT",
					  "sim/cockpit2/gauges/indicators/ground_track_mag_pilot", "FLOAT",
					  "laminar/B738/autopilot/mcp_hdg_dial", "FLOAT",
					  "sim/cockpit2/gauges/indicators/heading_AHARS_deg_mag_pilot", "FLOAT",
					  "laminar/B738/EFIS/capt/map_range", "INT",
					  "laminar/B738/nd/capt/fmc_source", "INT",
					  "laminar/B738/fms/rnp", "FLOAT",
					  "laminar/B738/fms/anp", "FLOAT",
					  general_nd)

function top_right_corner(fpln_nav_id, lnav_dist_next, id_eta)

	txt_set(txt_fpln_nav, fpln_nav_id)
	txt_set(txt_id_eta, string.format("%.2f", id_eta))
	if lnav_dist_next > 100 then
		txt_set(txt_lnav_dist_next, var_round(lnav_dist_next))
	else
		txt_set(txt_lnav_dist_next, string.format("%.1f", lnav_dist_next))
	end

	if fpln_nav_id == "" then
		visible(txt_fpln_nav,false)
		visible(txt_id_eta,false)
		visible(txt_id_eta_small,false)
		visible(txt_lnav_dist_next,false)
		visible(txt_lnav_dist_next_small,false)
	else
		visible(txt_fpln_nav,true)
		visible(txt_id_eta,true)
		visible(txt_id_eta_small,true)
		visible(txt_lnav_dist_next,true)
		visible(txt_lnav_dist_next_small,true)
	end
	

	
end
xpl_dataref_subscribe(	"laminar/B738/fms/fpln_nav_id", "STRING", -- next waypoint in magenta
						"laminar/B738/fms/lnav_dist_next", "FLOAT", -- distance to this waypoint
						"laminar/B738/fms/id_eta", "FLOAT", -- eta this this waypoint
						top_right_corner)
						
lib_efis_functions()	
lib_waypoints()	
lib_tcas ()				  
						
black_bg_no_power = canvas_add(0, 0, 800, 800, function() --black canvas over everything to simulate displays that are off
	_fill("black")
end)
fade = canvas_add(0, 0, 800, 800, function() --black canvas for fading instrument
	_fill("black")
end)visible(fade,true)

function pwr_callback(instrument_brightness, batbus_status)

	visible(black_bg_no_power, 	batbus_status == 0) -- blank displays if no power, probably needs to check for more stuff here than just batbus_status
	local x = 1 - instrument_brightness[3] -- fades the ND
	opacity(fade, x)

end
xpl_dataref_subscribe(	"laminar/B738/electric/instrument_brightness", "FLOAT[16]",
						"laminar/B738/electric/batbus_status", "INT", pwr_callback)


--TO DOs

--laminar/B738/pfd/ils_rotate0
--laminar/B738/nd/tc_x
--laminar/B738/nd/tc_y -- top of climb position
--laminar/B738/nd/td_x
--laminar/B738/nd/td_y -- top of descent position
--laminar/B738/EFIS/green_arc --float
--laminar/B738/EFIS/green_arc_show
--finish vors
--finish efis text
--fix NM if greater 100, no decimal, alignment
-- flightplan stuff
-- WPTs added to display
-- how to display weather and terrain ??????