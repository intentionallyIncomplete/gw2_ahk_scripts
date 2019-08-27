#SingleInstance
#NoEnv
SendMode Input

/*[How-To]
To use: The trigger key is F1, when you press it AHK will start parsing what you type. 
Press enter in-game and type whatever keyword, the script will then replace it with the appropriate text. 
You can change the keywords to something shorter if you want, but try not to mess with the actual script unless you know what you're doing or youll break it.
The ESC key is your cancel key.
*/

F1::
Input, UserInput, L10 T25 V, {esc}, bridges,escort,camps,split,pre,kralk,mini,bonus
if (ErrorLevel = "Max")
{	
	MsgBox, You have entered a variable the exceeds the maximum length of text and does not match anything on the list of triggers thus terminating the input.
	return
}
if (ErrorLevel = "Timeout")
{
	MsgBox, You have entered %UserInput%, at which point the input timed out.
	return
}
if (ErrorLevel = "NewInput")
	return
If InStr(ErrorLevel, "EndKey:")
{
	MsgBox, You entered "%UserInput%" and terminated the input with %ErrorLevel%.
	return
}


if (UserInput = "bridges")
{
	Send, {backspace 7}
	Sleep, 50
	SEND, The map has reset{!} Beetle up and let's grab some bridges before escorts start up{!}
	Sleep, 50
	SEND, {enter}
}

else if (UserInput = "escort")
{
	Send, {backspace 6}
	Sleep, 50
	SEND, Escort time{!} Please only escort the group on my tag{!} We escort these one at a time so we can get the loot for all three escorts{!}
	Sleep, 50 
	SEND, {enter}
}

else if (UserInput = "camps")
{
	Send, {backspace 5}
	Sleep, 50
	SEND, It's upgrading time{!} We'll be jumping around to all the different camps doing events to push the meta forward. If you see a Mender escort up, please call it out{!}
	Sleep, 50 
	SEND, {enter}
}

else if (UserInput = "split")
{
	Send, {backspace 5}
	Sleep, 50
	SEND, Time to split{!} Check your subgroup{!} 1=Mist Warden 2=Olmakhan 3=Crystal Bloom{!} Go to your respective camps please{!}
	Sleep, 50 
	SEND, {enter}
}

else if (UserInput = "pre")
{
	Send, {backspace 4}
	Sleep, 50
	SEND, Pre time{!} Split your sub between the two escorts. If one finishes before the other, go help the other out. Then do both disruptors together, at the same time{!}
	Sleep, 50 
	SEND, {enter}
}

else if (UserInput = "kralk")
{
	Send, {backspace 5}
	Sleep, 50
	SEND, Good job on Pre's{!} Time for Kralk now. Make sure to grab spears. Stay with your subgroup and focus on your weak spots. 
	Sleep, 50 
	SEND, {enter}
}

else if (UserInput = "mini")
{
	Send, {backspace 6}
	Sleep, 50
	SEND, Remember, the bosses must be killed together like octovine{!} Hold at 20`% and wait for my call to burn{!}
	Sleep, 50 
	SEND, {enter}
}

else if (UserInput = "bonus")
{
	Send, {backspace 5}
	Sleep, 50
	SEND, Nice job all{!} Loot your boxes and follow tag for bonus bosses{!} Big DEEPS so we can kill all the bosses{!}
	SEND, {enter}
	Sleep, 50
}

Return