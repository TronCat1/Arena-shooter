/// @description Insert description here
// You can write your code in this editor
if (instance_exists(obj_player))
{
	move_towards_point(obj_player.x, obj_player.y, spd);
}

image_angle = direction;
//Killed if object is below 0 hp
if (hp) <= 0
{
	with(obj_score) thescore = thescore + 10;
	instance_destroy();
}



