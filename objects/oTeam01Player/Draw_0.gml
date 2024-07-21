draw_self();
draw_sprite_ext(gun,0,x+(25*image_xscale),y+3,image_xscale,image_yscale,0,c_white,1);

if(state == chasing) 
	draw_sprite(sChasing, 0, x, y-37)
	
var xx = x - 26;
var yy = y - 28;

var width = xx + ((vida/100)*50)
var height = yy+5;

draw_set_color(c_black);
draw_rectangle(xx, yy, xx+50, height, false)

draw_set_color(c_red);
draw_rectangle(xx, yy, width, height, false)
