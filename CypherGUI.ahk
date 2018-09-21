#Persistent
#SingleInstance, force 
#NoTrayIcon

DetectHiddenWindows, On
WinClose, C:\Users\estone\AppData\Local\Programs\Python\Python37\python.exe ahk_class AutoHotkey
SetTitleMatchMode, 2

Gui, Show, h550 w600
Gui, Add, Edit, x10 y10 w580 r30 vCypherText
Gui, Add, Button, x95 y450 w200 h50 vCypher gCYPHER, Cypher!
Gui, Add, Button, x305 y450 w200 h50 vDeCypher gDECYPHER, DeCypher!

EnvGet, FileContents, INTERCOM 
GuiControl,, CypherText, %FileContents%


return 

CYPHER:
{
	/*
		Gui, Submit, NoHide 
	
	Run, C:\Users\estone\AppData\Local\Programs\Python\Python37\python CesarCy.py 
	sleep 1000
	FileRead, FileContents, InterCom.txt 
	GuiControl,, CypherText, %FileContents%
	FileDelete, %A_Workingdir%\InterCom.txt
	return 
	*/
	Gui, Submit, NoHide 
	;FileAppend, %CypherText%, InterCom.txt 
	EnvSet, INTERCOM, %CypherText%
	Run, C:\Users\estone\AppData\Local\Programs\Python\Python37\python CesarCy.py 
	ExitApp 

	;sleep 1000 ;python does stuff 
	


	;EnvGet, FileContents, INTERCOM 
	;GuiControl,, CypherText, %FileContents%
	;FileDelete, %A_Workingdir%\InterCom.txt
	return 
}

DECYPHER:
{
	Gui, Submit, NoHide 
	;FileAppend, %CypherText%, InterCom.txt 
	EnvSet, INTERCOM, %CypherText%
	Run, C:\Users\estone\AppData\Local\Programs\Python\Python37\python DeCy.py
	ExitApp 
	;sleep 1000
	;FileRead, FileContents, InterCom.txt 
	;EnvGet, FileContents, INTERCOM
	;GuiControl,, CypherText, %FileContents%
	;FileDelete, %A_WorkingDir%\InterCom.txt 
	return 
}

GuiClose:
ExitApp 