/// @description Insert description here
// You can write your code in this editor
var cx = camera_get_view_x(view_camera[0]);
var cy = camera_get_view_y(view_camera[0]); 
var cw = camera_get_view_width(view_camera[0]); 

draw_text(cx + (cw / 2), cy + 25, string(hp)); 

//This will actually draw the font 
draw_set_font(fnt_score); 

//This will color font
draw_set_colour(c_white);
draw_text(cx + (cw / 2), cy + 25, string(hp));

