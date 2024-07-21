// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function pulo(){
	vspd += grvt;

	if (!place_free(x, y + 1 ) && jump) {
		jump = false;
		vspd = -8;
	}

	if (!place_free(x, y + vspd)) {
		var signVspd = 0;
		if vspd >= 0 {
			signVspd = 1;	
		}else {
			signVspd = -1;
		}
		while(place_free(x, y+signVspd)) {
			y+=signVspd;	
		}
		vspd = 0;
	}

	y+=vspd
	
}