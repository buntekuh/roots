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
When play begins:
	say "Grieving being uprooted from my ancestral forests, you finally arrived in the City of Lights.[line break]I had forgotten the dances of my homeland.[line break]I had forgotten who I was.[line break][line break]All I had wanted do, was take root.".

Trainstation is a room. "It was a place of rancour. It was a place of chaos, steaming locomotives and hopeless arrivals. Metallic hoots were heard in the distance.

[feeling]Recollections of the past, haunted souls on distant plains, and memories of long forgotten hatred lingered. The lights of the city beckon to the north. [line break][line break][trainstation-description]".

to say trainstation-description:
	if the Arrival is happening:
		say "[regular]A city of sawdust[line break]
		A city of promises[line break]
		A city of hope[line break]";
		say  "[right]yet to be made.[line break]";
		say "[feeling]I felt lost. I felt afraid. I floated in a space of desperate fear.[line break]
		[regular]Was it vain to hope for a new home?".

Arrival is a Scene. 
Arrival begins when the player is in the Trainstation for the first turn.
Arrival ends when the player is in the Sprawling Forest.

every turn during the Arrival:
	if player is in the Open Space in front of Station:
		say "[feeling]A jumble of trees, trembling, a forlorn rustle, lost.[line break]";
		say "A drawn wail pierced the evening air.[regular]" indented to level 10;
	if player is in the Market:
		say "[feeling]Startled frightened fey called out as a stampede of scuffling trees bore down on the market. A frenzy of flurry as merchants hustled to push their goods barely out of the way.[regular]";
	if player is in the Sprawling Forest:
		say "[feeling]Trees were spreading out,taking root.[line break]The stampede dissipated into a feeling of  sudden calm serenity.[line break]";
		say "[regular]My roots tentatively sprouted deeper into the earth.";
		say "A sigh of relief. [line break]";
		say "A home? I could not say. Yet at least a place to rest.".

automatic going is initially false.

check going during the Arrival:
	if automatic going is false:
		say "You are too listless, tired and lost to do anything." instead.

Open Space in front of Station is a room. "It was an open space for trees to root. For arrivals to weep. Yet also there was laughter of fey folk and birds.".
It is north of the Trainstation.

Market is a room. "It was a fey market. fruit, vegetables, shawls and toys. A bustle of people, delighted exclamation at the sight of a cute sash or when indignantly haggling outrageous prices."

It is north of the Open Space in front of Station.

Sprawling Forest of Trees is a room. "It was a sprawling jumble of trees, young saplings and old, grnarled oaks stretching away into the distance."
It is north of the Market.

Every turn:
	if the location of the player is not the Sprawling Forest of Trees:
		if Arrival is happening:
			say "Shuffling feet pushed from behind. A surge of mighty trees trundling along swept me away.";
		otherwise:
			say "Anxiously I headed for a forest to rest.";
		let the way be the best route from the location of the player to the Sprawling Forest of Trees;
		now automatic going is true;
		try the player going the way;
		now automatic going is false.

Spaces per tab is initially 4.

To say (T - text) indented to level (N - number): [see WWI 11.1 What are phrases? and 11.3 Pattern matching]
	let spaces needed be N times spaces per tab;
	say "[line break]";
	repeat with counter running from 1 to spaces needed:
		say " ";
	say "[T][line break]"; 

Include Glulx Text Effects by Emily Short.
To say regular:
	(- glk_set_style( style_Normal ); -).
To say feeling:
	(- glk_set_style( style_User1 ); -).
To say right:
	(- glk_set_style( style_User2 ); -).

Table of User Styles (continued)
style name	justification	italic	indentation	first line indentation	font weight	color
normal-style	left-justified	true	15	0	regular-weight	"#0"
special-style-1	left-justified	true	15	-4	light-weight	"#888888"
special-style-2	right-justified	true	15	-4	bold-weight	"#0"
	
