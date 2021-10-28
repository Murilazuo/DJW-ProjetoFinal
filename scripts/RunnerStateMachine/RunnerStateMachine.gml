//Murilo

enum RunnerPlayerState {Run,Jump,Fall,Slide,Idle,Parry,ExitLevel, Attack}

enum PlayerAttackState { Middle, Up , Down, None }



function RunState(){
	playerStateName = "Run";
	//sprite Run
	
	if(CenterCameraDistance(id,axis.X) > playerCameraLimit){	//check if the player is in the limit of the camera
		if(keyboard_check(gameManager.inputLeft)){	//move right
		SetSpeed(playerSpeed);	
	}else SetSpeed(0);	
	}
	else if(keyboard_check(gameManager.inputRight)){	//move right
		SetSpeed(playerSpeed);	
	}else SetSpeed(0);	
	
	if(CenterCameraDistance(id,axis.X) < -playerCameraLimit){	//check if the player is in the limit of the camera
		if(keyboard_check(gameManager.inputRight)){	//move right
		SetSpeed(playerSpeed);	
	}else SetSpeed(0);	
	} else if(keyboard_check(gameManager.inputLeft)){	//move left
		SetSpeed(-playerSpeed);	
	}else if (keyboard_check_released(gameManager.inputLeft)){
		SetSpeed(0);	
	}
	
		


	//change state situation
	if mouse_check_button_pressed(obj_GameManager.inputAttakMelee){
		attackState = PlayerAttackState.Middle;
		playerState = RunnerPlayerState.Attack;
	}else if keyboard_check_pressed(obj_GameManager.inputSlide) playerState = RunnerPlayerState.Slide;
	else if keyboard_check_pressed(obj_GameManager.inputJump) playerState = RunnerPlayerState.Jump;
	else if place_free(x,y) playerState = RunnerPlayerState.Fall;
	
}

function SlideState(){
	playerStateName = "Slide";

	slide_counter ++;
	sprite_index = sprPlayerSlide;

			

	//change state situation
	if mouse_check_button_pressed(obj_GameManager.inputAttakMelee){
		attackState = PlayerAttackState.Down;
		playerState = RunnerPlayerState.Attack;
	}else if(slide_counter >= slide_time || (keyboard_check_released(obj_GameManager.inputSlide) && slide_counter >= slide_min_time)) {
		slide_counter = 0;
		playerState = RunnerPlayerState.Run;
	}
}

function JumpState(){
	playerStateName = "Jump";

	vsp = -jump_speed;
	jump_counter++;
	
		

	//change state situation
	 if mouse_check_button_pressed(obj_GameManager.inputAttakMelee){
		attackState = PlayerAttackState.Up;
		playerState = RunnerPlayerState.Attack;
	}else if(jump_counter >= jump_time || (jump_counter >= jump_min_time && !keyboard_check(obj_GameManager.inputJump))) {
		playerState = RunnerPlayerState.Fall;
		jump_counter = 0;
	//}
//	else if(jump_counter >= jump_min_time && !keyboard_check(obj_GameManager.inputJump)) {
//		playerState = RunnerPlayerState.Fall;
//		jump_counter = 0;
	}
	
	 y+=vsp;
}

function FallState(){
	playerStateName = "Fall";
	if(vsp <= 0) vsp = gravity_force;

	vsp += gravity_acereration;

	
	
	//change state situation
	if mouse_check_button_pressed(obj_GameManager.inputAttakMelee){
		attackState = PlayerAttackState.Up;
		playerState = RunnerPlayerState.Attack;
	}else if(place_meeting(x,y + vsp,groundCheck)){ 
		playerState = RunnerPlayerState.Run;
	}	
	y+=vsp
}

function IdleState(){
	playerStateName = "Idle";
	speed = 0;
}


function ExitLevelState(){
	playerStateName = "Exit Level";
	var distanceToEndRoom = room_width - x;
	
	if(distanceToEndRoom < -64){
	obj_GameManager.gameState = GameState.Shooter;
	room_goto(shooterDebugRoom)	
	}else if (distanceToEndRoom < 64){
		vsp += -0.5;
	}else if (distanceToEndRoom < 96){
		vsp = -3;
	}else vsp = 0;
	
	y += vsp;
}

function AttackState(){	
	playerStateName = "Attack";
	if (image_index >= 0 && image_index <= 4)
		inAttack = true;
	else inAttack = false;
		
	switch(attackState){
		case PlayerAttackState.Up:
			SetAttackState(spr_AttackUp,"Up");
			break;

		case PlayerAttackState.Middle:
			SetAttackState(spr_AttackMiddle,"Middle");
			break;
		case PlayerAttackState.Down:
			SetAttackState(spr_AttackDown,"Down");

			break;
		default:
	}
		
	SetSpeed(0);

	
}

function SetAttackState(sprAttack, stateName){
	sprite_index = sprAttack;
	attackStateName = stateName;		
}