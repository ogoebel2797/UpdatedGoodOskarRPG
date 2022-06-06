//restart level
if attack = false
{
x = x - xVector*10;
y = y - yVector*10;
PlayerHurt();
}

if attack = true
{
	EnemyHurt();
}
