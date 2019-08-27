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
Input, UserInput, V, {esc}, brg,esc1,esc2,esc3,mw,omal,cb,pre,kralk,bb
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
  Send,{Backspace 4}
  SetKeyDelay, 25
  ;Exit chat
  Send,{Enter}

  SendRaw,[&BN4LAAA=]
  Send,{Enter}
  ;Full second delay. Feels less rushed.
  Sleep, 1000
  SetKeyDelay, 0
  Send,{Enter}
  Send,Escort time{!} Please only escort the group on my tag{!} We escort these one at a time so we can get the loot for all three escorts{!}
  Send,{Enter}
  Send,{Enter}
  Send,We start with Mist Warden.
  send,{Enter}
}
else if (UserInput = "esc2"){
  Send,{Backspace 4}
  Send,{Enter}
	Sleep, 50
  SetKeyDelay, 25
  Send,{RShift Down}{Enter}{RShift Up}
  Sleep, 50
  Send,Beetle up again{!}
  Send,{Enter}
  Sleep, 1000
  SetKeyDelay, 50
  Send,{/}squad{Space}
  SendRaw,[&BN4LAAA=]
  Send,{Enter}
  Sleep, 1000
  Send,{Enter}
  SetKeyDelay, 0
  Send,Next escort is Crystal Bloom. Then we catch Omal when champ is dead.
	Send,{Enter}
}
else if (UserInput = "esc3"){
  Send,{Backspace 4}
  SetKeyDelay, 50
  Send,{Enter}
  Send,{/}squad{Space}
  SetKeyDelay, 0
  Send,Follow me to tag the Omal escort.
  Send,{Enter}
  Send,Next phase is camp upgrades.
	Send,{Enter}
}
ExitApp
