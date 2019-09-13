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


; Make sure caps lock is off and force the setting to off in case it is.
SetCapsLockState AlwaysOff
;AHK begins to listen for user input.
Send {Enter}
SendMode Input
/*
Input [OutputVar, options, EndKey, Matchlist]
Sets the value for each component of Input.
Upon success the application will exit immediately.
This is to prevent having multiple scripts running and
is a failsafe to #SingleInstance.
*/
Input, UserInput, V, {esc}, brg,esc1,esc2,esc3,gcu,cu,pre,kralk,bb

CharsToRemove := ""
; Sets up the chat box for a squad message
SetupSquadChat(CharsToRemove){
  Send {Backspace %CharsToRemove%}
  Sleep 500
  SetKeyDelay 250
  Send {/}
  Sleep 500
  Send d{Space}
  SetKeyDelay 0
}

SquadBroadcast(BC2Squad){
  ; Close chat, prepare for keypress
  Send {Enter}
  Sleep 500
  SetKeyDelay 250
  Send {RShift Down}{Enter}{RShift Up}
  Sleep 500
  InsertText(BC2Squad)
}

InsertText(copyPasta){
  Send %copyPasta%{Enter}
}

/*
Series of if and if-else statements that execute
the commands for each corresponding keyword.
*/

if (UserInput = "brg"){
  Send {Backspace 3}
  ; broadcast
  leBroadcast := "Beetle Up!"
  SquadBroadcast(leBroadcast)
  ; end Broadcast
  Send {Enter}
  leMssg := "The map has reset{!} Let's grab some bridges{!} (Escorts spawn 2 minutes from right now)"
  SetupSquadChat(0)
  InsertText(leMssg)
  ExitApp
}

else if (UserInput = "esc1"){
  Send {Backspace 4}
  ; Exit chat
  leBroadcast := "Mist Warden escort starting."
  SquadBroadcast(leBroadcast)
  ; end broadcast
  SetupSquadChat(0)
  ; Send WP to chat [squad moving].
  SendInput [&BN4LAAA=] Escort time! Please only escort the group on my tag! We escort these one at a time so we can maximize the loot.`r
  ExitApp
}

else if (UserInput = "esc2"){
  Send {Backspace 4}
  leBroadcast := "Beetle up again{!}"
  SquadBroadcast(leBroadcast)
  SetupSquadChat(0)
  Sleep 250
  SendInput {Raw}[&BN4LAAA=] Next escort is Crystal Bloom. Then we catch Olmakhan's escort when Crystal Bloom Camp is setup.`r
  ExitApp
}

else if (UserInput = "esc3"){
  Send {Backspace 4}
  SetupSquadChat(0)
  leMssg := "Follow me to tag the Olmakhan escort. Take bridge South of Crystal Bloom camp and follow path South East"
  InsertText(leMssg)
  Sleep 1600
  leBroadcast := "(Upcoming Phase) - Camp Upgrades"
  Send {Enter} ; Quick fix to deselect chat box during broadcast function.
  SquadBroadcast(leBroadcast)
  ExitApp
}

