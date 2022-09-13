class Params
{
	class Debug
	{
		// Visible name in lobby settings list
		title = "Debug";

		// must be integers - commas e.g 1.5 are not allowed
		values[] = { 0, 1 };

		// Description of each selectable item - must have the same number of items as 'values'
		// If texts are missing, the values will be displayed instead
		texts[] = { "off (default)", "on" };

		// must be listed in 'values' array, otherwise 0 is used. If not integer, fallback value is 1
		default = 1;
	};

	class Intro
	{
		// Visible name in lobby settings list
		title = "Intro";

		// must be integers - commas e.g 1.5 are not allowed
		values[] = { 0, 1 };

		// Description of each selectable item - must have the same number of items as 'values'
		// If texts are missing, the values will be displayed instead
		texts[] = { "off", "on (default)" };

		// must be listed in 'values' array, otherwise 0 is used. If not integer, fallback value is 1
		default = 0;
	};

	class DeleteRestWave
	{
		// Visible name in lobby settings list
		title = "Delete Rest of a Wave after Wave was successfully defended?";

		// must be integers - commas e.g 1.5 are not allowed
		values[] = { 0, 1 };

		// Description of each selectable item - must have the same number of items as 'values'
		// If texts are missing, the values will be displayed instead
		texts[] = { "off (default)", "on" };

		// must be listed in 'values' array, otherwise 0 is used. If not integer, fallback value is 1
		default = 0;
	};
	
	class DelaySpawn
	{
		// Visible name in lobby settings list
		title = "Set delay between spawns of a group.";

		// must be integers - commas e.g 1.5 are not allowed
		values[] = { 0, 1 };

		// Description of each selectable item - must have the same number of items as 'values'
		// If texts are missing, the values will be displayed instead
		texts[] = { "off (default)", "on" };

		// must be listed in 'values' array, otherwise 0 is used. If not integer, fallback value is 1
		default = 0;
	};

	class DelayGarabage
	{
		// Visible name in lobby settings list
		title = "Set delay type of deletion.";

		// must be integers - commas e.g 1.5 are not allowed
		values[] = { 0, 1 };

		// Description of each selectable item - must have the same number of items as 'values'
		// If texts are missing, the values will be displayed instead
		texts[] = { "Delay after each run (default)", "Delay after each deleted object" };

		// must be listed in 'values' array, otherwise 0 is used. If not integer, fallback value is 1
		default = 0;
	};

	class SpawnSettings
	{
		// Visible name in lobby settings list
		title = "Set where spawns are enabled.";

		// must be integers - commas e.g 1.5 are not allowed
		values[] = { 0, 1 };

		// Description of each selectable item - must have the same number of items as 'values'
		// If texts are missing, the values will be displayed instead
		texts[] = { "Only on Airfield (default)", "On Airfield and on Respawn position" };

		// must be listed in 'values' array, otherwise 0 is used. If not integer, fallback value is 1
		default = 0;
	};

	class CRBNEnabled
	{
		// Visible name in lobby settings list
		title = "Enable CRBN Features";

		// must be integers - commas e.g 1.5 are not allowed
		values[] = { 0, 1 };

		// Description of each selectable item - must have the same number of items as 'values'
		// If texts are missing, the values will be displayed instead
		texts[] = { "No", "Yes (default)" };

		// must be listed in 'values' array, otherwise 0 is used. If not integer, fallback value is 1
		default = 1;
	};

	class EnableVanillaUnits
	{
		// Visible name in lobby settings list
		title = "Enable usage of Vanilla Units.";

		// must be integers - commas e.g 1.5 are not allowed
		values[] = { 0, 1 };

		// Description of each selectable item - must have the same number of items as 'values'
		// If texts are missing, the values will be displayed instead
		texts[] = { "No (default)", "Yes" };

		// must be listed in 'values' array, otherwise 0 is used. If not integer, fallback value is 1
		default = 1;
	};
};

class ACEX_Fortify_Presets {
    class myMissionObjects {
        displayName = "MartinsPreset";
        objects[] = {
			{"Land_BagFence_Long_F", 5},
			{"Land_Razorwire_F", 5},
			{"Land_HBarrier_3_F", 50},
			{"Land_BagBunker_Small_F", 100},
			{"Land_HBarrier_Big_F", 100},
			{"Land_HBarrierWall4_F", 100},
			{"Land_BagBunker_Large_F", 250},
			{"Land_HBarrierTower_F", 250},
			{"Land_Cargo_Patrol_V3_F", 500},
			{"Land_PillboxBunker_01_hex_F", 1000},
			{"Land_PillboxBunker_01_rectangle_F", 1000},
			{"Land_Bunker_01_blocks_1_F", 250},
			{"Land_Bunker_01_small_F", 2000},
        };
    };
};