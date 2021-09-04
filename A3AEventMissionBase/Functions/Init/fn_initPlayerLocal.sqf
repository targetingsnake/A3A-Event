#include "..\..\Includes\common.inc"
FIX_LINE_NUMBERS()

Info_1("Player object: %1", player);
[player, objNull] call HR_fnc_onEntityRespawn;
