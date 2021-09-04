#include "..\..\Includes\common.inc"
FIX_LINE_NUMBERS()
Info("preInit");

if (isServer) then {
    [] call HR_fnc_detector;
    [] call HR_fnc_logistics_initNodes;
    [] call HR_GRG_fnc_initServer; //garage server init
    addMissionEventHandler ["EntityRespawned", HR_fnc_onEntityRespawn];
};

// Modify default of which features are enabled or not.
FFPP_FFPunEnabled = true;
FFPP_FFPunTellInstigator = false;
FFPP_FFPunTellVictim = false;
FFPP_FFPunTellAdmin = true;

// Add to named AI
//[VarName,true] call FFPP_fnc_punishment_FF_addEH;


/*
//Vehicle garage action
#include "Garage\CfgDefines.inc"
["allVehicles", "init", {
    if( ( [typeOf (_this#0)] call HR_GRG_fnc_getCatIndex ) isEqualTo -1 ) exitWith {};
    (_this#0) addAction [
        format [localize "STR_HR_GRG_addVehicle_Action", cfgDispName(typeOf (_this#0))]
        , "[_this#0, clientOwner, call HR_GRG_dLock, player] remoteExecCall ['HR_GRG_fnc_addVehicle',2]", nil, 1.5, false, true, ""
        , "(isNil {HR_GRG_Placing}) || {!HR_GRG_Placing}"
    ];
}] call CBA_fnc_addClassEventHandler;
*/
