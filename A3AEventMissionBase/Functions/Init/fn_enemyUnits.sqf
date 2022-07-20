/*
    Author: [martin/targetingsnake]
    Description:
       Loading of enemy classnames into variables necessary for other functions

    Arguments:

    Return Value:
    <String> Script handler

    Scope: Server
    Environment: Scheduled
    Public: No
    Dependencies:

    Example: call TS_fnc_enemyUnits;


    License: MIT License
*/

if (!isServer) exitWith {};

TS_OpforEnemiesHeavy = [];
TS_OpforEnemiesLight = [];
TS_OpforVehiclesMedium = [];
TS_OpforVehiclesLight = [];
TS_OpforNavalHeavy = [];
TS_OpforNavalLight = [];
TS_OpforLoadoutBaseUnit = ["O_Soldier_F"];

#include "Units\cup.sqf"
#include "Units\rhs.sqf"
#include "Units\vanilla.sqf"

if (VanillaUnits) then {
	TS_OpforEnemiesHeavy = TS_OpforEnemiesHeavy + _unitTypes_heavy_vanilla;
	TS_OpforEnemiesLight = TS_OpforEnemiesLight + _unitTypes_light_vanilla;
	TS_OpforVehiclesMedium = TS_OpforVehiclesMedium + _vehicleTypes_heavy_vanilla;
	TS_OpforVehiclesLight = TS_OpforVehiclesLight + _vehicleTypes_light_vanilla;
	TS_OpforNavalHeavy = TS_OpforNavalHeavy + _vehicleTypes_heavy_naval_vanilla;
	TS_OpforNavalLight = TS_OpforNavalLight + _vehicleTypes_light_naval_vanilla;
};

if (TS_hasRHS) then {
	TS_OpforEnemiesHeavy = TS_OpforEnemiesHeavy + _unitTypes_heavy_RHS_AFRF;
	TS_OpforEnemiesLight = TS_OpforEnemiesLight + _unitTypes_light_RHS_GREF;
	TS_OpforVehiclesMedium = TS_OpforVehiclesMedium + _vehicleTypes_heavy_RHS_AFRF;
	TS_OpforVehiclesLight = TS_OpforVehiclesLight + _vehicleTypes_light_RHS_GREF;
	TS_OpforNavalHeavy = TS_OpforNavalHeavy + _vehicleTypes_heavy_naval_RHS_AFRF;
	TS_OpforNavalLight = TS_OpforNavalLight + _vehicleTypes_light_naval_RHS_AFRF;
};

if (TS_hasCUP) then {
	TS_OpforEnemiesHeavy = TS_OpforEnemiesHeavy + _unitTypes_heavy_CUP;
	TS_OpforEnemiesLight = TS_OpforEnemiesLight + _unitTypes_light_CUP;
	TS_OpforVehiclesMedium = TS_OpforVehiclesMedium + _vehicleTypes_heavy_CUP;
	TS_OpforVehiclesLight = TS_OpforVehiclesLight + _vehicleTypes_light_CUP;
	TS_OpforNavalHeavy = TS_OpforNavalHeavy + _vehicleTypes_heavy_naval_CUP;
	TS_OpforNavalLight = TS_OpforNavalLight + _vehicleTypes_light_naval_CUP;
};