else if (UserInput = "gcu"){
  Send {Backspace 6}
  leBroadcast := "Camp Upgrade Events"
  SquadBroadcast(leBroadcast)
  Sleep 1600
  SetupSquadChat(0)
  SendInput Meet me at [&BNILAAA=] for upgrade events. Once camp upgrade timer begins to count down we move to the next one. Sound good?`r
  ExitApp
}

; Begin camp selection
else if (UserInput = "cu"){
  SetupSquadChat(2)
  ; Begin new Input Section (Nested[2nd lvl])
  Input, CULoc, V, {esc}, mw,olma,cb
    if (CULoc = "mw"){
      SetupSquadChat(2)
      ; 3rd levl nested Input for selecting event type
      Input, EventTypeSel, V, {esc}, dis,men,cull,tears,elecull,lz,brg
        ; Events
        if(EventTypeSel = "men"){
          SetupSquadChat(3)
          SendInput [&BNILAAA=] Mender escort on me.`r
          ExitApp
        }
        else if(EventTypeSel = "cull"){
          SetupSquadChat(4)
          SendInput Cull event - South of [&BM0LAAA=]`r
          ExitApp
        }
        else if(EventTypeSel = "tears"){
          SetupSquadChat(5)
          Send Input Collect [&AgHzYgEA] around Mist Warden camp and give to NPC. Locations are marked as I find them.`r
          ExitApp
        }
        else if(EventTypeSel = "elecull"){
          SetupSquadChat(5)
          SendInput Cull near Champion Elemental [&BN4LAAA=]. Go South from waypoint and go towards Champion Elemental`r
          ExitApp
        }
        else if(EventTypeSel = "dis"){
          SetupSquadChat(3)
          leMssg := "Branded Disruption escort on my tag."
          InsertText(leMssg)
          ExitApp
        }
        else if(EventTypeSel = "lz"){
          SetupSquadChat(2)
          leMssg := "Landing Zone event. Take chopper @ camp to get to the event zone quickly"
          ExitApp
        }
        else if(EventTypeSel = "brg"){
          SetupSquadChat(3)
          SendInput [&BN4LAAA=] Beetle up and head South for bridge event`r
          ExitApp
        }
    }
    else if(CULoc = "olma"){
      SetupSquadChat(4)
      ; 3rd levl nested Input for selecting event type
      Input, EventTypeSel, V, {esc}, t1,t2,t3,men,cullnw,culls,culle,sb,bullesc,brg
        ; Event Types
        if(EventTypeSel = "men"){
          SetupSquadChat(3)
          SendInput [&BNELAAA=] Mender escort on me`r
          ExitApp
        }
        else if(EventTypeSel = "cullnw"){
          SetupSquadChat(4)
          SendInput [&BN0LAAA=] Cull event here.`r
          ExitApp
        }
        else if(EventTypeSel = "culle"){
          SetupSquadChat(4)
          SendInput [&BM4LAAA=] Cull event South of this POI.`r
          ExitApp
        }
        else if(EventTypeSel = "culls"){
          SetupSquadChat(4)
          SendInput [&BM8LAAA=] Cull event here.`r
          ExitApp
        }
        else if(EventTypeSel = "sb"){
          SetupSquadChat(2)
          leMssg := "Collect soulbinders and turn into NPC @ camp"
          InsertText(leMssg)
          ExitApp
        }
        else if(EventTypeSel = "bullesc"){
          SetupSquadChat(7)
          leMssg := "Ember supply bull escort"
          InsertText(leMssg)
          ExitApp
        }
        else if(EventTypeSel = "bc"){
          SetupSquadChat(2)
          SendInput [&BN8LAAA=] Branded storm cull. Bunny up rocks @ Olmakhan camp behind waypoint.`r
          ExitApp
        }
        else if(EventTypeSel = "brg"){
          SetupSquadChat(3)
          SendInput [&BOILAAA=] Bridge event here is now up.`r
          ExitApp
        }
        else if(EventTypeSel = "t1"){
          SetupSquadChat(3)
          leMssg := "Brandstorm Disruption escort on my tag"
          InsertText(leMssg)
          ExitApp
        }
        else if(EventTypeSel = "t2"){
          SetupSquadChat(4)

        }
    }
    ; Crystal Bloom upgrades
    else if(CULoc = "cb"){
      SetupSquadChat(2)
      ; 3rd levl nested Input for selecting event type
      Input, EventTypeSel, V, {esc}, dis,men,culle,culls,cullnw,emb,assem,bullesc,brg
        ; Event Types
        if(EventTypeSel = "men"){
          SetupSquadChat(3)
          SendInput [&BOYLAAA=] Mender escort on me.`r
          ExitApp
        }
        else if(EventTypeSel = "culle"){
          SetupSquadChat(4)
          SendInput [&BOELAAA=] Cull event here.`r
          ExitApp
        }
        else if(EventTypeSel = "culls"){
          SetupSquadChat(4)
          SendInput [&BNoLAAA=] Cull event directly East.`r
          ExitApp
        }
        else if(EventTypeSel = "cullnw"){
          SetupSquadChat(4)
          SendInput [&BNoLAAA=] Cull event directly North.`r
          ExitApp
        }
        else if(EventTypeSel = "emb"){
          SetupSquadChat(3)
          leMssg := "Look for embers and gather them. Turn into NPC @ camp"
          InsertText(leMssg)
          ExitApp
        }
        else if(EventTypeSel = "assem"){
          SetupSquadChat(5)
          leMssg := "Grab embers @ camp. Throw @ Cystal Assemblers.They look like large Branded rocks"
          InsertText(leMssg)
          ExitApp
        }
        else if(EventTypeSel = "turr"){
          SetupSquadChat(4)
          leMssg := "Grab embers @ camp. Throw @ Branded Turrets. They are the tall, purple rocks"
          InsertText(leMssg)
          ExitApp
        }
        else if(EventTypeSel = "brg"){
          SetupSquadChat(3)
          leMssg := "Bridge rebuilding event"
          InsertText(leMssg)
          ExitApp
        }
        else if(EventTypeSel = "dis"){
          SetupSquadChat(3)
          leMssg := "Brandstorm Disruption escort on my tag"
          InsertText(leMssg)
          ExitApp
        }
        else if(EventTypeSel = "champ"){
          SetupSquadChat(5)
          leMssg := "Champ abyssal"
          InsertText(leMssg)
          ExitApp
        }
        else if(EventTypeSel = "bullesc"){
          SetupSquadChat(7)
          leMssg := "Soulbinder supply bull escort"
          InsertText(leMssg)
          ExitApp
        }
    }
}

else if (UserInput = "pre"){
  SetupSquadChat(3)
  leMssg := "Kralk pre events are starting. If one finishes before the other go bring the calvary. The faster we progress, the more loot we can get in the long run :) Let's get rich{!}"
  InsertText(leMssg)
  ExitApp
}

else if (UserInput = "kralk"){
  SetupSquadChat(5)
  leBroadcast := "Remember, all the bosses must be killed together like Octovine{!} Hold at 25% and wait for my call to burn{!}"
  SquadBroadcast(leBroadcast)
  ExitApp
}

else if (UserInput = "bb"){
  SetupSquadChat(2)
  leBroadcast := "Aayyyee {;})"
  SquadBroadcast(leBroadcast)
  SetupSquadChat(0)
  leMssg := "Loot your boxes and follow tag for bonus bosses{!} Big DEEPS so we can kill all the bosses{!}"
  InsertText(leMssg)
  ExitApp
}
