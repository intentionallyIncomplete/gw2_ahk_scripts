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
  Send squad{Space}
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
  ; Prep for text flow
  Send {Enter}
  leMssg := "The map has reset{!} Let's grab some bridges before escorts start up{!} Escorts start after bridges are complete (2 mins from now)"
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
  ; Send WP to chat [squad moving]
  SendRaw [&BN4LAAA=]
  Send {Enter}
  ; end - Prepare for next message
  SetupSquadChat(0)
  Sleep 2500
  leMssg := "Escort time{!} Please only escort the group on my tag{!} We escort these one at a time so we can get max loot."
  InsertText(leMssg)
  ExitApp
}

else if (UserInput = "esc2"){
  Send {Backspace 4}
  leBroadcast := "Beetle up again{!}"
  SquadBroadcast(leBroadcast)
  SetupSquadChat(0)
  Sleep 250
  SendRaw [&BN4LAAA=]
  Send {Enter}
  SetupSquadChat(0)
  leMssg := "Next escort is Crystal Bloom. Then we catch olma when CB camp is setup."
  InsertText(leMssg)
  ExitApp
}

else if (UserInput = "esc3"){
  Send {Backspace 4}
  leMssg := "Follow me to tag the olma escort. (Take bridge South of CB camp and follow path South East)"
  InsertText(leMssg)
  Sleep 3200
  SetupSquadChat(0)
  leMssg := "Next phase is camp upgrades."
  InsertText(leMssg)
  ExitApp
}

else if (UserInput = "gcu"){
  Send {Backspace 6}
  leBroadcast := "Camp Upgrade Events"
  SquadBroadcast(leBroadcast)
  Sleep 3200
  SetupSquadChat(0)
  leMssg := "Talk with scouts @ each camp to find events. Call out mender escorts when they are up."
  InsertText(leMssg)
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
      Input, EventTypeSel, V, {esc}, dis,men,cull,tears,champ,lz,brg
        ; Event Types
        if(EventTypeSel = "men"){
          SetupSquadChat(3)
          leMssg := "Mender escort"
          InsertText(leMssg)
          ExitApp
        }
        else if(EventTypeSel = "cull"){
          SetupSquadChat(4)
          leMssg := "Cull event"
          InsertText(leMssg)
          ExitApp
        }
        else if(EventTypeSel = "tears"){
          SetupSquadChat(5)
          leMssg := "Collect tears and turn into NPC @ camp"
          InsertText(leMssg)
          ExitApp
        }
        else if(EventTypeSel = "champ"){
          SetupSquadChat(5)
          leMssg := "Champ elemental"
          InsertText(leMssg)
          ExitApp
        }
        else if(EventTypeSel = "dis"){
          SetupSquadChat(3)
          leMssg := "Brandstorm cull escort starting on my tag"
          InsertText(leMssg)
          ExitApp
        }
        else if(EventTypeSel = "lz"){
          SetupSquadChat(2)
          leMssg := "Landing Zone event. Take chopper @ camp to get to the event zone quickly"
          InsertText(leMssg)
          ExitApp
        }
        else if(EventTypeSel = "brg"){
          SetupSquadChat(3)
          leMssg := "Bridge rebuilding event"
          InsertText(leMssg)
          ExitApp
        }
    }
    else if(CULoc = "olma"){
      SetupSquadChat(4)
      ; 3rd levl nested Input for selecting event type
      Input, EventTypeSel, V, {esc}, dis,men,cull,sb,bullesc,brg
        ; Event Types
        if(EventTypeSel = "men"){
          SetupSquadChat(3)
          leMssg := "Mender escort"
          InsertText(leMssg)
          ExitApp
        }
        else if(EventTypeSel = "cull"){
          SetupSquadChat(4)
          leMssg := "Cull event"
          InsertText(leMssg)
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
          leMssg := "Branded storm cull"
          InsertText(leMssg)
          ExitApp
        }
        else if(EventTypeSel = "brg"){
          SetupSquadChat(3)
          leMssg := "Bridge rebuilding event"
          InsertText(leMssg)
          ExitApp
        }
    }
    ; Crystal Bloom upgrades
    else if(CULoc = "cb"){
      SetupSquadChat(2)
      ; 3rd levl nested Input for selecting event type
      Input, EventTypeSel, V, {esc}, dis,men,cull,emb,assem,bullesc,brg
        ; Event Types
        if(EventTypeSel = "men"){
          SetupSquadChat(3)
          leMssg := "Mender escort"
          InsertText(leMssg)
          ExitApp
        }
        else if(EventTypeSel = "cull"){
          SetupSquadChat(4)
          leMssg := "Cull event"
          InsertText(leMssg)
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
          leMssg := "Branded storm cull and champ"
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
