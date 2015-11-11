Double Doors by Maurits van Riezen begins here.
"Provides a way to make doors with different looks for different sides, and moveable doors"

Book 1 - Two sided doors



A base half door is a kind of thing. A base half door can be closed or open. A base half door can be locked or unlocked.
A base half door can be showing locked state. A base half door can be showing closed state. A base half door is usually showing locked state. A base half door is usually showing closed state. a base half door is usually not portable. A base
half door can be lockable. A base half door is usually lockable. A base half door can be openable. A base half door is usually openable.

After printing the name of a base half door (called dr) while listing contents:
	if dr is locked and dr is showing locked state:
		if dr is closed and dr is showing closed state:
			say "([text of list writer
			internal rule response(P)])";
		else if dr is showing closed state:
			say "([text of list writer internal rule response (M)][text of list writer internal rule response (C)]locked.)";
	else:
		if dr is closed and dr is showing closed state:
			say "([text of list writer internal rule response (E)] )";
		else if dr is showing closed state:
			say "([text of list writer internal rule response (M)])".

The can't enter what's not enterable rule does nothing if the noun is a base half door.
[The can't open unless openable rule does nothing if the noun is a base half door.
The can't close unless openable rule does nothing if the noun is a base half door.
The can't lock without a lock rule does nothing if the noun is a base half door.
The can't unlock without a lock rule does nothing if the noun is a base half door.
]



A half door is a kind of base half door. A half door has a direction called facing.

opposing relates one base half door to another (called the back side).

The verb to be opposite to means the opposing relation.

	

Instead of an actor entering a base half door (this is the entering a half door rule):
	follow door entering rulebook for the noun;
	if the rule succeeded:
		follow the door leaving rulebook for the back side of noun;
		if the rule succeeded:
			now the actor is in the location of the back side of the noun;
			if the person asked is not the player:
				say "[the actor] enters [the noun]. " (A);
			rule succeeds;



door entering is a base half door based rulebook.

Last door entering a base half door (called the dr) (this is the the default succes base half doors rule):
	rule succeeds.

