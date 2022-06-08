/// @description Insert description here
// You can write your code in this editor

if (isInvincible)
{
	invTimer -= 1/room_speed;
	if (invTimer < 0)
	{
		invTimer = 0.5;
		isInvincible = false;
	}
}

xDirection = sign(oGreenGobbler.x - x);
xVector = xSpeed * xDirection;

if (abs(oGreenGobbler.x - x) < 128)
{
	x = x + xVector
}

yDirection = sign(oGreenGobbler.y - y);
yVector = ySpeed * yDirection;

if (abs(oGreenGobbler.y - y) < 128)
{
	y = y + yVector
}

if stun
{
	stunTimer -= 1/room_speed
	if stunTimer <= 0
	{
		stunTimer = 2;
		stun = false;
		xSpeed = 2;
		ySpeed = 2;
	}
}