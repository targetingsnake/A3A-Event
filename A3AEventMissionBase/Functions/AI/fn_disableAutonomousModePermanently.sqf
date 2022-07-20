/*
    Author: [martin/targetingsnake]
    Description:
        disables autonomous modes of drones

    Arguments:
    0. <object>  Drone

    Return Value:
    <String> Script handler

    Scope: Server
    Environment: Scheduled
    Public: Yes
    Dependencies:

    Example: drone_01 spawn TS_fnc_disableAutonomousModePermanently;


    License: MIT License
*/
params ["_drone"];

if (!isServer) exitWith {};

while {alive _drone} do {
	if (isAutonomous _drone) then {
		_drone setAutonomous false;
	};
	sleep 5;
};