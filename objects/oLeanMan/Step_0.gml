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

if global.slide
	{
		global.sliding = true;
	}

if global.sliding
{
	slideTimer -= 1/room_speed;
	audio_play_sound(sSlide, 5, false)
	if slideTimer <= 0
	{
		global.sliding = false;
		xSpeed = 5;
		ySpeed = 5;
		slideTimer = 1;
	
	}
	if (!place_empty(x + xVector, y))
	{
	xVector = 0;
	}
	if (!place_empty(y + yVector, x))
	{
	yVector = 0;
	}
	//otherwise move fast
	if omniDirection = -2
	{
		ySpeed += (0 - (ySpeed * 2) / 100);
	}
	if omniDirection = 2
	{
		ySpeed += (0 - (ySpeed * 2) / 100);
	}
	//otherwise move fast
	if omniDirection = -1
	{
		xSpeed += (0 - (xSpeed * 2) / 100);
	}
	if omniDirection = 1
	{
		xSpeed += (0 - (xSpeed * 2) / 100);
	}
}
