//----------------------------------------//
// By: Sporthya11 for Modern Mayhem Gaming\\
//----------------------------------------//
//  You do not have permission to use this for any mission file with out permission from the MMG Dev. team. \\
//---------------------------------------//

hint "Made By: Sportyha11"

title = parsetext "<t size='2.3'>The Purge Has Begun</t><br />The Emita goverment has declared the Purge start!"; 
scroll = parsetext "               Emita City Has Activated Its Annual Purge All Crime is Legal Have Fun."; 
nul = [title,scroll] spawn BIS_fnc_AAN;
sleep 15;
3000 cuttext ["","plain"];
