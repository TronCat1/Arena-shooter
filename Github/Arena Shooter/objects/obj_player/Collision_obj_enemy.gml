/// @description death
with (other) 
{
	hp = hp -1;
}

if (hp) <=0
{
	instance_destroy()
}
