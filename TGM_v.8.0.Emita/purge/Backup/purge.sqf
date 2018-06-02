//----------------------------------------//
// By: Sporthya11 for Modern Mayhem Gaming\\
//----------------------------------------//
//  You do not have permission to use this for any mission file with out permission from the MMG Dev. team. \\
//---------------------------------------//


playMusic "Purge.ogg";

_text = [


"<t underline='false' color='#00FFFF'>THE PURGE HAS BEGUN, READY YOUR SELF.</t><br/>",

];

_t = [];
{
_t = _t + [(parseText _x)];
} foreach _text;
_text = _t;

"MMG RP" hintC _text;