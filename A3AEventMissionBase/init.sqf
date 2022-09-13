// Modify default of which features are enabled or not.
FFPP_FFPunEnabled = true;
FFPP_FFPunTellInstigator = false;
FFPP_FFPunTellVictim = false;
FFPP_FFPunTellAdmin = true;

// Enable friendly fire logging for specific AI
//[VarName,true] call FFPP_fnc_punishment_FF_addEH;

missionNamespace setVariable ["ACE_maxWeightDrag", 2000];
missionNamespace setVariable ["ACE_maxWeightCarry", 2000];

private _debug = ["Debug", -1] call BIS_fnc_getParamValue;
private _intro = ["Intro", -1] call BIS_fnc_getParamValue;
private _despawnDelayType = ["DelayGarabage", -1] call BIS_fnc_getParamValue;
private _deleteWave = ["DeleteRestWave", -1] call BIS_fnc_getParamValue;
private _spawnDelay = ["DelaySpawn", -1] call BIS_fnc_getParamValue;
private _SpawnType = ["SpawnSettings", -1] call BIS_fnc_getParamValue;
private _VanillaUnits = ["EnableVanillaUnits", -1] call BIS_fnc_getParamValue;
private _CRBNenabled = ["CRBNEnabled", -1] call BIS_fnc_getParamValue;
MissionDebug = (_debug == 1);
MissionIntro = (_intro == 1);
CRBN = (_CRBNenabled == 1) ;
IntroPlayed = false;
DelayDespawnType = (_despawnDelayType == 1);
DeleteRestWave = (_deleteWave == 1);
SetAttackActive = false;
SetNvgAvailable = false;
SpawnDelay = (_spawnDelay == 1);
SpawnType = (_SpawnType == 1);
VanillaUnits = (_VanillaUnits == 1);

if (CRBN) then {
	call TS_fnc_initCRBN;
};

if (isServer) then {
	publicVariable "MissionDebug";
	publicVariable "MissionIntro";
	publicVariable "DeleteRestWave";
	publicVariable "SetAttackActive";
	publicVariable "SetNvgAvailable";
	publicVariable "SpawnDelay";
	publicVariable "IntroPlayed";
	publicVariable "SpawnType";
	publicVariable "VanillaUnits";
	publicVariable "CRBN";
};

call TS_fnc_detectMods;
call TS_fnc_infantryDetector;