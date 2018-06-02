
playMusic "Intro";

_text = [


"<t underline='false' color='#00FFFF'>www.tgmasters.net</t><br/>",

"<t underline='true' color='#00FFFF'>ACCOUNT STATS NOT LOADED?</t><br/>
If you have just joined the server and your stats have not loaded, You have 2 Minutes to relog or they will be lost forever.",

"<t underline='true' color='#00FFFF'>Seeking</t><br/>
Currently looking for a Staff! Visit the forum if you are interested.",

"<t underline='true' color='#00FFFF'>Contact</t><br />
TS3: serverboxs1.ts.nfoservers.com<br />
Website: TBA<br />
Welcome to Cyber Nation Gaming<br />
<br />
Please visit the forums to fill out bug reports or post suggestions and to keep up to date on the rules.
<br />
<br />
Only click 'Continue' if you are willing to read and play by the rules!"

];

_t = [];
{
_t = _t + [(parseText _x)];
} foreach _text;
_text = _t;

"Cyber NAtion Gaming!" hintC _text;
