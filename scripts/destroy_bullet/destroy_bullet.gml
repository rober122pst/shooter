// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function destroy_bullet(){
	instance_create_depth(x,y,-10,oExplosion)
	instance_destroy();
}