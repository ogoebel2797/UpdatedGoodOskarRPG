if global.enterLeft
{
	oPlayer.x = global.xPos + ((room_width - 64) - sprite_width);
	oPlayer.y = global.yPos;
}

else if global.enterRight
{
	oPlayer.x = 160;
	oPlayer.y = 700
}

else
{
	oPlayer.x = 160;
	oPlayer.y = 730;
}

//audio_play_sound(sLevelMusic, 5, false)