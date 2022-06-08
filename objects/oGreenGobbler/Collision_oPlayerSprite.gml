/// @description Insert description here
// You can write your code in this editor
if keyboard_check(ord("E"))
{
	instance_change(oPlayer, false);
	instance_destroy(other);
}

if instance_change(oPlayer, true)
{
	global.dash = false;
	global.dashing = false;
	state = states.idle;
}
