// FF
if (hasInterface) then {
	[player] call FFPP_fnc_punishment_FF_addEH;
};

// Dressup
_this call HR_fnc_dressUp;

// Gun safety script
{
	[ACE_player, _x, true] call ace_safemode_fnc_setWeaponSafety;
} forEach (weapons ACE_player);

[missionNamespace, "A3A_disclaimerDone", {
	sleep 5;

	{
		[ACE_player, _x, false] call ace_safemode_fnc_setWeaponSafety;
	} forEach (weapons ACE_player);
}
] call BIS_fnc_addScriptedEventHandler;

[] spawn {
    waitUntil{!(isNil "A3A_disclaimerDone")};
    
};
							
// Add items
player additemToUniform "ACE_EarPlugs";
player additemToUniform "acex_intelitems_notepad";

// Dynamic groups system
["InitializePlayer", [player, true]] call BIS_fnc_dynamicGroups;