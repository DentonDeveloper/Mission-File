//When you alter _MARKERS ensure you edit burgler.sqf

_house  = ((_this select 3) select 0);
_housename = ((_this select 3) select 1);
_uid = getPlayerUID vehicle player;

_unit = _this;
_dist = 10;
_marker = "";
{_range = ((getMarkerPos _x) distance (player));
if (_range < _dist) then 
{_dist = _range; _marker = _x};	
} foreach Homearray;

switch true do
{

case (_marker == "Telsang_1"):{if(_uid == "95200774") then {[_house,_housename] execVM "maphouse.sqf";} else {player groupchat "This is not owned by you";};};
case (_marker == "Telsang_2"):{if(_uid == "95200774") then {[_house,_housename] execVM "maphouse.sqf";} else {player groupchat "This is not owned by you";};};
case (_marker == "Telsang_3"):{if(_uid == "95200774") then {[_house,_housename] execVM "maphouse.sqf";} else {player groupchat "This is not owned by you";};};
case (_marker == "Klluge"):{if(_uid == "146462726" || _uid == "231692486") then {[_house,_housename] execVM "maphouse.sqf";} else {player groupchat "This is not owned by you";};};
case (_marker == "Klluge_1"):{if(_uid == "146462726" || _uid == "231692486") then {[_house,_housename] execVM "maphouse.sqf";} else {player groupchat "This is not owned by you";};};
case (_marker == "Klluge_2"):{if(_uid == "146462726" || _uid == "231692486") then {[_house,_housename] execVM "maphouse.sqf";} else {player groupchat "This is not owned by you";};};
case (_marker == "tony"):{if(_uid == "1297967424" || _uid == "135271814") then {[_house,_housename] execVM "maphouse.sqf";} else {player groupchat "This is not owned by you";};};
case (_marker == "Lane"):{if(_uid == "122083206") then {[_house,_housename] execVM "maphouse.sqf";} else {player groupchat "This is not owned by you";};};
case (_marker == "MediaPhamous"):{if(_uid == "135505798") then {[_house,_housename] execVM "maphouse.sqf";} else {player groupchat "This is not owned by you";};};
default {[_house,_housename] execVM "maphouse.sqf";};
};

//case (_marker == ""):{if(_uid == "") then {[_house,_housename] execVM "maphouse.sqf";} else {player groupchat "This is not owned by you";};};
default {[_house,_housename] execVM "maphouse.sqf";};
};

