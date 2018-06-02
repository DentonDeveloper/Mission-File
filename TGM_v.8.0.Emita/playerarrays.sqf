////////////////////////////////////
////			         //
//      Copyright © TCG         //
//www.tcgaming.enjin.com       //
////////////////////////////////



waitUntil {((alive player) or (local server))};

if(local server and !local player)then{dedicatedServer = true};	
if(local server and local player)then{hostedServer = true};

playerstringarray = ["Civ1","Civ2","Civ3","Civ4","Civ5","Civ6","Civ7","Civ8","Civ9","Civ10","Civ11","Civ12","Civ13","Civ14","Civ15","Civ16","Civ17","Civ18","Civ19","Civ20","Civ21","Civ22","Civ23","Civ24","Civ25","Civ26","Civ27","Civ28","Civ29","Civ30","civ31","civ32","civ33","civ34","civ35","civ36","civ37","civ38","civ39","civ40","civ41","civ42","civ43","civ44","civ45","civ46","civ47","civ48","civ49","civ50","civ51","Cop1","Cop2","Cop3","Cop4","Cop5","Cop6","Cop7","Cop8","Cop9","Cop10","Cop11","Cop12","Cop13","Cop14","Cop15","Cop16","Cop17","Cop18","Cop19","Cop20","Cop21","Cop26","Cop27","Cop28","Cop29","Cop30"];

for [{_i=0}, {_i < (count playerstringarray)}, {_i=_i+1}] do {if (isNil (playerstringarray select _i)) then { call compile format["%1 = objNull;", (playerstringarray select _i)]; }; };

playerarray = [civ1,civ2,civ3,civ4,civ5,civ6,civ7,civ8,civ9,civ10,civ11,civ12,civ13,civ14,civ15,civ16,civ17,civ18,civ19,civ20,civ21,civ22,civ23,civ24,civ25,civ26,civ27,civ28,civ29,civ30,civ31,civ32,civ33,civ34,civ35,civ36,civ37,civ38,civ39,civ40,civ41,civ42,civ43,civ44,civ45,civ46,civ47,civ48,civ49,civ50,civ51,cop1,cop2,cop3,cop4,cop5,cop6,cop7,cop8,cop9,cop10,cop11,cop12,cop13,cop14,cop15,cop16,cop16,cop17,cop18,cop19,cop20,cop21,cop26,cop27,cop28,cop29,cop30,civ52,civ53,civ54,civ55,civ56,civ57];
civstringarray    = ["Civ1","Civ2","Civ3","Civ4","Civ5","Civ6","Civ7","Civ8","Civ9","Civ10","Civ11","Civ12","Civ13","Civ14","Civ15","Civ16","Civ17","Civ18","Civ19","Civ20","Civ21","Civ22","Civ23","Civ24","Civ25","Civ26","Civ27","Civ28","Civ29","Civ30","civ31","civ32","civ33","civ34","civ35","civ36","civ37","civ38","civ39","civ40","civ41","civ42","civ43","civ44","civ45","civ46","civ47","civ48","civ49","civ50","civ51"];
civarray          = [civ1,civ2,civ3,civ4,civ5,civ6,civ7,civ8,civ9,civ10,civ11,civ12,civ13,civ14,civ15,civ16,civ17,civ18,civ19,civ20,civ21,civ22,civ23,civ24,civ25,civ26,civ27,civ28,civ29,civ30,civ31,civ32,civ33,civ34,civ35,civ36,civ37,civ38,civ39,civ40,civ41,civ42,civ43,civ44,civ45,civ46,civ47,civ48,civ49,civ50,civ51];
copstringarray    = ["Cop1","Cop2","Cop3","Cop4","Cop5","Cop6","Cop7","Cop8","Cop9","Cop10","Cop11","Cop12","Cop13","Cop14","Cop15","Cop16","Cop17","Cop18","Cop19","Cop20","Cop21","Cop26","Cop27","Cop28","Cop29","Cop30"];
coparray          = [cop1,cop2,cop3,cop4,cop5,cop6,cop7,cop8,cop9,cop10,cop11,cop12,cop13,cop14,cop15,cop16,cop17,cop18,cop19,cop20,cop21,cop26,cop27,cop28,cop29,cop30];
//PATROL TRAINED OFFICERS
patrolwhitelist    = [cop2,cop3,cop4,cop5,cop6,cop7,cop18,cop20];
//Sheriff and Swat Slots
sheriffslots	   = [cop8,cop9,cop11,cop12,cop16,cop17,cop19,cop25];
//Admin Slots
copadminslots	   = [cop1,cop10,cop13];

