draw_text(10,10,"Ammo: "+string(ammo));

var xx = view_get_wport(view_wport[0]) - 130;
var yy = 10;

var width = xx + ((vida/100)*120)
var height = yy+25;

draw_set_color(c_red);
draw_rectangle(xx, yy, xx+120, height, false)

draw_set_color(c_green);
draw_rectangle(xx, yy, width, height, false)