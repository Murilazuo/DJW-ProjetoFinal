/// @description Insert description here
// You can write your code in this editor
if(instance_exists(obj_GameManager.player)){
	PointAtPlayer();
}

if(!instance_exists(myBiker))
{
	instance_destroy();
}