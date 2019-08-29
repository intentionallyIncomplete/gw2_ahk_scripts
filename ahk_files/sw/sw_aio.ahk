;Allow only once instance, force reload if one already exists in memory
#SingleInstance Force
#NoEnv
/*
; Welcome to the Commanding Made Easy script guide
; These are a few scripts I put together to make my life easier.
; They are very basic and with just a bit of looking through the
; documentation can be edited by anyone.
;
; Author: Semita Ut Pacis
; Version: 8.25.2019
; Map: The Silverwastes
*/

/*
; Sends the enter key press event to active window.
; Helps with reducing hand movements.
*/
Send,{Enter}

;AHK begins to listen for user input.
SendMode Input
/*
; Input [OutputVar, options, EndKey, Matchlist]
; Sets the value for each component of Input.
; Upon success the application will exit immediately.
; This is to prevent having multiple scripts running and is
; a failsafe to #SingleInstance.
*/
Input, UserInput, V, {esc}, me,rcap,fh,g1,g2,g3,br,vw,ct

/*
; Some variables to help with modulating this script
*/
CharsToRemove := 0
copyPasta := ""
/*
; Functions for redundant tasks
*/
SetupSquadChat(CharsToRemove){
  Send {Backspace %CharsToRemove%}
  Sleep 50
  SetKeyDelay 50
  Send {/}squad{Space}
  SetKeyDelay 0
}

MssgToSquadChat(copyPasta){
  MsgBox % copyPasta
  Send %copyPasta%
  Send {Enter}
}
/*
; Series of if and if-else statements that execute
; the commands for each corresponding keyword.
*/
; Humble description about your fearless commander against the forces of bad stuff
if (UserInput = "me"){
  SetupSquadChat(2)
  leMssg := "Hello. I am Semita. I enjoy this map a lot so I'm here a lot. If you're new hang with me, if you're a veteran you know what to do. Let's get this gold, yo."
  MssgToSquadChat(leMssg)
  ExitApp
}
; First rotation around. Getting things organized and regroup.
else if (UserInput = "rcap"){
  SetupSquadChat(4)
  leMssg := "Let's do the RIBA dance. Check around the walls and corners for tendrils. Stack on me for first time around."
  MssgToSquadChat(leMssg)
  ExitApp
}
; Foothold phase. Use when finishing off Amber on first rotation
else if (UserInput = "fh"){
  SetupSquadChat(2)
  leMssg := "[Foothold Phase]: Defend forts. Check everywhere for mordrem. Keep NPC's inside/outside camps alive. When we have 4{/}4 defenses, call/look for legendaries."
  MssgToSquadChat(leMssg)
  ExitApp
}
; General info about bulls, legs, and bandit chests.
else if(UserInput = "g1"){
  SetupSquadChat(2)
  leMssg := "[info]: Let's keep the pack bulls alive and healthy. They get stopped 3 times per route. Call out legendaries when you see them (skip bloodstone craze). Bandit chests will be marked as I see them."
  MssgToSquadChat(leMssg)
  ExitApp
}
; General info about NPC's with shields over heads', checking/clearing for mordrem at each camp.
else if(UserInput = "g2"){
  SetupSquadChat(2)
  leMssg := "[info]: Protect the NPC's with the shields on their heads. They will wander to their downed allies. Check walls for tendrils and mordrem that have gone off course."
  MssgToSquadChat(leMssg)
  ExitApp
}
; General info about killing order of Mordrem at camps and keeping Blue up.
else if(UserInput = "g3"){
  SetupSquadChat(2)
  leMssg := "[info]: Kill vinewraths, smashers, and slingers to keep camps from getting invaded too quickly. Check the East door @ Blue for large mobs."
  MssgToSquadChat(leMssg)
  ExitApp
}
; Breach phase info. Use @ :10s mark on Amber countdown during FH phase.
else if(UserInput = "br"){
  SetupSquadChat(2)
  leMssg := "[Breach Phase]: Red - Condi DPS | Indigo - Ranged/Distance | Blue - Reflects/Dodges | Amber - Raw DPS | Spread out or else the bosses will scale and this will take longer. :)"
  MssgToSquadChat(leMssg)
  ExitApp
}
; Vinewrath info for lanes. Makes squad broadcast.
else if(UserInput = "vw"){
  SetupSquadChat(2)
  leMssg := "[Vinewrath Phase]: Bottom Lane - 10 DPS | Middle Lane - Reflects/Dodges | Top Lane - 12-15 Rangers. Keep Siege Carriers alive."
  MssgToSquadChat(leMssg)
  Send {RShift Down}{Enter}{RShift Up}
  Sleep 50
  SetKeyDelay 0
  Send 3 people on ammo at all times | Protect siege carrier{Enter}
  ExitApp
}
; Nested input for boss mechanics during lane fights.
else if(UserInput = "bmech"){
  Input, BMechSelection, V, {esc}, bk,mang,dw
  if (BMechSelection = "bk"){
    SetupSquadChat(2)
    leMssg := "[South Lane][Bee Keeper] - stand near bee swarms to attract them then walk towards the honeycomb to build them. When Troll goes to front, stand in white square behind the Honeycomb."
    MssgToSquadChat(leMssg)
    ExitApp
  }
  else if(BMechSelection = "mang"){
    SetupSquadChat(4)
    leMssg := "[Mid Lane][Mangler] - Thrasher. Use reflects when it spins, kill pustules to reduce damage from poison floor. When it moves to the front, stand in white cone."
    MssgToSquadChat(leMssg)
    ExitApp
  }
  else if(BMechSelection = "dw"){
    SetupSquadChat(2)
    leMssg := "[North Lane][Darkwing] - Teragriff. Kill Triggerblossoms and stand on flowers when they open up. When boss goes to front, stand on flowers to avoid lava floor."
    MssgToSquadChat(leMssg)
    ExitApp
  }
}
else if(UserInput = "ct"){
  Send {Backspace 2}
  SetKeyDelay, 25
  Send {Enter}
  Sleep 50
  Send {RShift Down}{Enter}{RShift Up}
  Sleep 50
  SetKeyDelay 0
  Send Choo Choo{!} All aboard the Chest Train!
  Send {Enter}
  SetupSquadChat(0)
  SendRaw [&AgFiIgAA]
  leMssg := "Chest train starts now. I mark them as I see them. If you have shovels, I appreciate diggers. Move to Red @ 1min for new rotation. All markers removed once rotation starts."
  MssgToSquadChat(leMssg)
  ExitApp
}
ExitApp
