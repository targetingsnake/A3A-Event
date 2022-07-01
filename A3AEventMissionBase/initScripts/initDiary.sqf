// params: _player, _jip

//Credits

_player createDiaryRecord ["Diary", ["Credits","
Thanks and credits goes to: <br/>
Frost'sBite from the Antistasi Dev Team for the friendly fire script https://github.com/official-antistasi-community/A3-FF-Punishment-Phantom<br/>
Hakon from the Antistasi Dev Team for all the functions/scripts and help he provided the event team with.<br/>
All the creator's of the mods that were used in this mission.<br/>
Anyone who have contributed to the creation of this mission.<br/>
"]]; 

//Briefing [All sides]

_player createDiaryRecord ["Diary", ["Signals","
	Main Communication Net: LR 77.0<br/>
	Alpha Intercoms: SR 70.0<br/>
	Etc...<br/>"
]];

_player createDiaryRecord ["Diary", ["Execution","
	1- Move in into the outpost<br/>
	2- Hold the outpost until reinforcments arrive<br/>
	Etc...<br/>"
]];

_player createDiaryRecord ["Diary", ["Additional","
	1- There are still civilian population in the area<br/>
	2- There is active AAA around the outpost<br/>
	Etc...<br/>"
]];

_player createDiaryRecord ["Diary", ["Mission","
	We've lost contact with Red Star outpost north of Kavala, your mission is to move in and secure the outpost and wait for reinforcments to arrive, be aware that there is still active AAA that needs to be neutralized for reinforcments to move in.<br/><br/>
	Once the outpost is secured, you are to returned to the FOB and clear a way for more reinforcments to arrive.<br/><br/>
	Etc...<br/>"
]];

_player createDiaryRecord ["Diary", ["Situation","
	This morning at 10:15 we've lost contact with outpost Red Star after a heavy assault from rebel forces supported by CSAT.<br/><br/>
	We've also detected that rebel forces moved into the town of Kavala and started barricading it.<br/><br/>
	Etc...<br/>"
]];

// Briefing [For different sides]
// Copy the content of the "West" case to other cases as needed and comment/delete the previous briefing code

/*

switch (side _player) do {

	case west:
	{
		_player createDiaryRecord ["Diary", ["Signals","
			Main Communication Net: LR 77.0<br/>
			Alpha Intercoms: SR 70.0<br/>
			Etc...<br/>"
		]];

		_player createDiaryRecord ["Diary", ["Execution","
			1- Move in into the outpost<br/>
			2- Hold the outpost until reinforcments arrive<br/>
			Etc...<br/>"
		]];

		_player createDiaryRecord ["Diary", ["Additional","
			1- There are still civilian population in the area<br/>
			2- There is active AAA around the outpost<br/>
			Etc...<br/>"
		]];

		_player createDiaryRecord ["Diary", ["Mission","
			We've lost contact with Red Star outpost north of Kavala, your mission is to move in and secure the outpost and wait for reinforcments to arrive, be aware that there is still active AAA that needs to be neutralized for reinforcments to move in.<br/>
			Once the outpost is secured, you are to returned to the FOB and clear a way for more reinforcments to arrive.<br/>
			Etc...<br/>"
		]];

		_player createDiaryRecord ["Diary", ["Situation","
			This morning at 10:15 we've lost contact with outpost Red Star after a heavy assault from rebel forces supported by CSAT.<br/>
			We've also detected that rebel forces moved into the town of Kavala and started barricading it.<br/>
			Etc...<br/>"
		]];
	};
	case east:
	{};
	case independent:
	{};
	case civilian:
	{};
};

*/