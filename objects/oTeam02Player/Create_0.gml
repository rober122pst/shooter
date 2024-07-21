vida = 100;

right = 1; left = -1;

dir = choose(right, left);

chasing = 1; running = 2;

state = running;

hspd = 4;
vspd = 0;
grvt = .3;
jump = false;

while(place_free(x,y+1)) {
	y++;	
}

gun = choose(sGun01, sGun02);

spriteIdle = choose(sTeam2Idle01, sTeam2Idle02);

switch (spriteIdle){
	case sTeam2Idle01:
		spriteJump = sTeam2Jump01;
		spriteRun = sTeam2Run01;
		break;
	case sTeam2Idle02:
		spriteJump = sTeam2Jump02;
		spriteRun = sTeam2Run02;
		break;
}