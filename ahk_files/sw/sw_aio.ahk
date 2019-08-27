/*Allow only once instance, force reload if one already exists in memory*/
#SingleInstance Force
#NoEnv
/*
* Welcome to the Commanding Made Easy script guide
* These are a few scripts I put together to make my life easier.
* They are very basic and with just a bit of looking through the
* documentation can be edited by anyone.
*
* Author: Semita Ut Pacis
* Version: 8.25.2019
* Map: The Silverwastes
*/

/*
* Sends the enter key press event to active window.
* Helps with reducing hand movements.
*/
Send,{Enter}
/*AHK begins to listen for user input.*/
SendMode Input
/*
* Input [OutputVar, options, EndKey, Matchlist]
* Sets the value for each component of Input.
* Upon success the application will exit immediately.
* This is to prevent having multiple scripts running and is
* a failsafe to #SingleInstance.
*/
Input, UserInput, V, {esc}, me,rcap,fh,g1,g2,g3,br,vw,ct
/*
* Series of if and if-else statements that execute
* the commands for each corresponding keyword.
*/
if (UserInput = "me"){
  Send,{Backspace 2}
  Sleep, 50
  SetKeyDelay, 50
  Send,{/}squad{Space}
  SetKeyDelay, 0
  Send,Hello. I am Semita. I enjoy this map a lot so I'm here a lot. If you're new hang with me, if you're a veteran you know what to do. Let's get this gold, yo.
  Send,{Enter}
}
else if (UserInput = "rcap"){
  Send,{Backspace 4}
  Sleep, 50
  SetKeyDelay, 50
  Send,{/}squad{Space}
  SetKeyDelay, 0
  Send,Let's do the RIBA dance. Check around the walls and corners for tendrils. Stack on me for first time around.
  Send, {Enter}
}
else if (UserInput = "fh"){
  Send,{Backspace 2}
  Sleep, 50
  SetKeyDelay, 50
  Send,{/}squad{Space}
  SetKeyDelay, 0
  Send,[Foothold Phase]: Defend forts. Check everywhere for mordrem. Keep NPC's inside/outside camps alive. When we have 4{/}4 defenses, call/look for legendaries.
  Send,{Enter}
}
else if(UserInput = "g1"){
  Send,{Backspace 2}
  Sleep, 50
  SetKeyDelay, 50
  Send,{/}squad{Space}
  SetKeyDelay, 0
  Send,[info]: Let's keep the pack bulls alive and healthy. They get stopped 3 times per route. Call out legendaries when you see them (skip bloodstone craze). Bandit chests will be marked as I see them.
  Send,{Enter}
}
else if(UserInput = "g2"){
  Send,{Backspace 2}
  Sleep, 50
  SetKeyDelay, 50
  Send,{/}squad{Space}
  SetKeyDelay, 0
  Send,[info]: Protect the NPC's with the shields on their heads. They will wander to their downed allies. Check walls for tendrils and mordrem that have gone off course.
  Send,{Enter}
}
else if(UserInput = "g3"){
  Send,{Backspace 2}
  Sleep, 50
  SetKeyDelay, 50
  Send,{/}squad{Space}
  SetKeyDelay, 0
  Send,[info]: Kill vinewraths, smashers, and slingers to keep camps from getting invaded too quickly. Check the East door {@} Blue for large mobs.
  Send,{Enter}
}
else if(UserInput = "br"){
  Send,{Backspace 2}
  Sleep, 50
  SetKeyDelay, 50
  Send,{/}squad{Space}
  SetKeyDelay, 0
  Send,[Breach Phase]: Red - Condi DPS | Indigo - Ranged/Distance | Blue - Reflects/Dodges | Amber - Raw DPS | Spread out or else the bosses will scale and this will take longer. :)
  Send,{Enter}
}
else if(UserInput = "vw"){
  Send,{Backspace 2}
  Sleep, 50
  SetKeyDelay, 50
  Send,{/}squad{Space}
  SetKeyDelay, 0
  Send,[Vinewrath Phase]: Bottom Lane - 10 DPS | Middle Lane - Reflects/Dodges | Top Lane - 12-15 Rangers. Keep Siege Carriers alive.
  Send,{Enter}
}
else if(UserInput = "ct"){
  Send,{Backspace 2}
  SetKeyDelay, 25
  Send,{Enter}
  Sleep, 50
  Send,{RShift Down}{Enter}{RShift Up}
  Sleep, 50
  SetKeyDelay, 0
  Send,Choo Choo{!} All aboard the Chest Train!
  Send,{Enter}
}
ExitApp
