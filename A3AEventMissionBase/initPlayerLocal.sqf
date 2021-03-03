if (hasInterface) then {
	[player] call FFPP_fnc_punishment_FF_addEH;
};

[] execVM "Scripts\Credits.sqf";
[] execVM "Scripts\Briefing.sqf";