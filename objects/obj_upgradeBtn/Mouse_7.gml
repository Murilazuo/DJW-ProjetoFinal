/// @description Insert description here
// You can write your code in this editor

if obj_GameManager.playerMoney >= price {
	obj_GameManager.playerMoney -= price;
	isBuy = true;
	gunDescription = originalDescription;
}

show_debug_message(obj_GameManager.playerMoney);


if isBuy == true {
	obj_upgradeBtn.isSelect = false;
	isSelect =  true;
		
	obj_GameManager.currentDamage = DMG;
	obj_GameManager.currentRPS = RPS;
	obj_GameManager.currentOverheat = overheat;
	obj_GameManager.currentCooldown = cooldown;
	obj_GameManager.currentPrecision = precision;
}

