/// @description Player movement
// Moving player with arrow keys
//speed variable
var spd = 10

if(keyboard_check(vk_right)) x +=spd; 
if(keyboard_check(vk_left)) x -=spd;
if(keyboard_check(vk_down)) y +=spd;
if(keyboard_check(vk_up)) y -=spd;

//Moving player with 'wasd'
if(keyboard_check(ord("W"))) y -=spd
if(keyboard_check(ord("A"))) x -=spd
if(keyboard_check(ord("S"))) y +=spd
if(keyboard_check(ord("D"))) x +=spd

image_angle = point_direction(x, y, mouse_x, mouse_y); 

//shooting

if (mouse_check_button(mb_left)) && (cooldown < 0)
{
	instance_create_layer(x,y,"BulletsLayer", obj_bullet);	
	cooldown = 0;
} 
cooldown = cooldown - 1;