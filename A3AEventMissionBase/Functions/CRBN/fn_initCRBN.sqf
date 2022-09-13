if (hasInterface) then {
	systemChat "CRBN Initialized";

	player addEventHandler ["Fired", { 
		_this call TS_fnc_crbnEventhandlerAdd;
	}];


	["ace_throwableThrown", {_this call TS_fnc_crbnEventhandlerAddCBA;}] call CBA_fnc_addEventHandler;
};

if (isServer) then {
	TS_CRBN_CS_Gas_gear = ["SE_GP7"];
};

TS_CRBN_CS_Gas_exposed = [];
publicVariable "TS_CRBN_CS_Gas_exposed";