if (vida <= 0)
	room_restart();

var move = false;

if (keyboard_check(vk_right) && place_free(x + hspd, y)) {
	x+=hspd;
	image_xscale = 1;
	move = true;
}else if (keyboard_check(vk_left) && place_free(x - hspd, y)) {
	x-=hspd;
	image_xscale = -1;
	move = true;
}

if (keyboard_check(vk_space) && !place_free(x, y+1)) {
	jump = true;	
}

if (keyboard_check_pressed(ord("F"))) {
	if(ammo > 0) {
		var bullet = instance_create_depth(x+(20*image_xscale),y,1,oBullet);
		bullet.speed = 15*image_xscale;
		ammo--;
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

camera_set_view_pos(view_camera[0], x - view_wport[0]/2, y);