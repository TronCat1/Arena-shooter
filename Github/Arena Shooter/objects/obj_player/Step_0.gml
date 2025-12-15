/// @description Player movement
// Moving player with arrow keys
//speed variable
player_speed = 7



image_angle = point_direction(x, y, mouse_x, mouse_y); 

//shooting

if (mouse_check_button(mb_left)) && (cooldown < 0)
{
	instance_create_layer(x,y,"BulletsLayer", obj_bullet);	
	cooldown = 0;
} 
cooldown = cooldown - 1;

if(keyboard_check(vk_shift))
{
	player_speed = 10
}

var spd = player_speed

if(keyboard_check(vk_right)) x +=spd; 
if(keyboard_check(vk_left)) x -=spd;
if(keyboard_check(vk_down)) y +=spd;
if(keyboard_check(vk_up)) y -=spd;

//Moving player with 'wasd'
if(keyboard_check(ord("W"))) y -=spd
if(keyboard_check(ord("A"))) x -=spd
if(keyboard_check(ord("S"))) y +=spd
if(keyboard_check(ord("D"))) x +=spd




dash_speed = 25;
dash_time = 6;        // how many steps the dash lasts
dash_timer = 0;
dash_cooldown = 0;   // delay before next dash
dash_cd_timer = 0;

// --------------------
// DASH INPUT
// --------------------
if (keyboard_check_pressed(vk_space) && dash_cd_timer <= 0) {

    dash_dir_x = keyboard_check(ord("D")) - keyboard_check(ord("A"));
    dash_dir_y = keyboard_check(ord("S")) - keyboard_check(ord("W"));

    // Don't dash without direction
    if (dash_dir_x != 0 || dash_dir_y != 0) {

        // Normalize diagonal dash
        var len = point_distance(0, 0, dash_dir_x, dash_dir_y);
        dash_dir_x /= len;
        dash_dir_y /= len;

        dash_timer = dash_time;
        dash_cd_timer = dash_cooldown;
    }
}

// --------------------
// DASH MOVEMENT
// --------------------
if (dash_timer > 0) {
    x += dash_dir_x * dash_speed;
    y += dash_dir_y * dash_speed;
    dash_timer--;
    exit;
}

// --------------------
// NORMAL MOVEMENT
// --------------------
var spd = keyboard_check(vk_shift) ? 10 : 7;

if (keyboard_check(ord("D"))) x += spd;
if (keyboard_check(ord("A"))) x -= spd;
if (keyboard_check(ord("S"))) y += spd;
if (keyboard_check(ord("W"))) y -= spd;

// --------------------
// COOLDOWNS
// --------------------
if (dash_cd_timer > 0) dash_cd_timer--;

