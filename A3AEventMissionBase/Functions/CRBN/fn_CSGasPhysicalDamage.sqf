params["_unit"];
[_unit, 0.75] call ace_medical_fnc_adjustPainLevel;
if (! isPlayer _unit) then {
	private _exSkill = _unit call TS_fnc_getAISkill;
	_unit setVariable ["oldSkill", _exSkill, true];
	_unit setVariable ["CsHit", true, true];
	[_unit, [0, 0, 0, 0, 0, 0, 0, 0, 0, 0]] call TS_fnc_setAISkill;
};

private _interaction = ["CSGasHeal", "Decontaminate", "", {
	private _caller = _this select 1;
	private _target = _this select 0;
	[
		5, 
		[_caller, _target], 
		{
			private _caller = _args select 0;
			private _target = _args select 1;
			if ([_caller, "ACE_Canteen_Half", false] call BIS_fnc_hasItem ) then {
				_caller removeItem "ACE_Canteen_Half";
				[_caller, "ACE_Canteen_Empty"] call ace_common_fnc_addToInventory;
			} else {
				if ([_caller, "ACE_Canteen", false] call BIS_fnc_hasItem ) then {
					_caller removeItem "ACE_Canteen";
					[_caller, "ACE_Canteen_Half"] call ace_common_fnc_addToInventory;
				
				};
			};
			[_target] remoteExec ["TS_fnc_CSGasHeal", _target, false];
		}, 
		{}, 
		"Decontaminate CS-GAS..."
	] call ace_common_fnc_progressBar;
	}, {
		private _caller = _this select 1;
		private _canteenFull = [_caller, "ACE_Canteen", false] call BIS_fnc_hasItem;
		private _canteenHalf = [_caller, "ACE_Canteen_Half", false] call BIS_fnc_hasItem;
		_canteenFull || _canteenHalf
	} ] call ace_interact_menu_fnc_createAction;
[_unit, 0, ["ACE_MainActions"],_interaction] call ace_interact_menu_fnc_addActionToObject;
[_unit, 1, ["ACE_SelfActions"],_interaction] call ace_interact_menu_fnc_addActionToObject;



