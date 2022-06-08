// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function StateGobblerDashing()
{
	//what does the state do?
	CheckInputs();
	dashTimer -= 1/room_speed;
	if dashTimer <= 0
	{
		global.dashing = false;
		dashTimer = 1;
	}

	//otherwise move fast
	if global.dashing
	{
	
		if omniDirection = -1
		{
			x = x - 10;
		}
		if omniDirection = 1
		{
			x = x + 10;
		}
	
		if omniDirection = -2
		{
			y = y - 10;
		}
		if omniDirection = 2
		{
				y = y + 10;
		}
	}
	
	CheckCollisionsX();
	CheckCollisionsY();
	
	if (!place_empty(x + xVector, y))
	{
	global.dashing = false;
	dashTimer = 0.3;
	}

	if (!place_empty(x, y + yVector))
	{
	global.dashing = false;
	dashTimer = 0.3;
	}

	//animations for the state
	
	//conditions for leaving the state
	
	if global.dashing = false
	{
		state = gstates.gidle;
	}


}
