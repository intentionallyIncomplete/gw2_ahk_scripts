;Allow only once instance, force reload if one already exists in memory
#SingleInstance force
#NoEnv
/*
Welcome to the Commanding Made Easy script guide.
These are a few scripts I put together to make my life easier.
They are very basic and with just a bit of looking through the
documentation can be edited by anyone.

Author: Semita Ut Pacis
Version: 8.25.2019
Map: Dragonfall
*/

/*
Sends the enter key press event to active window.
Helps with reducing hand movements.
*/

;AHK begins to listen for user input.
Send,{Enter}
SendMode Input
/*
Input [OutputVar, options, EndKey, Matchlist]
Sets the value for each component of Input.
Upon success the application will exit immediately.
This is to prevent having multiple scripts running and
is a failsafe to #SingleInstance.
*/
Input, UserInput, V, {esc}, brg,esc1,esc2,esc3,cu,pre,kralk,bb
/*
Series of if and if-else statements that execute
the commands for each corresponding keyword.
*/

SquadBroadcast(){
  Send {Enter}
  Sleep 50
  SetKeyDelay 25
  Send {RShift Down}{Enter}{RShift Up}
  Sleep 50
}

MssgToSquadChat(){
  SetKeyDelay 1000
  Send {/}
  Sleep 1000
  Send squad{Space}
  SetKeyDelay 0
}

if (UserInput = "brg"){
  ;remove keyword from chat box
  Send {Backspace 3}
  ;close chat
  SquadBroadcast()
  Send Beetle up{!}{Enter}
  ;end Broadcast
  MssgToSquadChat()
  Send The map has reset{!} Beetle up and let's grab some bridges before escorts start up{!}{Enter}
  Sleep 2000
  Send {Enter}
  Sleep 500
  Send Escorts start in 2 minutes.{Enter}
  ExitApp
}

else if (UserInput = "esc1"){
  Send {Backspace 4}
  ; Exit chat
  SquadBroadcast()
  Send Mist Warden escort starting.{Enter}
  MssgToSquadChat()
  SendRaw [&BN4LAAA=]
  Send {Enter}
  MssgToSquadChat()
  Send Escort time{!} Please only escort the group on my tag{!} We escort these one at a time so we can get the loot for all three escorts{!}{Enter}
  ExitApp
}
else if (UserInput = "esc2"){
  Send {Backspace 4}
  SquadBroadcast()
  Send Beetle up again{!}{Enter}
  MssgToSquadChat()
  SendRaw,[&BN4LAAA=]
  Send {Enter}
  MssgToSquadChat()
  Send Next escort is Crystal Bloom. Then we catch Omal when champ is dead.{Enter}
  ExitApp
}
else if (UserInput = "esc3"){
  Send,{Backspace 4}
  MssgToSquadChat()
  Send Follow me to tag the Omal escort.{Enter}
  MssgToSquadChat()
  Send Next phase is camp upgrades.{Enter}
}
else if(UserInput = "cu"){
  Send {Backspace 2}
  SquadBroadcast()
  Send Camp Upgrade Events{Enter}
  Sleep 1000
  MssgToSquadChat()
  Send Talk with scouts {@} each camp to find events. Call out mender escorts when they are up.{Enter}
  Send {Enter}
  Input, CULoc, V, {esc}, mw,omal,cb
  if (CULoc = "mw"){
    Send {Backspace 2}
    
  }
}
ExitApp
