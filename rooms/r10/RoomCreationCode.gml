if global.enterLeft
{
	oPlayer.x = global.xPos + ((room_width - 64) - sprite_width);
	oPlayer.y = global.yPos;
}

else if global.enterRight
{
	oPlayer.x = global.xPos - ((room_width - 64) - sprite_width);
	oPlayer.y = global.yPos;
}

else
{
	oPlayer.x = 1300;
	oPlayer.y = 650;
}

audio_play_sound(sLevelMusic, 5, false)