/// @description Insert description here
// You can write your code in this editor

/// @description movement code

//code that runs every frame

global.xPos = x;
global.yPos = y;

if global.isTransitioning
{
	global.transitionTimer -= 1/room_speed;
	if global.transitionTimer <=0
	{
		global.enterLeft = false;
		global.enterRight = false;
		global.isTransitioning = false;
		global.transitionTimer = 1;
	}
}

script_execute(state_array[state]);
sprite_index = sprite_array[state];
