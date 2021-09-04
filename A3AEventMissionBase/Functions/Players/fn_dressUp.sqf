/*
Author: Håkon
Description:
    Dresses the player up

Arguments:
0. <Object> unit or oldUnit from initPlayerLocal or onPlayerRespawn
1. <Object/Bool> jip or newUnit from initPlayerLocal or onPlayerRespawn

Return Value: <nil>

Scope: Clients
Environment: Any
Public: Yes
Dependencies:

Example:

License: MIT License
*/
params [ ["_unit", objNull] ];

/*
//build lists to check for dress up
private _list1 = ["Z1", "Z2","P1", "P3", "P4", "P5", "P6", "P7", "P9", "P10", "P11", "P12", "P13"] call HR_fnc_ValidateObjects;
private _list2 = ["P2", "P8"] call HR_fnc_ValidateObjects;
private _list3 = _list1 - (["Z1", "Z2"] call HR_fnc_ValidateObjects);
private _faces = ["TIOW_Ork_head_1","TIOW_Ork_head_2","TIOW_Ork_head_3","TIOW_Ork_head_4","TIOW_Ork_head_5","TIOW_Ork_head_6","TIOW_Ork_head_7"];

//set goggles
if (_unit in _list1) then {
    _unit addGoggles "None";
} else {};

if (_unit in _list2) then {
    _unit addGoggles "ork_goggles_red";
} else {};

//set face
if (_unit in _list3) then {
    private _face = _oldUnit getVariable ["face", selectRandom _faces];
    [_unit, _oldFace] remoteExec ["setFace", 0, _unit];
    _unit setVariable ["face", _face];
};
*/
nil;
