if (vida <= 0) {
	instance_destroy();
	oCounter.team_1++;
}
var move = false;
if(state == running) {
	if(dir == right) {
		if (place_free(x + hspd, y)) {
			x+=hspd;
			image_xscale = 1;
			move = true;
		}
	}else if(dir == left) {
		if (place_free(x - hspd, y)) {
			x-=hspd;
			image_xscale = -1;
			move = true;
		}
	}
	
	if(random(100) < 5) {
		state = chasing;
	}
}else if(state == chasing) {
	
	if(random(100) < 5) {
		state = running;
	}
	
	var objTarget = instance_nearest(x,y,oTeam02Player)
	
	if(instance_exists(objTarget)) {
		if(abs((objTarget.y) - abs(y) < 8)) {
			if(point_distance(x,y,objTarget.x,objTarget.y) < 130) {
				if(random(100) < 5) {
					var bullet = instance_create_depth(x+(20*image_xscale),y,1,oBullet);
					bullet.speed = 15*image_xscale;
				}
			}else {
				if(objTarget.x < x) {
					dir = left;
				}else if(objTarget.x > x) {
					dir = right;
				}
	
				if(dir == right) {
					if (place_free(x + hspd, y)) {
						x+=hspd;
						image_xscale = 1;
						move = true;
					}
				}else if(dir == left) {
					if (place_free(x - hspd, y)) {
						x-=hspd;
						image_xscale = -1;
						move = true;
					}
				}
			
				if((vida <= 15 ) && (objTarget.vida > vida)) {
					state = running;
					show_debug_message("Fugindo2")
				}
			}
		}else {
			state = running	
		}
	}
}

if(random(100) < 5) {
	dir = choose(right, left);
}

if(place_meeting(x+1, y, oSolid2)) {
	if(jump == false) {
		jump = true;
	}
}else if(place_meeting(x-1, y, oSolid2)) {
	if(jump == false) {
		jump = true;
	}
}
//Sistema de Pulo
pulo();

if move {
	sprite_index = sTeamRun01;
}else {
	sprite_index = sTeamIdle01;
}

if(vspd < 0) {
	sprite_index = sTeamJump01;
	image_index = 0;
}else if(vspd > 0) {
	sprite_index = sTeamJump01;
	image_index = 1;
}