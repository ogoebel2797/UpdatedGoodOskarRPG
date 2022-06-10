if global.enterLeft
{
	oPlayer.x = global.xPos + ((room_width - 64) - sprite_width);
	oPlayer.y = global.yPos;
}

else if global.enterRight
{
	instance_destroy(oPlayer)
	instance_destroy(oSpaceship)
	instance_destroy(oGreenGobbler)
	instance_destroy(oLeanMan)
	room_goto(blankRoom0)
}

else
{
	oPlayer.x = 0;
	oPlayer.y = 0;
}
instance_destroy(oHUD)
audio_play_sound(sEndLevel, 5, false)