/*
Author: Håkon
Description:
    based on params; Heals and restore stamina for units within 50m of the center on the passed side
    and repairs, refuel and rearm vehicles within 150m.

    Ace compatible

Arguments:
0. <Object> Center
1. <Side>   Side to heal and repair for
2. <Bool>   Heal
3. <Bool>   Restore stamina
4. <Bool>   Repair
5. <Bool>   Refuel
6. <Bool>   Rearm

Return Value: <Bool> succesful

Scope: Server
Environment: Any
Public: Yes
Dependencies:

Example:

License: MIT License
*/
Params [
    ["_center", objNull, [ObjNull]]
    , ["_side", west, [west]]

    , ["_healEnabled", true, [true]]
    , ["_restoreFatigue", true, [true]]
    , ["_repairEnabled", true, [true]]
    , ["_refuelEnabled", true, [true]]
    , ["_rearmEnabled", true, [true]]
];
//ADAPTED TO ANTISTASI EVENT TEAM NEEDS, ORIGINAL SCRIPT BY Barbolani, Spoffy and John Jordan
if (!isServer) exitWith {false};

private _time = if (isMultiplayer) then {serverTime} else {time};
_center setVariable ["lastUsed", _time, true];

{
    //only units within 50m of the center and of the passed side
    if !((side group _x == _side) and (_x distance _center < 50)) then { continue };

    //heal
    if (_healEnabled) then {
        if (!isNil "ace_medical_treatment_fnc_fullHeal") then {
            [_x, _x] call ace_medical_treatment_fnc_fullHeal;
        } else { _x setDamage 0 };
        if (isPlayer _x) then { diag_log format ["Healing player: %1",name _x] };
    };

    //stamina
    if !(_restoreFatigue) then {continue};
    if (!isNil "ace_advanced_fatigue_fnc_handlePlayerChanged") then {
        [_x, objNull] remoteExec ["ace_advanced_fatigue_fnc_handlePlayerChanged", _x];
    } else {
        [_x, 0] remoteExec ["setFatigue", _x];
    };
} forEach allUnits;

{ //reapir, refule, rearm
    if !((_x distance _center < 150) and (alive _x)) then { continue };

    private _vehSide = side group _x;
    if (_vehSide == sideUnknown || _vehSide == _side) then {
        if (_repairEnabled) then { _x setDamage 0 };
        if (_refuelEnabled) then { [_x,1] remoteExec ["setFuel",_x] };
        if (_rearmEnabled) then { [_x,1] remoteExec ["setVehicleAmmo",_x] };
    };
} forEach vehicles;

//feedback
_hintText = switch true do {
    case (_healEnabled && _restoreFatigue): {"Nearby units have been healed and their stamina restored.\n"};
    case (_healEnabled): {"Nearby units have been healed.\n"};
    case (_restoreFatigue): {"Nearby units have had their stamina restored.\n"};
    default {""};
};

_hintText = _hintText + (switch true do {
    case (_repairEnabled && _refuelEnabled && _rearmEnabled): {"Nearby vehicles have been repaired, refuled and rearmed."};
    case (_repairEnabled && _refuelEnabled): {"Nearby vehicles have been repaired and refuled."};
    case (_repairEnabled && _rearmEnabled): {"Nearby vehicles have been repaired, refuled and rearmed."};
    case (_refuelEnabled && _rearmEnabled): {"Nearby vehicles have been refuled and rearmed."};
    case (_repairEnabled): {"Nearby vehicles have been repaired."};
    case (_refuelEnabled): {"Nearby vehicles have been refuled."};
    case (_rearmEnabled): {"Nearby vehicles have been rearmed."};
    default {""}
});
hint _hintText;
true
