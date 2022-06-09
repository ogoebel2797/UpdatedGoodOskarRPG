/// @description Insert description here
// You can write your code in this editor

instance_destroy(oPlayer);
instance_destroy(oSpaceship);
instance_destroy(oGreenGobbler);
instance_destroy(oLeanMan);
room_restart();
room_goto(blankRoom0);
instance_destroy(oHUD);