adminallowedarray  = 
[
"95200774", // Telsang
"108802566", // Hannibal
"147193350", // Godfather
""
];

sheriffallowarray  = 
[
"95200774", // Telsang
"108802566", // Hannibal
"147193350", // Godfather
"114696326", //America
"63881734", //Sam
"146462726", // Paintball
"124338374", //Thor
"135520838", //Jewell
"137818374", //Klluge
"82710214", //Captain Aenima
"129796742", //Tony Montana
"", //
"", //
"", //
"", //
"", //
"", //
"", //
""
];

patrolallowedarray = [
"95200774", // Telsang
"108802566", // Hannibal
"147193350", // Godfather
"137818374", //Klluge
"231692486", //MrPowers
"82710214", //Captain Aenima
"129956742", //Bushwookie(TheRock)
"114696326", //America
"124338374", //Thor
"146462726", //Paintball
"63881734", //Sam
"135520838", //Jewell
"235077126", //Doyal
"129796742", //Tony Montana
"234595718", //McDagger
"138150214", //FunnyGuy
"240103814", //Jacob
"102259398", //Williams
"", //
"", //
"", //
"", //
"", //
"", //
"", //
"", //
"", //
"", //
"", //
""
];
rolenumber = 0; 

for [{_i=0}, {_i < (count playerarray)}, {_i=_i+1}] do 

{ 

call compile format["if ((playerarray select %1) == player) then {rolenumber = (%1 + 1);}", _i];

};

role = player;
	

if (player in coparray) then 

{

iscop          = true;
isciv	       = false;							
rolecop        = 1;								
sidenumber     = rolenumber - civscount;			
longrolenumber = 1100 + sidenumber;			
rolestring     = format["Cop%1", sidenumber];

};

if (player in civarray) then 

{

isciv          = true;						
iscop          = false;												
rolecop        = 0;								
sidenumber     = rolenumber;				
longrolenumber = 1000 + sidenumber;										
rolestring     = format["Civ%1", sidenumber];

};


if (typeName player == "OBJECT") then {
	if (!isNull player) then {
		call compile format["old%1 = objnull", player];
	};
};

	_uid  = getPlayerUID player;
	_civnum = player;
	
{
	if (_civnum == _x) then
	{
		if !(_uid in adminallowedarray) then
		{
			player groupChat "This slot is reserved to admins! You will be kicked back to lobby in 10 seconds!";
			sleep 10;
			failMission "END1";
		}
		else
		{
			player groupChat "Welcome, Admin Go Kick Some Ass."
		};
	};
} foreach copadminslots;
	
	
{
	if (_civnum == _x) then
	{
		if !(_uid in patrolallowedarray) then
		{
			player groupChat "You must be trained to use this slot. You will be sent back to the lobby in 5 seconds.";
			sleep 5;
			failMission "END1";
		}
		else
		{
			player groupChat "Welcome, trained officer."
		};
	};
} foreach patrolwhitelist;

{
	if (_civnum == _x) then
	{
		if !(_uid in sheriffallowarray) then
		{
			player groupChat "You must be trained to use this slot. You will be sent back to the lobby in 5 seconds.";
			sleep 5;
			failMission "END1";
		}
		else
		{
			player groupChat "Welcome, trained SWAT/Sheriff officer."
		};
	};
} foreach sheriffslots;