door entering a base half door (called the dr) (this is the can't enter closed half doors rule):
	if dr is closed:
		if the person asked is the player:
			say "(Opening [the dr] first)" (A);
		else:
			say "[the person asked] tries to open [the dr] first." (B);
		try the person asked opening the dr;
		unless the dr is open:
			stop the action;
	else:
		continue the action.

door leaving is a base half door based rulebook.
		
the default succes base half doors rule is listed in the door leaving rules.
The can't enter closed half doors rule is listed in the door leaving rules.

Door leaving nothing (this is the can't enter a door going nowhere rule):
	say "That door leads nowhere!" (A);
	stop the action.
Door leaving a base half door (called the dr):
	if the dr is nowhere:
		say "[text of can't enter a door going nowhere rule response (A)]";
		stop the action.

check an actor opening a base half door:
	if the back side of the noun is locked:
		say "[text of can't unlock without the correct key rule response (A)]";
		stop the action;
carry out an actor opening a base half door:
	open the noun;
	stop the action.
carry out an actor closing a base half door:
	close the noun;
	stop the action.
carry out an actor locking a base half door with something:
	lock the noun;
	stop the action.
carry out an actor unlocking a base half door with something:
	unlock the noun;
	stop the action.



To open (dr - a base half door):
	now dr is open;
	now the back side of dr is open.
	
To close (dr - a base half door):
	now dr is closed;
	now the back side of dr is closed.
To lock (dr - a base half door):
	now dr is locked;
	now the back side of dr is locked.
To unlock (dr - a base half door):
	now dr is unlocked;
	now the back side of dr is unlocked.
	
Instead of an actor going a direction (called dir) in the presence of a half door:
	repeat with dr running through half doors in the location of the person asked:
		if dir is the facing of the dr:
			try the person asked entering the dr instead;
	continue the action.

Book 2 - Rules (for use with Locksmith by Emily Short) 

This is the find new key rule :
	let the item be a thing;
	if the noun provides the property matching key and the matching key of the noun is not nothing:
		now the item is the matching key of the noun;
	else if the back side of the noun provides the property matching key and the matching key of the back side of the noun is not nothing:
		now the item is the matching key of the back side of the noun;
	otherwise:
		if the player is the person asked, say "[key-refusal for noun]";
		stop the action;
	if the person asked encloses the item:
		now the second noun is the item;
		abide by the must have accessible the second noun rule;
	else:
		do nothing;
		if the item is a passkey and (the item unbolts the noun or the item unbolts the back side of the noun) and the item is visible:
			now the second noun is the item;
			abide by the must have accessible the second noun rule;
		otherwise:
			if the player is the person asked, say "[key-refusal for noun]";
			stop the action.

The find new key rule substitutes for the need a matching key rule if the noun is a base half door.

This is the new right second rule:
	unless (the noun provides the property matching key and the matching key of the noun is the second noun) or (back side of the noun provides the property matching key and the matching key of the back side of the noun is the second noun):
		say "That dousn't fit!" instead.
The new right second rule substitutes for the right second rule if the noun is a base half door.

Chapter 3 - Special (in place of Chapter - Listing Exits (for use without Keyword Interface by Aaron Reed) in Small Kindnesses by Aaron Reed)

Definition: a direction is viable:
	if the room it from the location is a room:
		yes;
	let drs be the list of half doors in the location;
	repeat with qb running through drs:
		if the facing of qb is it:
			yes;
	no.
Listing exits is an action out of world applying to nothing. Understand "exits" as listing exits. The listing exits action has a number called the count of exits.

Carry out listing exits (this is the Small Kindnesses count exits rule): now count of exits is the number of viable directions.

Report listing exits when count of exits is 0 (this is the Small Kindnesses report on no exits rule):
	say "In fact, [we] [can't see] any obvious exits." (A)

Report listing exits when count of exits is 1 (this is the Small Kindnesses report on one exit rule):
	say "The only way to go [are] [list of viable directions]." (A)

Report listing exits when count of exits > 1 (this is the Small Kindnesses report on exits rule):
	say "From here, [we] [can go] [list of viable directions]." (A)

Book 3 - Rules

This is the new key unlock required rule:
	if the second noun is not portable:
		stop the action;
	if ((the noun does not provide the property matching key or
		the matching key of the noun is not the second noun) and (the back
		side of the noun does not provide the property matching key or the matching key of the back side of the noun
		is not the second noun) ):
		say "[text of can't unlock without the correct key rule response (A)]";
		stop the action.
This is the new key lock required rule:
	if the second noun is not portable:
		stop the action;
	if ((the noun does not provide the property matching key or
		the matching key of the noun is not the second noun) and (the back
		side of the noun does not provide the property matching key or the matching key of the back side of the noun
		is not the second noun) ):
		say "[text of can't lock without the correct key rule response (A)]";
		stop the action.


The new key unlock required rule substitutes for the can't unlock without the correct key rule if the noun is a base half door.
The new key lock required rule substitutes for the can't lock without the correct key rule if the noun is a base half door.


Double Doors ends here.

---- DOCUMENTATION ---- 

This extension provides a "Half door" class.  A half door acts mostly like a door in the game, there are some
differences though:
Both sides of a half door can have different descriptions
A half door can be moved. You can even make a half door that can be picked up.
You can program a half door to have more complicated locking mechanisms, only assesable from one side.

To use a half door you can do something like this:

	The big white door is a half door. The description of it is "It[']s big, and it[']s white!". The big white door is in the lobby.
	The big black door is a half door. The description of it is "It[']s big, and it[']s black!". The big black door is in the directors private room.
	The big white door is opposite to the big black door.
	The facing of the big white door is north.
	The facing of the big black door is south.
	The big white door is locked.
	The bunny is in the lobby. The bunny unlocks the big white door.

To add a latching mechanism, you could add something like this:

	A latched door is a kind of half door.
	A latch is a kind of thing. A latch (called its latch) is part of every latched door. A latch can be openable. A latch is openable. A latch can be open or closed.
	Door entering a latched door (called dr):
		if the dr's latch is closed:
			say "You can't open the door when the latch is on it. " instead.
	Door leaving a latched door (called dr):
		let bk be the back side of dr.
		if the bk's latch is closed:
			say "Something on the other side is preventing the door from opening." instead.
	The big black door is a latched door.

Notice the two rulebooks:
Door entering can prevent a door from being entered by the door entering rulebook, and the other side of the door can provide a specialized message in the door leaving rulebook.
This extension contains a special section for working with locksmith by Emily Short. For using it with 