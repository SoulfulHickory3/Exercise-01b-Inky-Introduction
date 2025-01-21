/*
This is a comment block. It won't be read as an Ink story.
Comments are very useful for leaving ideas for story and functionalty

This exercise will demonstrate the following in the example video:
 [X] Basic Choices
 [X] Knot structure
 [X] Recurring choices
 [X] Conditionals in descriptions
 [X] Conditionals in choices
 
 In the assignment:
 - Add four more knots (and feel free to change any of the example text, this is YOUR story)
 - Add at least one more conditional
*/

-> Elevator

== Elevator ==
You have just stepped off the elevator to the lobby of the communications floor. A few seconds later, klaxons nearby sound an alarm for a moment, indicating the lockdown has restricted the elevator. {not Desk:The center help desk, while empty, still might have something that could point you to a functioning computer that could send a signal. }Aside from that, you can go down the East or West halls.
+[Take the East hall.] -> East_Hall
+[Take the West hall.] -> West_Hall
*[Inspect the desk.] -> Desk

== Desk ==
Upon inspecting the contents of the desk, you find a paper labeled "MAP". It seems that in the Northeast corner of the East hall, there is the computer setup you need. You stash the map in your pocket.
*[Return to the lobby.] -> Elevator
-> END

== East_Hall ==
You go down the East hall, filled with small office cubicles. Each one has a computer. Only a few have power. It would be terrible to inspect each cubicle for the computer you need...

+ {Desk} [Refer to the map.] -> East_Hall_Map
+ {Cafeteria} [Caffeine-fuelled search!] -> East_Hall_Coffee
+ [Return to the lobby.] -> Elevator
-> END

== West_Hall ==
You go down the West hall, leading to the cafeteria. No computers here.{not Cafeteria: Maybe something to drink?}
* [Look around for something to drink.] -> Cafeteria
* [Return to the lobby.] -> Elevator
-> END

== East_Hall_Map ==
Good thing you have that map. The computer you need is in the Northeast corner. You find it quickly.
-> Terminal

== East_Hall_Coffee ==
Who needs a directory when you have the energy to go through all the cubicles in a minute? Soon enough, you find the computer you need in the Northeast corner.
-> Terminal
== Cafeteria ==
After a minute of looking around the booths and tables of the cafeteria, you find a can of coffee. It's a new thing introduced to the menu. Since you're in a hurry, you drink the whole thing down quickly. You immediately feel energized.
+ [Return to the lobby.] ->Elevator

== Terminal ==
* [UNLFD4LIFE] -> UNLFD4LIFE
* [GGarnier1914] -> GGarnier1914
* [Hong_Kongian] -> Hong_Kongian
->END

== UNLFD4LIFE ==
The computer flashes "INCORRECT PASSWORD" for a few seconds before returning to the previous screen.
-> Terminal

== GGarnier1914 ==
The computer flashes "INCORRECT PASSWORD" for a few seconds before returning to the previous screen.
-> Terminal

== Hong_Kongian ==
The computer flashes "PASSWORD ACCEPTED" and brings up a new screen.
-> Option_menu

== Option_menu ==
There are multiple options, but you know the one you need right now.
+ [Click on "ACCESS FILES".] -> Files
+ [Click on "INTRAMAIL".] -> Intramail
+ [Click on "LOCKDOWN CONTROLS".] -> Lockdown
+ [Click on "BROADCAST DISTRESS SIGNAL".] -> Signal
->END

== Files ==
This option brings up a database of hundreds of Found Objects, personnel files, and more. However juicy all that knowledge may be, it's not important right now.
+ [Return to the menu.] -> Option_menu

== Intramail ==
This option brings up all the sent and inbound electronic messages for Dr. Liu, that scummy egghead. If you and him make it out of this alive, you could blackmail him with some of this...
+ [Return to the menu.] -> Option_menu

== Lockdown ==
This option brings up a screen saying "THIS TERMINAL DOES NOT HAVE CLEARANCE TO ACCESS THIS OPTION."
Damn.
+ [Return to the menu.] -> Option_menu

== Signal ==
This option brings up a screen with the warning: "ARE YOU SURE? THIS WILL RESULT IN FURTHER ACTION FROM UNLFD HIGHER UPS, AND CANNOT BE CANCELLED ONCE STARTED."
+ [YES_] -> Yes
+ [NO_] -> No
->END

== No ==
For some reason, you don't think you should activate the distress signal.
You hear shuffling behind you, and before you can even turn around, you're shot in the back of the head.
RIP
->END

== Yes ==
You click yes. The screen displays "SIGNAL BROADCASTING. PLEASE MAKE YOUR WAY TO ANY EMERGENCY SHELTER."
Suddenly, you're shot in the back by something. Your blood spatters over the computer screen as you tumble to the floor.
From your position, you can see your killer: A beige-colored, humanoid figure in a purple jumpsuit. It's armed with security-issue 9mm pistol. It has cameras for eyes, and moves like an animatronic from Disney Land.
Standing above you, it raises its pistol, aiming at your head. Closing your eyes, you die knowing you've saved someone else, at least.
RIP
->END