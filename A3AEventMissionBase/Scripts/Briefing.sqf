// East = OPFOR | West = BLUFOR | independent = GREFOR | CIVILIAN = CIVILIAN
// Do not remove sides if you are not using them
// You can have a different breifing for each team
// For mission section, put each paragraph in its own line, even if it is very long

switch (side player) do {

	case West:
	{
		player createDiaryRecord ["Diary", ["Signals","
			Main Communication Net: LR 77.0<br/>
			Alpha Intercoms: SR 70.0<br/>
			Etc...<br/>"
		]];

		player createDiaryRecord ["Diary", ["Execution","
			1- Move in into the outpost<br/>
			2- Hold the outpost until reinforcments arrive<br/>
			Etc...<br/>"
		]];

		player createDiaryRecord ["Diary", ["Additional","
			1- There are still civilian population in the area<br/>
			2- There is active AAA around the outpost<br/>
			Etc...<br/>"
		]];

		player createDiaryRecord ["Diary", ["Mission","
			We've lost contact with Red Star outpost north of Kavala, your mission is to move in and secure the outpost and wait for reinforcments to arrive, be aware that there is still active AAA that needs to be neutralized for reinforcments to move in.<br/>
			Once the outpost is secured, you are to returned to the FOB and clear a way for more reinforcments to arrive.<br/>
			Etc...<br/>"
		]];

		player createDiaryRecord ["Diary", ["Situation","
			This morning at 10:15 we've lost contact with outpost Red Star after a heavy assault from rebel forces supported by CSAT.<br/>
			We've also detected that rebel forces moved into the town of Kavala and started barricading it.<br/>
			Etc...<br/>"
		]];
	};

	case east:
	{
		player createDiaryRecord ["Diary", ["Signals","
			Main Communication Net: LR 77.0<br/>
			Alpha Intercoms: SR 70.0<br/>
			Etc...<br/>"
		]];

		player createDiaryRecord ["Diary", ["Execution","
			1- Move in into the outpost<br/>
			2- Hold the outpost until reinforcments arrive<br/>
			Etc...<br/>"
		]];

		player createDiaryRecord ["Diary", ["Additional","
			1- There are still civilian population in the area<br/>
			2- There is active AAA around the outpost<br/>
			Etc...<br/>"
		]];

		player createDiaryRecord ["Diary", ["Mission","
			We've lost contact with Red Star outpost north of Kavala, your mission is to move in and secure the outpost and wait for reinforcments to arrive, be aware that there is still active AAA that needs to be neutralized for reinforcments to move in.<br/>
			Once the outpost is secured, you are to returned to the FOB and clear a way for more reinforcments to arrive.<br/>
			Etc...<br/>"
		]];

		player createDiaryRecord ["Diary", ["Situation","
			This morning at 10:15 we've lost contact with outpost Red Star after a heavy assault from rebel forces supported by CSAT.<br/>
			We've also detected that rebel forces moved into the town of Kavala and started barricading it.<br/>
			Etc...<br/>"
		]];
	};

	case independent:
	{
		player createDiaryRecord ["Diary", ["Signals","
			Main Communication Net: LR 77.0<br/>
			Alpha Intercoms: SR 70.0<br/>
			Etc...<br/>"
		]];

		player createDiaryRecord ["Diary", ["Execution","
			1- Move in into the outpost<br/>
			2- Hold the outpost until reinforcments arrive<br/>
			Etc...<br/>"
		]];

		player createDiaryRecord ["Diary", ["Additional","
			1- There are still civilian population in the area<br/>
			2- There is active AAA around the outpost<br/>
			Etc...<br/>"
		]];

		player createDiaryRecord ["Diary", ["Mission","
			We've lost contact with Red Star outpost north of Kavala, your mission is to move in and secure the outpost and wait for reinforcments to arrive, be aware that there is still active AAA that needs to be neutralized for reinforcments to move in.<br/>
			Once the outpost is secured, you are to returned to the FOB and clear a way for more reinforcments to arrive.<br/>
			Etc...<br/>"
		]];

		player createDiaryRecord ["Diary", ["Situation","
			This morning at 10:15 we've lost contact with outpost Red Star after a heavy assault from rebel forces supported by CSAT.<br/>
			We've also detected that rebel forces moved into the town of Kavala and started barricading it.<br/>
			Etc...<br/>"
		]];
	};

	case civilian:
	{
		player createDiaryRecord ["Diary", ["Signals","
			Main Communication Net: LR 77.0<br/>
			Alpha Intercoms: SR 70.0<br/>
			Etc...<br/>"
		]];

		player createDiaryRecord ["Diary", ["Execution","
			1- Move in into the outpost<br/>
			2- Hold the outpost until reinforcments arrive<br/>
			Etc...<br/>"
		]];

		player createDiaryRecord ["Diary", ["Additional","
			1- There are still civilian population in the area<br/>
			2- There is active AAA around the outpost<br/>
			Etc...<br/>"
		]];

		player createDiaryRecord ["Diary", ["Mission","
			We've lost contact with Red Star outpost north of Kavala, your mission is to move in and secure the outpost and wait for reinforcments to arrive, be aware that there is still active AAA that needs to be neutralized for reinforcments to move in.<br/>
			Once the outpost is secured, you are to returned to the FOB and clear a way for more reinforcments to arrive.<br/>
			Etc...<br/>"
		]];

		player createDiaryRecord ["Diary", ["Situation","
			This morning at 10:15 we've lost contact with outpost Red Star after a heavy assault from rebel forces supported by CSAT.<br/>
			We've also detected that rebel forces moved into the town of Kavala and started barricading it.<br/>
			Etc...<br/>"
		]];
	};
};