/// @description Insert description here
// You can write your code in this editor

/*
if(keyboard_check(vk_numpad1)){
	obj_GameManager.NextLevel(levels.debugShooter);
}
if(keyboard_check(vk_numpad2)){
	obj_GameManager.NextLevel();
	obj_GameManager.totalMoney +=9999;
}
if(keyboard_check(vk_numpad3)){
	obj_GameManager.NextLevel(levels.debugRunner);
	//room_goto(runnerPlayerDebugRoom);
}
if(keyboard_check(vk_numpad4)){
	room_goto(roomCredits);
}
if(keyboard_check(vk_numpad5)){
	obj_GameManager.NextLevel(levels.B1Runner);
}

if(keyboard_check(vk_numpad6)){
	obj_GameManager.NextLevel(levels.endLevel);
}
s
if keyboard_check_pressed(vk_numpad0) debug = !debug;

ManagerDebugMode();
if(instance_exists(obj_GameManager.player)){
FollowPlayer(60,-80);
}