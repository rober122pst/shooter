vida = 100;

right = 1; left = -1;

dir = choose(right, left);

chasing = 1; running = 2;

state = choose(chasing, running);

hspd = 4;
vspd = 0;
grvt = .3;
jump = false;

while(place_free(x,y+1)) {
	y++;	
}

depth = 10

gun = choose(sGun01, sGun02);