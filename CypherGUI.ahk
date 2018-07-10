#Persistent
#Include C:\Users\estone\Desktop\Evan's AHK\Libraries\GUILibrary.ahk 
#SingleInstance, force 

DetectHiddenWindows, On
SetTitleMatchMode, 2

Gui, Show, h550 w600
Gui, Add, Edit, x10 y10 w580 r30 vCypherText
Gui, Add, Button, x95 y450 w200 h50 vCypher gCYPHER, Cypher!
Gui, Add, Button, x305 y450 w200 h50 vDeCypher gDECYPHER, DeCypher!
return 

CYPHER:
{
	Gui, Submit, NoHide 
	FileAppend, %CypherText%, InterCom.txt 
	Run, C:\Users\estone\Desktop\PythonStuff\Python3\python CesarCy.py
	sleep 1000
	FileRead, FileContents, InterCom.txt 
	GuiControl,, CypherText, %FileContents%
	FileDelete, %A_Workingdir%\InterCom.txt
	return 
}

DECYPHER:
{
	Gui, Submit, NoHide 
	FileAppend, %CypherText%, InterCom.txt 
	Run, C:\Users\estone\Desktop\PythonStuff\Python3\python DeCy.py
	sleep 1000
	FileRead, FileContents, InterCom.txt 
	GuiControl,, CypherText, %FileContents%
	FileDelete, %A_WorkingDir%\InterCom.txt 
	return 
}

GuiClose:
ExitApp 