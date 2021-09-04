/*
Author: Håkon
Description:
    Runs on init

Arguments: nil

Return Value: nil

Scope: Clients
Environment: Unscheduled
Public: No
Dependencies:

Example:

License: MIT License
*/
#include "..\..\Includes\common.inc"
FIX_LINE_NUMBERS()

[player, objNull] call HR_fnc_onEntityRespawn;

call HR_fnc_credits;
call HR_fnc_briefing;
