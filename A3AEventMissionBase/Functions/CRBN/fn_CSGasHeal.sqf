params["_unit"];
[_unit, -0.75] call ace_medical_fnc_adjustPainLevel;

if (isPlayer _unit) then {
	[] spawn {
		params["_handle1", "_handle2"];

		_priority1 = 400;
		_priority2 = 500;

		while {
			_handle2 = ppEffectCreate ["ChromAberration", _priority2];
			_handle2 < 0
		} do {
			_priority2 = _priority2 + 1;
		};
		_handle2 ppEffectEnable true;
		_handle2 ppEffectAdjust [0.1,0.1, false];
		_handle2 ppEffectCommit 0;
		_handle2 ppEffectAdjust [0.0,0.0, false];
		_handle2 ppEffectCommit 5;
		waitUntil { ppEffectCommitted _handle2 };
		sleep 5;

		"VFX exeucting" call TS_fnc_DevLogSys;

		_priority1 = 400;
		_priority2 = 500;

		while {
			_handle1 = ppEffectCreate ["dynamicBlur", _priority1];
			_handle1 < 0
		} do {
			_priority1 = _priority1 + 1;
		};
		_handle1 ppEffectEnable true;
		_handle1 ppEffectAdjust [3];
		_handle1 ppEffectCommit 0;
		_handle1 ppEffectAdjust [0];
		_handle1 ppEffectCommit 5;
		waitUntil { ppEffectCommitted _handle1 };
		sleep 7;

		_handle1 ppEffectEnable false;
		_handle2 ppEffectEnable false;
	};
} else {
	private _skill = _unit getVariable "oldSkill";
	[_unit, _skill] call TS_fnc_setAISkill;
};

[_unit,0,["ACE_MainActions","CSGasHeal"]] call ace_interact_menu_fnc_removeActionFromObject;
[_unit,1,["ACE_SelfActions","CSGasHeal"]] call ace_interact_menu_fnc_removeActionFromObject;