/*
Author: Håkon, fixed by Skippie
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
params [["_oldUnit", objNull], ["_jipOrNewUnit", objNull, [objNull, true]]];
/*private _unit = if (_jipOrNewUnit isEqualType objNull) then {_oldUnit} else {_jipOrNewUnit}; //determine target object as this is used on init and respawn


//build lists to check for dress up
private _list1 = ["P1", "P2", "P3", "P4", "P5"] call HR_fnc_ValidateObjects;
private _list2 = ["P6", "P7", "P8", "P9", "P10"] call HR_fnc_ValidateObjects;
private _list3 = ["P1", "P2", "P3", "P4"] call HR_fnc_ValidateObjects;
private _faces = ["PersianHead_A3_04_a", "PersianHead_A3_04_l", "PersianHead_A3_04_sa", "GreekHead_A3_10_a", "GreekHead_A3_10_l", "GreekHead_A3_10_sa"];

//set goggles
if (_unit in _list1) then {
    _unit linkItem "None";
} else {};

if (_unit in _list2) then {
    _unit linkItem "None";
} else {};

//set face
if (_unit in _list3) then {
    private _face = _oldUnit getVariable ["face", selectRandom _faces];
    [_unit, _face] remoteExec ["setFace", 0, _unit];
    _unit setVariable ["face", _face];
};

*/