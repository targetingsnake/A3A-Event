params ["_unit", "_weapon", "_muzzle", "_mode", "_ammo", "_magazine", "_projectile", "_gunner"];
if (_unit == player) then {
	(typeOf _projectile) call TS_fnc_DevLogSys; 
	if ((typeOf _projectile) == "G_40mm_SmokeBlue" || (typeOf _projectile) == "rhs_ammo_m7a3_cs") then {  
		"throw frag" call TS_fnc_DevLogSys; 
		_projectile call TS_fnc_crbnCSexplode;
}; }