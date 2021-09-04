/*
if (hasinterface) then { // hasInterface checks whether the machine is a player or server. If hasinterface is true, it is a player.
    1 faderadio 0; //Turn off annoying AI radio callouts volume

        titleCut ["", "BLACK FADED", 999]; //make screen black

        [] Spawn {
        waitUntil{!(isNil "BIS_fnc_init")};

        0 fadesound 0; //no sound, for full audio cinematic effect
        [player, false] remoteExecCall ["enableSimulation", 2];

        sleep 7; //wait for people to load in
        titletext ["<t size='2'> Disclaimer: This is a work of fiction. Names, characters, businesses, places, events and incidents are either the products of the author's imagination or used in a fictitious manner. Any resemblance to actual persons, living or dead, or actual events is purely coincidental.</t>","PLAIN",2, true, true]; // First piece of text. You can keep adding title texts if you want/need to.
        sleep 5;
        titlefadeout 5;
        // Fade from black, to blur, to clear as text types.
        sleep 5;
        [player, true] remoteExecCall ["enableSimulation", 2];
        "dynamicBlur" ppEffectEnable true;   //Fade in effects
        "dynamicBlur" ppEffectAdjust [6];
        "dynamicBlur" ppEffectCommit 0;
        "dynamicBlur" ppEffectAdjust [0.0];
        "dynamicBlur" ppEffectCommit 5;
        titleCut ["", "BLACK IN", 5];
        1 fadesound 0.5; //put sound back in, over a period of 0.5seconds
    };
    1 faderadio 1;
};
*/
