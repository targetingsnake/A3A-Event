params ["_pos", "_radius"];
"creating CS gas cloud" call TS_fnc_DevLogSys;
_time = serverTime;
waitUntil {
	{
		if (((ASLToAGL _pos) distance _x) <= _radius ) then {
			private _checkMask = (goggles _x) in TS_CRBN_CS_Gas_gear;
			if (!_checkMask && ! (_x in TS_CRBN_CS_Gas_exposed) && (typeOf (objectParent _x) == "")) then {
				_x call TS_fnc_CSGasPhysicalDamage;
				_x remoteExec ["TS_fnc_CSGasVFX", _x, false];
				TS_CRBN_CS_Gas_exposed pushBack _x;
				"GAS VFX executed" call TS_fnc_DevLogSys;
			} else {
				"Player has gasmask or was exposed already" call TS_fnc_DevLogSys;
			};
		};
	} forEach allUnits;
	publicVariable "TS_CRBN_CS_Gas_exposed";
	sleep 1;
	servertime >= _time + 120;
} ;