/// @description Insert description here
// You can write your code in this editor

if obj_GameManager.playerMoney >= price {
	obj_GameManager.playerMoney -= price;
	isBuy = true;
}

show_debug_message(obj_GameManager.playerMoney);


if isBuy == true {
	obj_upgradeBikeBtn.isSelect = false;
	isSelect =  true;
		
	obj_GameManager.bikeSpeed = bikeSpeed;
}
