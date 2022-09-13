params["_unit", "_handle1", "_handle2"];

if (! isPlayer _unit) exitWith{
	"no VFX, no Player" call TS_fnc_DevLogSys;
};

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
_handle1 ppEffectCommit 5;
waitUntil { ppEffectCommitted _handle1 };
sleep 5;


while {
	_handle2 = ppEffectCreate ["ChromAberration", _priority2];
	_handle2 < 0
} do {
	_priority2 = _priority2 + 1;
};
_handle2 ppEffectEnable true;
_handle2 ppEffectAdjust [0.1,0.1, false];
_handle2 ppEffectCommit 5;
waitUntil { ppEffectCommitted _handle2 };
sleep 5;