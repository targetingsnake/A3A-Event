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

private _units = (getMissionLayerEntities _layer) select 0;

{
	_x disableAI _ai;
} forEach _units;