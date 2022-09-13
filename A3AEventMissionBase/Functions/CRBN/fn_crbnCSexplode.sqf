params [["_projectile", objNull]];

_projectile addEventHandler ["Explode", { 
	params ["_projectile", "_pos", "_velocity"]; 
	"frag go boom" call TS_fnc_DevLogSys; 
	_radius = 10;
	_nade = "G_40mm_SmokeBlue";
	if ((typeOf _projectile) == "G_40mm_SmokeBlue") then {
		_radius = 25;
		_nade = "rhs_ammo_m7a3_cs";
	};
	_nadeObj = _nade createVehicle (ASLToATL _pos);
	_nadeObj setDamage 1;
	[_pos, _radius] execVM "Functions\CRBN\fn_CSGasCloud.sqf";
}]; 