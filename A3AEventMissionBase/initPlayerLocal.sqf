//FF
if (hasInterface) then {
	[player] call FFPP_fnc_punishment_FF_addEH;
};

//Dressup
_this call HR_fnc_dressUp;

//Into screens
[] execVM "Scripts\Credits.sqf";
[] execVM "Scripts\Briefing.sqf";
