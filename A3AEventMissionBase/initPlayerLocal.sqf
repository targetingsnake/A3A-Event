/*---------------------------------------------------------------------------
Title
	The code in this file is executed locally when player joins mission.
	For more info see https://community.bistudio.com/wiki/Event_Scripts#initPlayerLocal.sqf
	
	Parameters:
	0. OBJECT: the player's object
	1. BOOL: if the player Joins In Progress, the parameter returns true, otherwise false
---------------------------------------------------------------------------*/
params ["_player", "_jip"];

private _intro = ["Intro", -1] call BIS_fnc_getParamValue;
MissionIntro = (_intro == 1);

private _CRBNenabled = ["CRBNEnabled", -1] call BIS_fnc_getParamValue;
CRBN = (_CRBNenabled == 1);

#include "initScripts\initScripts.sqf";
#include "initScripts\initDiary.sqf";
#include "initScripts\initDisclaimer.sqf";