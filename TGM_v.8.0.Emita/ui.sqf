/*
www.unitedkingdomgaming.co.uk
UK GAMING!
By JayF8514
*/
[] spawn
{
    
    disableSerialization;
    100 cutRsc ["RPP_Dlg_ui", "PLAIN"];
    while {true} do
    {
        _money = (('Mishy' call INV_GetItemAmount) call ISSE_str_IntToStr);
        _weight = [] call INV_GetOwnWeight;
        _maxWeight = INV_Tragfaehigkeit;
        _hunger = round(INV_hunger);
        _health = 100-(round((damage player) * 100));
        _id = getPlayerUID player;
        _maxbank = (bnkgeld call ISSE_str_IntToStr);
        ((RPP_display_ui select 0) displayCtrl 1) ctrlSetStructuredText parseText format["<t align='center'><t shadow='1'shadowColor='#000000'><t color='#800080re'>Cyber Nation Gaming- </t><t color='#008000'>Money: <t color='#68C900'>Inventory $%1 -<t color='#68C900'> Account $%7<t color='#FFFFFF'> - <t color='#ED9A00'>Weight/Max: %2/%3 <t color='#FFFFFF'>-<t color='#40B6FF'> Health: %4 <t color='#FFFFFF'>-<t color='#D62B2B'> Hunger: %6 <t color='#FFFFFF'>-<t color='#E8E06F'> ID: %5</t> <t color='#FFFFFF'>-</t> <t color='#BD94C9'>TS3 IP: tgmasters.ts3dns.com</t>", _money, _weight, _maxWeight, _health, _id, _hunger, _maxbank];
        sleep 1;
    };
};