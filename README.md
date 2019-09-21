### Description

These are some very basic AutoHotKey scripts I wrote to make my life easier when commanding Dragonfall or The Silverwastes. I don't expect these to be useful to very many people but if you think you might want to use them I'm more than happy to take advice on improvements or commits from others.

I'm also working on some more for Auric Basin and other big meta maps. If you want to connect with me I'm always open to getting some feedback and working on making these better. I obviously love to farm gold and do metas, so hit me up in Discord (Ian#3843) and we can do them together!

## Instructions for use
- Set game to windowed mode
- Bind executable to mouse/keyboard key or add hotkey function to the script and start in while in game.
- The script will begin by simulating the `Return` key which will then expect you to type some key terms.
  - *Key terms are found below*
- When a key term is entered correctly the script will erase the text quickly and replace it with the full text prompt.
- Once the text has been entered, the script will end by simulating the `Return` again to put it into chat.
- All text goes to squad chat by default so even if you're whispering, talking with guild mates, or just not in squad chat - it will start by sending `/squad{Space}` to make sure it's selected.

#### Key Terms by Map

- **The Silverwastes**
  - **me** : Short description of who I am with a little hello at the beginning. Can be adapted for you of course.
  - **rcap** : [Recapturing] First rotation info. Use this when the reset phase is ending and it's time for the first time around.
  - **fh** : [Foothold Phase] After recapture is done. I usually use this just as Amber is recapped.
  - **g1/2/3** : General Info 1,2,3. Just general reminders about what to look for. Helpful in case of new people that may not be aware of what to remember as they follow.
  - **br** : [Breach Phase] Quick message about the basic setup for breach phase champs.
  - **vw** : [Vinewrath] Basic lane setup announcement. Could be expanded into lots more announcements about achivements for lanes and other stuff people may want to know.
  - **bmechs** : [Boss Mechanics] This key term contains a nested Input statement that will allow you to select which boss mechanic you want to put into chat. *See key terms below*
    - **bk** : [Bee Keeper] Bee Keeper mechanics. I like to use this just as lane opening announcement from the meta happens.
    - **mang** : [Mangler] Mordrem Mangler mechanics. Used at the same time as the lane opening announcement happens.
    - **dw** : [Dark Wing] Teragriff Darkwing mechanics. Same as the other two in regards to timing this chat message.
  - **ct** : Makes a squadbroadcast. Choo! Choo! Chest Train on me! Grab your keys and lets get these shinies!

- **Dragonfall**
- **brg** : Makes squad broadcast. Initial brige events that happen immediately after the map is reset.
- **esc1/2/3** : Escorts 1 (Mistwarden), 2 (Olmakhan), and 3 (Crystal Bloom).
  - I generally use `esc1` as soon I see the NPC get in position and the little dialogue marker appears. It shows the NPC moving on the map while this happens so it's easy to see.
  - `esc2` can be used around the time the champ is less than 10% health at the Mist Warden escort. Once the Crystal Bloom champ is about 10%  the `esc3` announcement can be used.
- **gcu** : General Camp Upgrade information. Puts out a notification that the phase has changed.
- **cu**: Camp Upgrades categorized by location. Similar to how `bmechs` works in *sw_aio*, after typing "cu" the program will remove the two letters and wait for more text. *See key terms below*
  - **mw** : Mist Warden Camp. Program will clear the chat again and wait for a prompt to specify which event is up. *See key terms below*
    - **t1** : Branded Disruption escort that happens at T1 just after the camp is established.
    - **men** : Mender escort.
    - **t2** : Melandru Tear collection meta event. Fills a good chunk of the bar so this is a high priority event.
    - **elecull** : Cull event that spawns next to the Champion Elemental.
      - There is usually a cull event right next to this one so when you go there go to the cull event first.
    - **t3** : Landing Zone event.
    - **brg** : Bridge event.

  - **olma** : Olmakhan Camp. Program will clear the chat again and wait for a prompt to specify which event is up. *See key terms below*
    - **men** : Mender Escort
    - **cull** : Cull Event
    - **t2** : Soulbinder collection event. Similar to collecting tears or embers.
    - **bullesc** : Bull escort of tears that goes from Mist Warden to Olmakhan.
    - **brg** : Brige event. The one that connects CB to Olmakhan.
    - **t1** : Branded Disruption escort that happens at T1 just after the camp is established.
    - **t3p1** : 
  - **cb** : Crystal Bloom camp. Program will clear the chat again and wait for a prompt to specify which event is up. *See key terms below*
    - **men** : Mender escort.
    - **t1** : Branded Disruption escort that happens at T1 just after the camp is established.
    - **emb** : Ember collection event.
    - **assem** : Destroying *Branded Assemblers* with embers gathered at camp.
    - **turr** : Destroying *Branded Turrets* with embers gathered at the camp and around the camp.
    - **bullesc** : Supply pack bull of Soulbinders that goes from CB to Olmakhan.
    - **champ** : Champion Abyssal.
    - **cull** : Cull event.
    - **brg** : Bridge event just South of the camp. This is important to finish because 2 other events depend on this bridge being up.

- **pre** : announcement to squad about changing phase of the meta into the pre-kralk phase. Can be modified for how you like to run your squad.

- **kralk** : Sends message to squad on what percentage to hold the bosses at.

- **bb** : Bonus boss round announcement. Very simple and short just to let people know to continue following for more loot.
