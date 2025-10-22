/// @description Drawing
// This code will print score
//draw_self();

//This will make the score follow the player
var cx = camera_get_view_x(view_camera[0]);
var cy = camera_get_view_y(view_camera[0]); 
var cw = camera_get_view_width(view_camera[0]); 

draw_text(cx + (cw / 2), cy + 25, string(thescore)); 

//This will actually draw the font 
draw_set_font(fnt_score); 

//This will color font
draw_set_colour(c_white);
draw_text(cx + (cw / 2), cy + 25, string(thescore));

