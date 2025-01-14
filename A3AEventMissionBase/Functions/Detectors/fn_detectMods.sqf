/*
    Author: [martin/targetingsnake]
    Description:
       Detects loaded mods

    Arguments:

    Return Value:
    <String> Script handler

    Scope: Server
    Environment: Scheduled
    Public: Yes
    Dependencies:

    Example: call TS_fnc_detectMods;


    License: MIT License
*/

if (!isServer) exitWith {};

TS_hasRHS = false;
TS_hasCUP = false;

if (
    isClass (configFile >> "CfgFactionClasses" >> "rhs_faction_vdv")
    && isClass (configFile >> "CfgFactionClasses" >> "rhs_faction_usarmy")
    && isClass (configFile >> "CfgFactionClasses" >> "rhsgref_faction_tla")
) then { TS_hasRHS = true };

if (
  isClass (configFile >> "cfgPatches" >> "CUP_Creatures_People_Civil_Russia") && // cup units
  isClass (configFile >> "cfgPatches" >> "CUP_BaseConfigs") &&                   // cup weapons
  isClass (configFile >> "cfgPatches" >> "CUP_AirVehicles_Core")                 // cup vehicles
) then {TS_hasCUP = true };

call TS_fnc_enemyUnits;