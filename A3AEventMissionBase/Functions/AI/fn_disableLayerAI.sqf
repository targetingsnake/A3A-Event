/*
	The function disables AI of all units in the given layer

	Parameters:
	0. STRING: name of the layer
	1. STRING: AI to disable

	Example:
	["Ambush Layer", "PATH"] call A3A_fnc_disableLayerAI;
	["Layer 1", "TARGET"] call A3A_fnc_disableLayerAI;
*/

params [["_layer", "", ["asd"]], ["_ai", "", ["asd"]]];
private _ais = ["all", "aimingerror", "anim", "autocombat", "autotarget", "checkvisible", "cover", "fsm", "lights", "minedetection", "move", "nvg", "path", "radioprotocol", "suppression", "target", "teamswitch", "weaponaim"];
private _units = (getMissionLayerEntities _layer) select 0;

if (!((toLower _ai) in _ais)) exitWith {
	systemChat "Failed to disable AI: incorrect AI value";
};

{
	_x disableAI _ai;
} forEach _units;