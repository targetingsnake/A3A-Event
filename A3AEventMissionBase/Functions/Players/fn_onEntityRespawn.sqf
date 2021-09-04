/*
Author: Håkon
Description:
    Runs on player respawn (including init)

Arguments:
0. <Object> Player unit
1. <Object> Old player unit

Return Value: Nil

Scope: Clients
Environment: unscheduled
Public: No
Dependencies:

Example:

License: MIT License
*/
#include "..\..\Includes\common.inc"
FIX_LINE_NUMBERS()
params ["_entity", "_corpse"];

Info_2("Entity respawned | New: %1 | Old: %2", _entity, _corpse)

[_entity] call FFPP_fnc_punishment_FF_addEH;
[_entity] call HR_fnc_dressUp;
