if (hasInterface) then {
    0 fadeRadio 0;
    0 fadeSound 0;

    "disclaimerLayer_Background" cutText ["", "BLACK FADED", -1, true, false];

    [] spawn {

        waitUntil{!(isNil "BIS_fnc_init")};

        sleep 1;

        "disclaimerLayer_Text" cutText  ["<t size='2'> Disclaimer: This is a work of fiction. Names, characters, businesses, places, events and incidents are either the products of the author's imagination or used in a fictitious manner. Any resemblance to actual persons, living or dead, or actual events is purely coincidental.</t>", "PLAIN", 5, true, true];
        "disclaimerLayer_Sponsor" cutText ["<img size='10' shadow='0' image='Images\armahosts_sponsor.paa'/>", "PLAIN DOWN", 5, true, true];

        sleep 8;

        "disclaimerLayer_Background" cutFadeout 5;
        "disclaimerLayer_Text" cutFadeout 1;
        "disclaimerLayer_Sponsor" cutFadeout 1;

        "dynamicBlur" ppEffectEnable true;
        "dynamicBlur" ppEffectAdjust [6];
        "dynamicBlur" ppEffectCommit 0;
        "dynamicBlur" ppEffectAdjust [0.0];
        "dynamicBlur" ppEffectCommit 5;

        5 fadeSound 1;
        5 fadeRadio 1;

        sleep 5;
        [missionNamespace, "A3A_disclaimerDone", []] call BIS_fnc_callScriptedEventHandler;
    };

    [missionNamespace, "A3A_disclaimerDone", {"dynamicBlur" ppEffectEnable false;}] call BIS_fnc_addScriptedEventHandler;
};