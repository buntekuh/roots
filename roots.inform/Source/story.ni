"roots" by buntekuh

[This game is about changing one's own destiny. It is about plunging the player into a new reference field of powerful feelings, and finding the confidence to choose to be a bird. There are 3 stages of being:
	trees: a tree has almost no power of it's own. A tree can dance the dance of the forest. 
	fae: a fae is the naturally occuring being althrough the city of lights. Faes have the power to choose their own destiny and partake in the dance of passage.
	bird: The bird is the final stage of exultation. The player becomes a bird after learning the dance of being at the festival of passage
	
	We start with developing a few mechanisms:
		Rooting
		Power levels
		Dancing
		Prancing
		Engaging
		Responsibility
		Love
		Relationship
		Freedom
]
Trainstation is a room. "A place of rancour and chaos, steaming locomotives, metallic  hooting in the distance, recollections of the past,  haunted souls on distant plains., memories of long forgotten hatred lingers.".

Arrival is a Scene. Arrival begins when the player is in the Trainstation for the third turn.

When Arrival begins:
	say "stricken by the grief of being uprooted from your ancestral plains you finally arrive in the city.

	A city of sawdust[line break]
	A city of promises[line break]
	A city of hope";
	say  "yet to be made." indented to level 10;
	say "I feel lost. I am afraid. I float in a space of desperate fear.[line break]
	Is it a dream to find home?

	Dim lights beckon in the distance[line break]";
	move the player to the Open Space in front of Station;
	if player is in the Open Space in front of Station:
		say "A jumble of trees, trembling, a forlorn rustle, lost.[line break]

		A drawn wail pierces the evening air.
		
		Shuffling feet push from behind. I am pulled by the surge.";
		move player to the Market.


instead of going  during Arrival: say "You are too listless, tired and lost to do anything.".


Open Space in front of Station is a room. It is north of the Trainstation.

Market is a room. It is north of the Open Space in front of Station.

Open Ground is a room. It is north of the Market.

Every turn:
 let rooting_course be the best route from location of the player to the Open Ground.
 if rooting_course is a direction, try player going course.

Spaces per tab is initially 4.

To say (T - text) indented to level (N - number): [see WWI 11.1 What are phrases? and 11.3 Pattern matching]
	let spaces needed be N times spaces per tab;
	say "[line break]";
	repeat with counter running from 1 to spaces needed:
		say " "; 
	say "[T][line break]"; 