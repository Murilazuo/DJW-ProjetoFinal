/// @description Insert description here
// You can write your code in this editor

if keyboard_check_pressed(obj_GameManager.inputInteract){
	
	//Set Ui floor
	obj_floorUi.SetFloor(other.floorHeight, other.numberFloor)

	//move player and hud to next flor
	var nextFloorY = (32 * other.floorHeight);
	x= other.xPosition;
	y += nextFloorY;
	obj_LevelManager.y += nextFloorY;
	obj_LevelManager.x = other.xPosition;

}