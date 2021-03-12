/*
    Author: [Håkon]
    Description:
        Loads garage from garage save data

    Arguments:
    0. <Struct> [
        <Array> [
            Array [
                <Struct> [
                    <String> Vehicle display name
                    <String> Vehicle classname
                    <String> Vehicl lock UID
                    <String> Vehicle check out UID
                    <Int>    Vehicle UID
                ] Vehicle data
            ] Vehicle category
        ] Garage vehicle data

        <Int> Last vehicle UID

        <Array> [
            <Array> [Vehicle UID] Ammo sources
            <Array> [Vehicle UID] Fuel sources
            <Array> [Vehicle UID] Repair sources
        ] Sources
    ] Garage save data

    Return Value:
    <Bool> Save loaded

    Scope: Server
    Environment: unscheduled
    Public: Yes
    Dependencies:

    Example: [_save] call HR_GRG_fnc_loadSaveData;

    License: MIT License
*/
if (!isServer) exitWith {false};
#include "defines.inc"
params [["_save", [], [[]] ]];
private _validSave = _save params [
    ["_garage", [createHashMap,createHashMap,createHashMap,createHashMap,createHashMap], [[]], 5]
    , ["_uid", 0, [0]]
    , ["_sources", [[],[],[]], [[]], 3]
];

HR_GRG_Vehicles = +_garage;
HR_GRG_UID = +_uid;
HR_GRG_Sources = +_sources;

[] call HR_GRG_fnc_validateGarage;
{
    [_forEachIndex] call HR_GRG_fnc_declairSources;
} forEach HR_GRG_Sources;

if _validSave then {
    Trace("fn_loadSaveData | Garage restored");
} else {
    Trace("fn_loadSaveData | New garage loaded");
};
true;