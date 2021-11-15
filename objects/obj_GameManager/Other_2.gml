
//attack
inputShoot = mb_left;
inputAttakMelee = mb_right;
//Move
inputLeft = ord("A");
inputRight = ord("D");
inputUp = ord("W");
inputDown = ord("S");
inputJump = ord("W")//vk_space;
inputSlide = ord("S")//vk_shift;
//Other Input
inputInteract = ord("E");
inputHealing = ord("Q");

//COMBAT VARIABLES
//bulletSpeed = 15;
//playerHealth = 5;
playerMoney = 600;
healingItem = 0;


//SHOOTER VARIABLES
bikeSpeed = 6;
stageDifficulty = 1; //aumentar em determinados momentos do shooter
bulletSpawnVarX = 0;
bulletSpawnVarY = 0;



//RANGED WEAPONS DMG
currentDamage = .9;
currentRPS = 10;
currentOverheat = 8;
currentCooldown = 4;
currentPrecision = 5;

//MELEE WEAPONS DMG
laserKatanaDMG = 100;

player = noone;

//GAME STATE
gameState = GameState.Menu;
//level = 0;
levelRoom = roomStart;

//OPTIONS VARIABLE
masterVolume = 1; //acessar no arquivo de save

//RUNNER SPEED
global.baseSpeed = startBaseSpeed;

playerStop = false;


//LEVEL CALL ENUMS
enum levels
{
	debugShooter,
	debugRunner,
	
	start,
	credits,
	options,
	
	A1Shooter,
	B1Runner,
	C1Shooter,
	D1Runner,
	
	A2Runner,
	B2Shooter,
	C2Shooter,
	D2Runner,
	
	A3Shooter,
	B3Runner,
	C3Runner,
	D3Shooter
	
	
}



//Level Manager
/*
runnerLevel = 1;

function RunnerLevel(){
	
	switch(runnerLevel){
	case 0:
		levelRoom = runnerPlayerDebugRoom;
		gameState = GameState.Runner;
		room_goto(runnerPlayerDebugRoom);

		break;
	case 1:
		levelRoom = runner1;
		gameState = GameState.Runner;
		room_goto(runner1);
		break;
	case 2:
		levelRoom = runner2;
		gameState = GameState.Runner;
		room_goto(runner2);
		break;
	}
				

}*/
levelId = 0;
function NextLevel(levelToGo){ //, nextLevel = false, newRunnerLevel = undefined){
	//level++;
	
	//if(nextLevel == true) runnerLevel++;

	switch(levelToGo){
		
		//debugs
		case levels.debugShooter:
		levelRoom = shooterDebugRoom;
		gameState = GameState.Shooter;
		room_goto(shooterDebugRoom);
			break;
		case levels.debugRunner:
		levelRoom = runnerPlayerDebugRoom;
		gameState = GameState.Runner;
		room_goto(runnerPlayerDebugRoom);
		//if(newRunnerLevel != undefined) runnerLevel = newRunnerLevel
		//RunnerLevel();
			break;
			
		//Menu
		case levels.start:
			//levelRoom = roomStart;
		gameState = GameState.Menu;
		room_goto(roomStart);
			break;
		case levels.credits:
			//levelRoom = roomCredits;
			gameState = GameState.Menu;
			room_goto(roomCredits);
			break;
		case levels.options:
			//levelRoom = roomCredits;
			gameState = GameState.Menu;
			room_goto(roomOptions);
			break;
		
		//level 1	
		case levels.A1Shooter:
			GoToRoom(room1AShooter,GameState.Shooter,1);
			break;
		case levels.B1Runner:
			GoToRoom(room1BRunner,GameState.Runner,2);
			break;
		case levels.C1Shooter:
			GoToRoom(room1CShooter,GameState.Shooter,3);
			break;
		case levels.D1Runner:
			GoToRoom(room1DRunner,GameState.Runner,4);
			break;
		//level 2
		case levels.A2Runner:
			GoToRoom(room2ARunner,GameState.Runner,5);
			break;
		case levels.B2Shooter:
			GoToRoom(room2BShooter,GameState.Shooter,6);
			break;
		case levels.C2Shooter:
			GoToRoom(room2CShooter,GameState.Shooter,7);
			break;
		case levels.D2Runner:
			GoToRoom(room2DRunner,GameState.Runner,8);
			break;
		//level 3
		case levels.A3Shooter:
			GoToRoom(room3AShooter,GameState.Shooter,9);
			break;
		case levels.B3Runner:
			GoToRoom(room3BRunner,GameState.Runner,10);
			break;
		case levels.C3Runner:
			GoToRoom(room3CRunner,GameState.Runner,11);
			break;
		case levels.D3Shooter:
			GoToRoom(room3DShooter,GameState.Shooter,12);
			break;
		
		//upgrade
		default:
		levelRoom = upgradeRoom;
		gameState = GameState.Upgrade;
		room_goto(upgradeRoom);
			break;
		
	}

}

function AddMoney(){
	playerMoney++;	
}

function GoToRoom(roomToGo, state, newLevelId){
	levelRoom = roomToGo;
	gameState = state;
	room_goto(roomToGo);
	levelId = newLevelId;
}