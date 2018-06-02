adminCMD = lbCurSel 1000;
TarGetPLayer = ctrlText 2000;
liafu = player;
_inputText = ctrlText 2000;

switch (adminCMD) do
{
	case 0: //Title (Blank)
	{
	};
	case 1: //Title (Blank)
	{
	};
	case 2: //First Aid
	{
		_objs = (position (vehicle player) nearObjects 3); {_x setDamage 0} forEach _objs; closeDialog 0;
	};
	case 3: //Spectate
	{
		handle = [] execVM "addons\proving_ground\fnc_spectate.sqf"; closeDialog 0;
	};
	case 4: //Tags
	{
		handle = [] execVM "addons\proving_ground\fnc_2dRadar.sqf"; closeDialog 0;
	};
	case 5: //Teleport
	{
		hint "Click on the map to Teleport!";
		liafu = true;
		closeDialog 0;
		openMap true;
		onMapSingleClick "onMapSingleClick """";liafu = true; (vehicle player) setpos [_pos select 0, _pos select 1, 0]; openMap false;";
	};
	case 6: //Satellite
	{
		handle = [] execVM "gcam\gcam.sqf"; closeDialog 0;
	};
	case 7: //Delete
	{
		deleteVehicle cursorTarget;closeDialog 0;
	};
	case 8: //Teleport2Me
	{
		["teleto"] execVM "SlurpieCode\teletoplayer.sqf";
	};
	case 9: //Compensation (50k)
	{
		
		handle = [] execVM "addons\proving_ground\comp.sqf";
		
	};
	case 10: //lockpix
	{
		['lockpick',10] call INV_AddInventoryItem;
	};
	case 11: //Bank Money
	{
		bankaccount = (bankaccount+1000000);
	};
	case 12: //Inventory Money
	{
		['Mishy',100000] call INV_AddInventoryItem;
	};
	case 13: //Pistol
	{
		player addMagazine "7Rnd_45ACP_1911";
		player addMagazine "7Rnd_45ACP_1911";
		player addMagazine "7Rnd_45ACP_1911";
		player addMagazine "7Rnd_45ACP_1911";
		player addMagazine "7Rnd_45ACP_1911";
		player addMagazine "7Rnd_45ACP_1911";
		player addMagazine "7Rnd_45ACP_1911";
		player addMagazine "7Rnd_45ACP_1911";
		player addweapon "Colt1911";
	};
	case 14: //Large Repair Kit
	{
		['reparaturkit',1] call INV_AddInventoryItem;
	};
	case 15: //Refuel Can
	{
		['kanister',1] call INV_AddInventoryItem;
	};
	case 16: //Medkit
	{
		['medikit',1] call INV_AddInventoryItem;
	};
	case 17: //GPS,NV,Binoc
	{
		player addweapon "ItemGPS";
		player addweapon "NVGoggles";
		player addweapon "Binocular";
	};
	case 18: //pimp my ride
	{
		(vehicle player) setvariable ["tuning", 5, true];
		(vehicle player) setvariable ["nitro", 1, true];
	};
	case 19: //fix my ride
	{
		vehicle player setFuel 1;
		vehicle player setDamage 0;
	};
	case 20: //cheap gunz
	{
		player addMagazine "30Rnd_762x39_AK47";
		player addMagazine "30Rnd_762x39_AK47";
		player addMagazine "30Rnd_762x39_AK47";
		player addMagazine "30Rnd_762x39_AK47";
		player addMagazine "30Rnd_762x39_AK47";
		player addMagazine "30Rnd_762x39_AK47";
		player addMagazine "30Rnd_762x39_AK47";
		player addMagazine "30Rnd_762x39_AK47";
		player addMagazine "30Rnd_762x39_AK47";
		player addMagazine "30Rnd_762x39_AK47";
		player addMagazine "30Rnd_762x39_AK47";
		player addMagazine "30Rnd_762x39_AK47";
		player addMagazine "7Rnd_45ACP_1911";
		player addMagazine "7Rnd_45ACP_1911";
		player addMagazine "7Rnd_45ACP_1911";
		player addMagazine "7Rnd_45ACP_1911";
		player addMagazine "7Rnd_45ACP_1911";
		player addMagazine "7Rnd_45ACP_1911";
		player addMagazine "7Rnd_45ACP_1911";
		player addMagazine "7Rnd_45ACP_1911";
		player addweapon "Colt1911";		
		player addweapon "AK_47_S";		
	};
	case 21: //decent gunz
	{
		player addMagazine "30Rnd_762x39_SA58";
		player addMagazine "30Rnd_762x39_SA58";
		player addMagazine "30Rnd_762x39_SA58";
		player addMagazine "30Rnd_762x39_SA58";
		player addMagazine "30Rnd_762x39_SA58";
		player addMagazine "30Rnd_762x39_SA58";
		player addMagazine "PG7V";
		player addMagazine "PG7V";
		player addMagazine "PG7V";
		player addMagazine "20Rnd_B_765x17_Ball";
		player addMagazine "20Rnd_B_765x17_Ball";
		player addMagazine "20Rnd_B_765x17_Ball";
		player addMagazine "20Rnd_B_765x17_Ball";
		player addMagazine "20Rnd_B_765x17_Ball";
		player addMagazine "20Rnd_B_765x17_Ball";
		player addMagazine "20Rnd_B_765x17_Ball";
		player addMagazine "20Rnd_B_765x17_Ball";
		player addweapon "Sa61_EP1";		
		player addweapon "RPG7V";		
		player addweapon "Sa58V_CCO_EP1";		
	};
	case 22: //quiet gunz
	{
		player addMagazine "20Rnd_762x51_SB_SCAR";
		player addMagazine "20Rnd_762x51_SB_SCAR";
		player addMagazine "20Rnd_762x51_SB_SCAR";
		player addMagazine "20Rnd_762x51_SB_SCAR";
		player addMagazine "20Rnd_762x51_SB_SCAR";
		player addMagazine "20Rnd_762x51_SB_SCAR";
		player addMagazine "20Rnd_762x51_SB_SCAR";
		player addMagazine "20Rnd_762x51_SB_SCAR";
		player addMagazine "20Rnd_762x51_SB_SCAR";
		player addMagazine "20Rnd_762x51_SB_SCAR";
		player addMagazine "20Rnd_762x51_SB_SCAR";
		player addMagazine "20Rnd_762x51_SB_SCAR";
		player addMagazine "30Rnd_9x19_UZI_SD";
		player addMagazine "30Rnd_9x19_UZI_SD";
		player addMagazine "30Rnd_9x19_UZI_SD";
		player addMagazine "30Rnd_9x19_UZI_SD";
		player addMagazine "30Rnd_9x19_UZI_SD";
		player addMagazine "30Rnd_9x19_UZI_SD";
		player addMagazine "30Rnd_9x19_UZI_SD";
		player addMagazine "30Rnd_9x19_UZI_SD";
		player addweapon "SCAR_H_CQC_CCO_SD";		
		player addweapon "UZI_SD_EP1";		
	};
	case 23: //sniper gunz
	{
		player addweapon "m107";
		player addMagazine "10Rnd_127x99_m107";
		player addMagazine "10Rnd_127x99_m107";
		player addMagazine "10Rnd_127x99_m107";
		player addMagazine "10Rnd_127x99_m107";
		player addMagazine "10Rnd_127x99_m107";
		player addMagazine "10Rnd_127x99_m107";
		player addMagazine "10Rnd_127x99_m107";
		player addMagazine "10Rnd_127x99_m107";
		player addMagazine "10Rnd_127x99_m107";
		player addMagazine "10Rnd_127x99_m107";
		player addMagazine "10Rnd_127x99_m107";
		player addMagazine "10Rnd_127x99_m107";
		player addweapon "UZI_EP1";
		player addMagazine "30Rnd_9x19_UZI";
		player addMagazine "30Rnd_9x19_UZI";
		player addMagazine "30Rnd_9x19_UZI";
		player addMagazine "30Rnd_9x19_UZI";
		player addMagazine "30Rnd_9x19_UZI";
		player addMagazine "30Rnd_9x19_UZI";
		player addMagazine "30Rnd_9x19_UZI";
		player addMagazine "30Rnd_9x19_UZI";
	};
	case 24: //pwn gunz
	{

		player addMagazine "100Rnd_556x45_BetaCMag";
		player addMagazine "100Rnd_556x45_BetaCMag";
		player addMagazine "100Rnd_556x45_BetaCMag";
		player addMagazine "100Rnd_556x45_BetaCMag";
		player addMagazine "100Rnd_556x45_BetaCMag";
		player addMagazine "100Rnd_556x45_BetaCMag";
		player addMagazine "MAAWS_HEAT";
		player addMagazine "MAAWS_HEAT";
		player addMagazine "7Rnd_50_AE";
		player addMagazine "7Rnd_50_AE";
		player addMagazine "7Rnd_50_AE";
		player addMagazine "7Rnd_50_AE";
		player addMagazine "7Rnd_50_AE";
		player addMagazine "7Rnd_50_AE";
		player addMagazine "7Rnd_50_AE";
		player addMagazine "7Rnd_50_AE";
		player addweapon "RH_m16a3cs";		
		player addweapon "MAAWS";
		player addweapon "RH_Deagleg";		
	};
	case 25: //Remote Bomb
	{
		['fernzuenderbombe',1] call INV_AddInventoryItem;
	};
	case 26: //Time Bomb
	{
		['zeitzuenderbombe',1] call INV_AddInventoryItem;
	};
	case 27: //Activation Bomb
	{
		['aktivierungsbombe',1] call INV_AddInventoryItem;
	};
	case 28: //Speed Bomb
	{
		['geschwindigkeitsbombe',1] call INV_AddInventoryItem;
	};
	case 29: //Suicide Bomb
	{
		['selbstmordbombe',1] call INV_AddInventoryItem;
	};
	case 30: //Remote Control
	{
		['fernzuender',1] call INV_AddInventoryItem;
	};
	case 31: //defuser
	{
		['defuser',1] call INV_AddInventoryItem;
	};
	case 32: //lighter
	{
		['lighter',1] call INV_AddInventoryItem;
	};
	case 33: //10 bank insurance
	{
		['bankversicherung',10] call INV_AddInventoryItem;
	};
	case 34: //pistol
	{
		player addMagazine "7Rnd_45ACP_1911";
		player addMagazine "7Rnd_45ACP_1911";
		player addMagazine "7Rnd_45ACP_1911";
		player addMagazine "7Rnd_45ACP_1911";
		player addMagazine "7Rnd_45ACP_1911";
		player addMagazine "7Rnd_45ACP_1911";
		player addMagazine "7Rnd_45ACP_1911";
		player addMagazine "7Rnd_45ACP_1911";
		player addweapon "Colt1911";		
	};
	case 35: //10 Mackerel
	{
		['mackerel',10] call INV_AddInventoryItem;
	};
	case 36: //10 Herring
	{
		['herring',10] call INV_AddInventoryItem;
	};
	case 37: //10 Deep Sea Bass
	{
		['bass',10] call INV_AddInventoryItem;
	};
	case 38: //20 Wheat
	{
		['getreide',20] call INV_AddInventoryItem;
	};
	case 39: //Bread
	{
		['Bread',1] call INV_AddInventoryItem;
	};
	case 40: //20 Donut
	{
		['Donut',20] call INV_AddInventoryItem;
	};
	case 41: //Larger
	{
		['beer',1] call INV_AddInventoryItem;
	};
	case 42: //Bitter
	{
		['beer2',1] call INV_AddInventoryItem;
	};
	case 43: //Vodka
	{
		['vodka',1] call INV_AddInventoryItem;
	};
	case 44: //Smirnoff ICE
	{
		['smirnoff',1] call INV_AddInventoryItem;
	};
	case 45: //Wiskey
	{
		['wiskey',1] call INV_AddInventoryItem;
	};
	case 46: //White Wine
	{
		['wine',1] call INV_AddInventoryItem;
	};
	case 47: //Red Wine
	{
		['wine2',1] call INV_AddInventoryItem;
	};
	case 48: //10 Wood
	{
		['holz',10] call INV_AddInventoryItem;
	};
	case 49: //10 Iron
	{
		['iron',10] call INV_AddInventoryItem;
	};
	case 50: //10 Mineral oil
	{
		['mineraloel',10] call INV_AddInventoryItem;
	};
	case 51: //10 Electronic components
	{
		['ebauteile',10] call INV_AddInventoryItem;
	};
	case 52: //10 Silicon
	{
		['silizium',10] call INV_AddInventoryItem;
	};
	case 53: //10 Copper
	{
		['copper',10] call INV_AddInventoryItem;
	};
	case 54: //10 Steel
	{
		['steel',10] call INV_AddInventoryItem;
	};
	case 55: //10 Black powder
	{
		['schwarzpulver',10] call INV_AddInventoryItem;
	};
	case 56: //10 Sulfur
	{
		['schwefel',10] call INV_AddInventoryItem;
	};
	case 57: //10 Coal
	{
		['kohle',10] call INV_AddInventoryItem;
	};
	case 58: //10 Diamond rock
	{
		['Diamond rock',10] call INV_AddInventoryItem;
	};
	case 59: //10 Gold
	{
		['Gold',10] call INV_AddInventoryItem;
	};
	case 60: //10 Oil
	{
		['Oil',10] call INV_AddInventoryItem;
	};
	case 61: //10 Petroleum
	{
		['erdoel',10] call INV_AddInventoryItem;
	};
	case 62: //10 Glass
	{
		['glass',10] call INV_AddInventoryItem;
	};
	case 63: //10 Plastic
	{
		['plastik',10] call INV_AddInventoryItem;
	};
	case 64: //10 Sand
	{
		['sand',10] call INV_AddInventoryItem;
	};
	case 65: //10 Steel wool
	{
		['stahlwolle',10] call INV_AddInventoryItem;
	};
	case 66: //Whale
	{
		["PMC_SUV", adminspawn1] spawn INV_CreateVehicle;
	};
	case 67: //10 Unprocessed Cocaine
	{
		['Unprocessed_Cocaine',10] call INV_AddInventoryItem;
	};
	case 68: //10 Unprocessed Marijuana
	{
		['Unprocessed_Marijuana',10] call INV_AddInventoryItem;
	};
	case 69: //10 Unprocessed LSD
	{
		['Unprocessed_LSD',10] call INV_AddInventoryItem;
	};
	case 70: //10 Unprocessed Heroin
	{
		['Unprocessed_Heroin',10] call INV_AddInventoryItem;
	};
	case 71: //10 Marijuana
	{
		['marijuana',10] call INV_AddInventoryItem;
	};
	case 72: //10 Cocaine
	{
		['cocaine',10] call INV_AddInventoryItem;
	};
	case 73: //10 LSD
	{
		['lsd',10] call INV_AddInventoryItem;
	};
	case 74: //10 Heroin
	{
		['heroin',10] call INV_AddInventoryItem;
	};
	case 75: //Marijuana Seed
	{
		['MariSeed',1] call INV_AddInventoryItem;
	};
	case 76: //Drug-Shed
	{
		['Drug-Shed',1] call INV_AddInventoryItem;
	};
	case 77: //Marijuana (not processed)
	{
		['UPMarijuana',1] call INV_AddInventoryItem;
	};
	case 78: //Mobile Phone
	{
		['handy',1] call INV_AddInventoryItem;
	};
	case 79: //Roadblock
	{
		['roadblock',1] call INV_AddInventoryItem;
	};
	case 80: //Speed Trap
	{
		['Satelit',1] call INV_AddInventoryItem;
	};
	case 81: //Bar Gate
	{
		['bargate',1] call INV_AddInventoryItem;
	};
	case 82: //Sign Checkpoint
	{
		['Sign_Checkpoint',1] call INV_AddInventoryItem;
	};
	case 83: //Bunker (Small)
	{
		['bunkersmall',1] call INV_AddInventoryItem;
	};
	case 84: //Road cone (light)
	{
		['landconelight',1] call INV_AddInventoryItem;
	};
	case 85: //Road barrier (light)
	{
		['roadbarrierlight',1] call INV_AddInventoryItem;
	};
	case 86: //Diamond Ring
	{
		['Diamondring',1] call INV_AddInventoryItem;
	};
	case 87: //Expensive Diamond Ring
	{
		['EDiamondring',1] call INV_AddInventoryItem;
	};
	case 88: //Vehicle Ammo
	{
		['vclammo',1] call INV_AddInventoryItem;
	};
	case 89: //Hideout
	{
		['hideout',1] call INV_AddInventoryItem;
	};
	case 90: //Radio jammer
	{
		['stoersender',1] call INV_AddInventoryItem;
	};
	case 91: //Lockpick
	{
		['lockpick',1] call INV_AddInventoryItem;
	};
	case 92: //Gas mask
	{
		['gasmask',1] call INV_AddInventoryItem;
	};
	case 93: //Shovel
	{
		['Shovel',1] call INV_AddInventoryItem;
	};
	case 94: //Pickaxe
	{
		['Pickaxe',1] call INV_AddInventoryItem;
	};
	case 95: //Jack Hammer
	{
		['JackHammer',1] call INV_AddInventoryItem;
	};
	case 96: //Spikestrip
	{
		['city_spikestrip',1] call INV_AddInventoryItem;
	};
	case 97: //Storage box
	{
		['LocalBasicWeaponsBox',1] call INV_AddInventoryItem;
	};
	case 98: //Camo Net
	{
		['Camonet',1] call INV_AddInventoryItem;
	};
	case 99: //RazorWire
	{
		['FortRazorWireCop',1] call INV_AddInventoryItem;
	};
	case 100: //Barricade
	{
		['Barricade',1] call INV_AddInventoryItem;
	};
	case 101: //Fireplace
	{
		['fireplace',1] call INV_AddInventoryItem;
	};
	case 102: //Tent
	{
		['campeast',1] call INV_AddInventoryItem;
	};
	case 103: //Road Barrier
	{
		['roadbarrierlong',1] call INV_AddInventoryItem;
	};
	case 104: //Trench
	{
		['fortenvelopesmall',1] call INV_AddInventoryItem;
	};
	case 105: //supgrade1
	{
		['supgrade1',1] call INV_AddInventoryItem;
	};
	case 106: //supgrade2
	{
		['supgrade2',1] call INV_AddInventoryItem;
	};
	case 107: //supgrade3
	{
		['supgrade3',1] call INV_AddInventoryItem;
	};
	case 108: //supgrade4
	{
		['supgrade4',1] call INV_AddInventoryItem;
	};
	case 109: //supgrade5
	{
		['supgrade5',1] call INV_AddInventoryItem;
	};
	case 110: //House
	{
		['House',1] call INV_AddInventoryItem;
	};
	case 111: //Small House
	{
		['House2',1] call INV_AddInventoryItem;
	};
	case 112: //Warning Tape
	{
		['signtape',1] call INV_AddInventoryItem;
	};
	case 113: //20 Apple
	{
		['Apfel',20] call INV_AddInventoryItem;
	};
	case 114: //5 Apple Pie
	{
		['Apfelkuchen',5] call INV_AddInventoryItem;
	};
	case 115: //Gate
	{
		['Tor',1] call INV_AddInventoryItem;
	};
	case 116: //Sandbag Wall
	{
		['Sandsacke',1] call INV_AddInventoryItem;
	};
	case 117: //Barracks
	{
		['Baracke',1] call INV_AddInventoryItem;
	};
	case 118: //Small Tower
	{
		['Jaegerstand',1] call INV_AddInventoryItem;
	};
	case 119: //Fence
	{
		['Blechzaun',1] call INV_AddInventoryItem;
	};
	case 120: //10 Sturgeon
	{
		['Stoer',10] call INV_AddInventoryItem;
	};
	case 121: //20 Caviar
	{
		['Kaviar',20] call INV_AddInventoryItem;
	};
	case 122: //blank
	{
	};
	case 123: //blank
	{
	};
	case 124: // Inf Ammo
	{
		if (infammook==0) then
		{
			hint "Infinite Ammo on";
			infammook=1;
		}
		else
		{
			infammook=0;
		};

		while {infammook==1} do
		{;
			(vehicle player) setVehicleAmmo 1;
			sleep 0.1;
		};
		hint "Infinite Ammo off";
		infammook=0;
	};
	case 125: // World Heal 
	{
		_objs = (position (vehicle player) nearObjects 100000); {_x setDamage 0} forEach _objs;
	};
	case 126: // Masterkey
	{
		_vcls = nearestobjects [getpos player, ["LandVehicle", "Air", "ship"], 25];
		_vcl = _vcls select 0;
		["schluessel", _vcl, 0] execVM "keys.sqf";

	};
	case 127: // FUEL
	{
		if (isNil "inffuelok") then {inffuelok = 0;};
		if (inffuelok==0) then
			{
			hint "Infinite Fuel ON!";
			iloopokk=1;
			inffuelok=1;
			}
		else
			{
			iloopokk=0;
			};
		while {iloopokk==1} do
			{;
			(vehicle player) setFuel 1;
			sleep 0.1;
			};
		hint "Infinite Fuel OFF!";
		inffuelok=0;
	};
	case 128:
	{
	createDialog "balca_debug_main";
	};
	case 129: //+1 Hour time
	        [1] call time_move;
			player groupChat "+1 Hour, please wait for time to catch-up, before using again";
	};
	case 130: //-1 Hour time
	        [-1] call time_move;
			player groupChat "-1 Hour, please wait for time to catch-up, before using again";
	};
};
/*
-----------------------------------------------------------------------------------------
*/

// 
if (TarGetPLayer == "") then
{
	CoDeString = cmdLine;
}
else
{
	CoDeString = "if (name vehicle player == TarGetPLayer) then {_comp = compile cmdLine; call _comp;}";
};

publicVariable "TarGetPLayer";
sleep 0.3;
publicVariable "cmdLine";
sleep 0.3;
publicVariable "CoDeString";
sleep 0.3;

// nil = [CoDeString] execVM "public.sqf";
_O0O0 = player;
hint "Code Activated";