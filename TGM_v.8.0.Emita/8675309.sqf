if ((getPlayerUID player) in superadmin) then {
	player execVM "adminconsolfill.sqf";
	_ok = createDialog "Main";
	exit;
};

if ((getPlayerUID player) in admin) then {
	player execVM "modconsolfill.sqf";
	_ok = createDialog "Main";
	exit;
};

if ((getPlayerUID player) in mod) then {
	player execVM "subconsolfill.sqf";
	_ok = createDialog "Main";
	exit;
};

if ((getPlayerUID player) in helper) then {
	player execVM "sub2consolfill.sqf";
	_ok = createDialog "Main";
	exit;
};