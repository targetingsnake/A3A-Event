// FF
if (hasInterface) then {
	[player] call FFPP_fnc_punishment_FF_addEH;
};

// Dressup
_this call HR_fnc_dressUp;

// Gun safety script
[ACE_player, currentWeapon ACE_player, true] call ace_safemode_fnc_setWeaponSafety;
hint "Your weapon safety is on, press Ctrl+` to disable it";

// Add items
player additemToUniform "ACE_EarPlugs";
player additemToUniform "acex_intelitems_notepad";