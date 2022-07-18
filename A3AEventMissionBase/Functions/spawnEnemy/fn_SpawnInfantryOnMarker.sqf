/*
    Author: [martin/targetingsnake]
    Description:
        Sends a random amount of troops torwards players at given location

    Arguments:
    0. <String>  marker variable name of selected position
    1. <Array><String> marker variable names of spawn positions
    2. <Array><units>  Units to copy loadout from [Optional - default: Empty Array]
    3. <Array><string>  classnames for light units (if custom loadout is given, will be ignored) [Optional - default: classes from detected mods]
    4. <Array><string>  classnames for heavy units (if custom loadout is given, will be ignored) [Optional - default: classes from detected mods]
    5. <integer> Number of Waves which players have to survive [Optional - default: 5]
	6. <integer> Number of task (if below zero, no task will be created) [Optional - default: -1]
	7. <Array><int, int> Groups to spawn [Optional - default: [3,8]]]
	7. <Array><int, int> Enemies per Group [Optional - default: [3,9]]]

    Return Value:
    <String> Script handler

    Scope: Server
    Environment: Scheduled
    Public: Yes
    Dependencies:

    Example: ["marker_ao", ["spawn1", "spawn2"]] spawn TS_fnc_SpawnInfantryOnMarker;


    License: MIT License
*/

params ["_markerAO", "_markerEnemies", ["_loadouts", []], ["_UnitTypes_light", TS_OpforEnemiesLight], 
	["_UnitTypes_heavy", TS_OpforEnemiesHeavy], ["_waveGoals", 1], 
	["_taskID", -1], ["_minMaxGroup", [3,8]] , ["_groupSizeInf", [3,9]]];


if (!isServer) exitWith {};
_customLoadouts = false;

if (count(_loadouts) > 0) then {
	_UnitTypes_light = TS_OpforLoadoutBaseUnit;
	_UnitTypes_heavy = TS_OpforLoadoutBaseUnit;
	_customLoadouts = true;
};

_heavyTendence = 0;
if (count _UnitTypes_light == 0) then {
	_heavyTendence = 2;
};
_markerAOPos = getMarkerPos _markerAO;

if (_taskID >= 0) then {
	[true, _taskID, "DefendArea", _markerAOPos, "CREATED", -1, true, "defend", false] call BIS_fnc_taskCreate;
};

_waveCounter = 0;
_playerNear = true;
if (SpawnType && _taskID >= 0) then {
	_respawnTaskID = "10" + _taskID;
	[missionNamespace, _markerAO] call BIS_fnc_addRespawnPosition;
	[true, [_respawnTaskID,_taskID], "RespawnCreated", _markerAOPos, "SUCCEEDED", -1, true, "Respawn", false] call BIS_fnc_taskCreate;
};

_exit = false;

while {_playerNear && !_exit} do {
	_playerNear = false;
	{
		_dst = _x distance2D _markerAOPos;
		if (_dst <= 400) then {
			_playerNear = true;
		};
	} forEach TS_Infantry_Players;
	if (_playerNear) then {
		_players = [];
		if ( count TS_Infantry_Players > 0) then {
			{
				if ((_x distance2D _markerAOPos) < 250 ) then {
					_players pushBack _x
				}
			} forEach TS_Infantry_Players;
		};
		_enemieGroups = _minMaxGroup call BIS_fnc_randomInt;
		_groups = [];
		_vehicles = [];
		_vehicleGroups = [];
		_totalEnemy = 0;
		for "_i" from 0 to _enemieGroups do {
			_group = createGroup east;
			_EnemyNumber = _groupSizeInf call BIS_fnc_randomInt;
			_spawnPos = selectRandom _markerEnemies;
			_spawnPos = getMarkerPos _spawnPos;
			_totalEnemy = _totalEnemy + _EnemyNumber + 1;
			for "_j" from 0 to _EnemyNumber do {
				_ChanceHeavyTypeGuess = random 1;
				_unitRandom = "";
				if (_ChanceHeavyTypeGuess < _heavyTendence) then {
					_unitRandom = selectRandom _UnitTypes_heavy;
				} else {
					_unitRandom = selectRandom _UnitTypes_light;
				};
				if (_unitRandom != "") then {
					_spawnedUnit = _group createUnit [_unitRandom, _spawnPos, [], 20, "FORM"];
					if (_customLoadouts) then {
						_rndLoadoutUnit = selectRandom _loadouts;
						_spawnedUnit setUnitLoadout (getUnitLoadout _rndLoadoutUnit);
					};
					{  
						_x addCuratorEditableObjects [[_spawnedUnit], true]; 
					} forEach allCurators;
				};
			};
			_playerSelected = false;
			_player = objNull;
			_position = objNull;
			if (count _players > 0) then {
				_player = selectRandom _players;
				_position = getPos _player;
			} else {
				_position = _markerAOPos;
			};
			_wp = _group addWaypoint [_position, 15];
			_wp setWaypointBehaviour "AWARE";
			_wp setWaypointCombatMode "RED";
			_wp setWaypointForceBehaviour true;
			_wp setWaypointSpeed "FULL";
			_wp setWaypointType "GUARD";
			_groups pushBack _group;
			if (!SpawnDelay) then {
				sleep 2;
			};
		};
		_waveCounter = _waveCounter + 1;
		waitUntil {
			sleep 5;
			_WaveRunning = 0;
			for "_i" from 0 to _enemieGroups do {
				_WaveRunning = _WaveRunning + ({ alive _x } count units (_groups select _i));
			};
			_playerNear = false;
			{
				_dst = _x distance2D _markerAOPos;
				if (_dst <= 400) then {
					_playerNear = true;
				};
			} forEach TS_Infantry_Players;
			if (!_playerNear) then {
				if (_waveCounter < _waveGoals && _taskID >= 0) then {
					[_taskID, "FAILED"] call BIS_fnc_taskSetState;
					_exit = true;
				};
			};
			if (_waveCounter >= _waveGoals && _taskID >= 0) then {
				[_taskID, "SUCCEEDED"] call BIS_fnc_taskSetState;
				_exit = true;
			};
			if (_waveCounter >= _waveGoals && _taskID < 0) then {
				_exit = true;
			};
			(_WaveRunning / _totalEnemy) < 0.25 || !_playerNear
		};
		if(_exit) then {
			for "_i" from 0 to _enemieGroups do {
				{
					deleteVehicle _x;
				} forEach units (_groups select _i);
				deleteGroup (_groups select _i);
			};
			if (MissionDebug) then {
				"Spawnscript aborted" remoteExec ["systemChat",0,false] ;
			};
		};
		if (DeleteRestWave) then {
			for "_i" from 0 to _enemieGroups do {
				{
					deleteVehicle _x;
				} forEach units (_groups select _i);
				deleteGroup (_groups select _i);
			};
		};
		if (MissionDebug) then {
			_textDebug = "Wave " + str _waveCounter + " from " + str _waveGoals + " over";
			_textDebug remoteExec ["systemChat",0,false] ;
		};
		_heavyTendence = _heavyTendence + 0.2;
	} else {
		sleep 30;
		if (_taskID >= 0) then {
			_TSKstate = _taskID call BIS_fnc_taskState;
			_TSKstate = (_TSKstate == "SUCCEEDED");
			if (!_TSKstate) exitWith {
				if (MissionDebug) then {
					"Spawnscript aborted" remoteExec ["systemChat",0,false] ;
				};
			};
		}
	};
};

if (MissionDebug) then {
	"Enemy Spawn Script terminated." remoteExec ["systemChat",0,false] ;
}