/*
    Author: [martin/targetingsnake]
    Description:
        attachs things to a vehicle

    Arguments:
    0. <object>  object to attach to
    1. <Array><object> objects to attach
    2. <bool> Disable autonomous mode [Optional - default: false]

    Return Value:
    <String> Script handler

    Scope: Server
    Environment: Scheduled
    Public: Yes
    Dependencies:

    Example: [vic_cv, [turret_1, turret_2]] spawn TS_fnc_init_improvised_vehicles;


    License: MIT License
*/

params["_baseVic", "_attachVics", ["_autoDisable", false]];

if(!isServer) exitWith {};

{
	_x allowDamage false;
	[_x, _baseVic] call BIS_fnc_attachToRelative;
	if (_autoDisable) then {
		_x spawn TS_fnc_disableAutonomousModePermanently;
	}
} forEach _attachVics;

waitUntil {
	sleep 5;
	!alive _baseVic
};

{
	_x allowDamage true;
	_x setDamage 1;
} forEach _attachVics;