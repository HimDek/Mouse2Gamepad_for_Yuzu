#NoEnv
SendMode Input
SetWorkingDir %A_ScriptDir%
#SingleInstance Force
#Include CvJI/CvJoyInterface.ahk
#Include CvJI/CvGenInterface.ahk   ; A Modifed Interface that CemuUser8 added the Virtual XBox Gamepad and its functions to.
#Include CvJI/MouseDelta.ahk       ; Alternate way to see mouse movement
#Include CvJI/SelfDeletingTimer.ahk

xMidScrn :=  A_ScreenWidth //2
yMidScrn :=  A_ScreenHeight //2

drop=%1%
If (drop=="")
{
Process, Exist, yuzu.exe
If (ErrorLevel==0)
  {
   goto cont
  }
pur:="Not updated yuzu controller settings because yuzu is already running. "
goto keep
}
Else
{
 pur:="Ready! "
 Run, %1%
 goto keep
}

cont:
pur:="Updated yuzu controller settings. "
keep:
IniWrite,false,%A_AppData%\yuzu\config\qt-config.ini,Controls,player_0_connected\default
IniWrite,false,%A_AppData%\yuzu\config\qt-config.ini,Controls,player_0_button_a\default
IniWrite,false,%A_AppData%\yuzu\config\qt-config.ini,Controls,player_0_button_b\default
IniWrite,false,%A_AppData%\yuzu\config\qt-config.ini,Controls,player_0_button_x\default
IniWrite,false,%A_AppData%\yuzu\config\qt-config.ini,Controls,player_0_button_y\default
IniWrite,false,%A_AppData%\yuzu\config\qt-config.ini,Controls,player_0_button_lstick\default
IniWrite,false,%A_AppData%\yuzu\config\qt-config.ini,Controls,player_0_button_rstick\default
IniWrite,false,%A_AppData%\yuzu\config\qt-config.ini,Controls,player_0_button_l\default
IniWrite,false,%A_AppData%\yuzu\config\qt-config.ini,Controls,player_0_button_r\default
IniWrite,false,%A_AppData%\yuzu\config\qt-config.ini,Controls,player_0_button_zl\default
IniWrite,false,%A_AppData%\yuzu\config\qt-config.ini,Controls,player_0_button_zr\default
IniWrite,false,%A_AppData%\yuzu\config\qt-config.ini,Controls,player_0_button_plus\default
IniWrite,false,%A_AppData%\yuzu\config\qt-config.ini,Controls,player_0_button_minus\default
IniWrite,false,%A_AppData%\yuzu\config\qt-config.ini,Controls,player_0_button_dleft\default
IniWrite,false,%A_AppData%\yuzu\config\qt-config.ini,Controls,player_0_button_dup\default
IniWrite,false,%A_AppData%\yuzu\config\qt-config.ini,Controls,player_0_button_dright\default
IniWrite,false,%A_AppData%\yuzu\config\qt-config.ini,Controls,player_0_button_ddown\default
IniWrite,false,%A_AppData%\yuzu\config\qt-config.ini,Controls,player_0_button_screenshot\default
IniWrite,false,%A_AppData%\yuzu\config\qt-config.ini,Controls,player_0_lstick\default
IniWrite,false,%A_AppData%\yuzu\config\qt-config.ini,Controls,player_0_rstick\default
IniWrite,true,%A_AppData%\yuzu\config\qt-config.ini,Controls,player_0_connected

a="engine:sdl,port:0,guid:030000005e0400008e02000000007801,button:0"
b="engine:sdl,port:0,guid:030000005e0400008e02000000007801,button:1"
x="engine:sdl,port:0,guid:030000005e0400008e02000000007801,button:2"
y="engine:sdl,port:0,guid:030000005e0400008e02000000007801,button:3"
lc="engine:sdl,port:0,guid:030000005e0400008e02000000007801,button:8"
rc="engine:sdl,port:0,guid:030000005e0400008e02000000007801,button:9"
l="engine:sdl,port:0,guid:030000005e0400008e02000000007801,button:4"
r="engine:sdl,port:0,guid:030000005e0400008e02000000007801,button:5"
zl="engine:sdl,port:0,axis:2,guid:030000005e0400008e02000000007801,direction:+,threshold:0.2"
zr="engine:sdl,port:0,axis:5,guid:030000005e0400008e02000000007801,direction:+,threshold:0.2"
pl="engine:sdl,port:0,guid:030000005e0400008e02000000007801,button:7"
mn="engine:sdl,port:0,guid:030000005e0400008e02000000007801,button:6"
dl="engine:sdl,port:0,guid:030000005e0400008e02000000007801,hat:0,direction:left"
du="engine:sdl,port:0,guid:030000005e0400008e02000000007801,hat:0,direction:up"
dr="engine:sdl,port:0,guid:030000005e0400008e02000000007801,hat:0,direction:right"
dd="engine:sdl,port:0,guid:030000005e0400008e02000000007801,hat:0,direction:down"
sc="engine:keyboard,code:80"
ls="engine:sdl,axis_x:0,port:0,guid:030000005e0400008e02000000007801,axis_y:1,deadzone:0.500000,range:1.000000"
rs="engine:sdl,axis_x:3,port:0,guid:030000005e0400008e02000000007801,axis_y:4,deadzone:0.500000,range:1.000000"

IniWrite,%a%,%A_AppData%\yuzu\config\qt-config.ini,Controls,player_0_button_a
IniWrite,%b%,%A_AppData%\yuzu\config\qt-config.ini,Controls,player_0_button_b
IniWrite,%x%,%A_AppData%\yuzu\config\qt-config.ini,Controls,player_0_button_x
IniWrite,%y%,%A_AppData%\yuzu\config\qt-config.ini,Controls,player_0_button_y
IniWrite,%lc%,%A_AppData%\yuzu\config\qt-config.ini,Controls,player_0_button_lstick
IniWrite,%rc%,%A_AppData%\yuzu\config\qt-config.ini,Controls,player_0_button_rstick
IniWrite,%l%,%A_AppData%\yuzu\config\qt-config.ini,Controls,player_0_button_l
IniWrite,%r%,%A_AppData%\yuzu\config\qt-config.ini,Controls,player_0_button_r
IniWrite,%zl%,%A_AppData%\yuzu\config\qt-config.ini,Controls,player_0_button_zl
IniWrite,%zr%,%A_AppData%\yuzu\config\qt-config.ini,Controls,player_0_button_zr
IniWrite,%pl%,%A_AppData%\yuzu\config\qt-config.ini,Controls,player_0_button_plus
IniWrite,%mn%,%A_AppData%\yuzu\config\qt-config.ini,Controls,player_0_button_minus
IniWrite,%dl%,%A_AppData%\yuzu\config\qt-config.ini,Controls,player_0_button_dleft
IniWrite,%du%,%A_AppData%\yuzu\config\qt-config.ini,Controls,player_0_button_dup
IniWrite,%dr%,%A_AppData%\yuzu\config\qt-config.ini,Controls,player_0_button_dright
IniWrite,%dd%,%A_AppData%\yuzu\config\qt-config.ini,Controls,player_0_button_ddown
IniWrite,%sc%,%A_AppData%\yuzu\config\qt-config.ini,Controls,player_0_button_screenshot
IniWrite,%ls%,%A_AppData%\yuzu\config\qt-config.ini,Controls,player_0_lstick
IniWrite,%rs%,%A_AppData%\yuzu\config\qt-config.ini,Controls,player_0_rstick

; Settings
#MaxHotkeysPerInterval 210
#HotkeyInterval 1000
#InstallMouseHook
#SingleInstance Force
CoordMode,Mouse,Screen
SetMouseDelay,-1
SetBatchLines,-1

; On exit
OnExit("exitFunc")

IF (A_PtrSize < 8) {
        ToolTip, 
	MsgBox,% 0+16+262144,Now Requires 64bit, Starting with Version 0.4.0.0 this program requires 64bit. If you are getting this error you must be running the script directly and have 32bit AutoHotkey installed.`n`nPlease Change your AutoHotkey installation to the 64bit Unicode version 
	ExitApp
}

;OrigMouseSpeed := ""
;DllCall("SystemParametersInfo", UInt, 0x70, UInt, 0, UIntP, OrigMouseSpeed, UInt, 0) ; Get Original Mouse Speed.

toggle:=1													; On/off parameter for the hotkey.	Toggle 0 means controller is on. The placement of this variable is disturbing.

IfNotExist, settings.ini
{
	defaultSettings=
(
[General]
vXBoxDevice=1
gameExe=Yuzu.exe
autoActivateGame=0

[General>Setup]
r=30
k=0.02
freq=75
nnp=.80

[General>Hotkeys]
controllerSwitchKey=F1
exitKey=F2
openSettingsKey=F3

[Gamepad>Buttons]
joystickButtonKeyList=a,b,x,y,l,r,WheelUp,WheelDown,NumpadAdd,NumpadSub,LButton,RButton,Up,Down,Left,Right

[Gamepad>Left Stick]
upKey=w
leftKey=a
downKey=s
rightKey=d
walkToggleKey=Numpad0
increaseWalkKey=NumpadAdd
decreaseWalkKey=NumPadSub
walkSpeed=1

[Gamepad>Right Stick]
invertedX=0
invertedY=0

[Extra Settings]
lockZL=0
lockZLToggleKey=Numpad1
useAltMouseMethod=0
alt_xSen=400
alt_ySen=280
)
	FileAppend,%defaultSettings%,settings.ini
	IF (ErrorLevel) {
                ToolTip, 
		Msgbox,% 6+16+262144,Error writing to file., There was a problem creating settings.ini, Make sure you have permission to write to file at %A_ScriptDir%. If the problem persists`, try to run as administrator or change the script directory. Press retry to try again`, Continue to set all settings to default or Cancel to Exit this Application.
		IfMsgBox Retry
			{
			ToolTip, Reloading! Please Wait.
			reload
			Gosub last
			}
		IfMsgBox Continue
			Goto, setSettingsToDefault
		Else    {
			ToolTip, Closing! Please Wait.
			exitFun()
			}
	}
	firstRun := True ; Moved out of ini File.
}

; Read settings.
IniRead,allSections,settings.ini
IF (!allSections || allSections="ERROR") {
        ToolTip, 
	MsgBox, % 2+16+262144, Error reading file, There was an error reading the settings.ini file`, Press Retry to try again`, Continue to set all settings to default or Cancel to exit this Application.
	IfMsgBox retry
		{
		ToolTip, Reloading! Please Wait.
		reload
		Gosub last
		}
	IfMsgBox Ignore
		Goto, setSettingsToDefault
	Else	{
		ToolTip, Closing! Please Wait.
		exitFun()
		}
}
Loop,Parse,allSections,`n
{
	IniRead,pairs,settings.ini,%A_LoopField%
	Loop,Parse,pairs,`n
	{
		StringSplit,keyValue,A_LoopField,=
		%keyValue1%:=keyValue2
	}
}
readSettingsSkippedDueToError:

IF (firstRun){
	MsgBox,% 0+64+262144,Welcome, You are getting this message as you are using this Tool for the first time.`n`nWhenever you run this Tool`, the following Opperations are Done: `n`n 1. Yuzu is Closed if Open.`n`n 2. Yuzu Controller Settings are automatically set for compatibility of this tool if Yuzu is Installed. `n`n 3. Required Drivers are checked and asks you before Installing them if they are not installed.
	}

ToolTip, Yuzu Controller settings Updated. `nPress %controllerSwitchKey% to start. `nPress %exitKey% to Exit. `nPress %opensettingsKey% to open settings.
SetTimer, TipOff, Delete

pi:=atan(1)*4													; Approx pi.

Global verrified:=verrified
; Constants and such. Some values are commented out because they have been stored in the settings.ini file instead, but are kept because they have comments.
moveStickHalf := False
KeyList := []
KeyListByNum := []

md := new MouseDelta("MouseEvent")

ih := InputHook()
ih.KeyOpt("{All}", "ES")

dr:=0											; Bounce back when hit outer circle edge, in pixels. (This might not work any more, it is off) Can be seen as a force feedback parameter, can be extended to depend on the over extension beyond the outer ring.

; Hotkey(s).
IF (controllerSwitchKey)
	Hotkey,%controllerSwitchKey%,controllerSwitch, on
IF (exitKey)
	Hotkey,%exitKey%,exitFun, on
IF (opensettingsKey)
        Hotkey,%opensettingskey%,openSettings, on

mouse2joystick := True
IF (mouse2joystick) {
	Gosub, initCvJoyInterface
	Gosub, mouse2joystickHotkeys
}

; Icon
Menu,Tray,Tip, Mouse2Gamepad for Yuzu
Menu,Tray,NoStandard


IF (!A_IsCompiled) { ; If it is compiled it should just use the EXE Icon
	IF (A_OSVersion < "10.0.15063") ; It appears that the Icon has changed number on the newest versions of Windows.
		useIcon := 26
	Else IF (A_OSVersion >= "10.0.16299")
		useIcon := 28
	Else
		useIcon := 27
	Try
		Menu,Tray,Icon,ddores.dll, %useIcon% 
}

Menu,Tray,Add,Settings,openSettings
Menu,Tray,Add,
Menu,Tray,Add,Help,helpMenu
Menu,Tray,Add,
Menu,Tray,Add,Select Game, selectGameMenu
Menu,Tray,Add,Reload,reloadMenu
Menu,Tray,Add,Exit,exitFun

IF freq is not Integer
	freq := 75

pmX:=invertedX ? -1:1							; Sign for inverting axis
pmY:=invertedY ? -1:1
snapToFullTilt:=0.005							; This needs to be improved.
;nnp:=4	 										; Non-linearity parameter for joystick output, 1 = linear, >1 higher sensitivity closer to full tilt, <1 higher sensitivity closer to deadzone. Recommended range, [0.1,6]. 
; New parameters

; Mouse blocker
; Transparent window that covers game screen to prevent game from capture the mouse.
Gui, Controller: New
Gui, Controller: +ToolWindow -Caption +AlwaysOnTop +HWNDstick
Gui, Controller: Color, FFFFFF

ToolTip, %pur% `nPress %controllerSwitchKey% to start. `nPress %exitKey% to Exit. `nPress %opensettingsKey% to open settings.
SetTimer, TipOff, Delete

Return
; End autoexec.

selectGameMenu:
	ToolTip, Point and click on the game you want to select`, right click to cancel.
	SetTimer, TipOff, Delete
	HotKey,RButton,selectGameMenuCancel,on
	KeyWait,LButton,D
	MouseGetPos,,,wum
	WinGet, new_gameExe,ProcessName,ahk_id %wum%
	if new_gameExe
	{
		Tooltip, You have selected %new_gameExe%.
		gameExe:=new_gameExe
		IniWrite,%gameExe%,settings.ini,General,gameExe
	}
	selectGameMenuCancel:
	HotKey,RButton,selectGameMenuCancel,Off
	SetTimer, TipOff,-3000
return

reloadMenu:
	ToolTip, Reloading! Please Wait.
	Reload
	Gosub last
Return

helpMenu:
	Run, https://youtu.be/fPdPDgNGKI4
Return

initCvJoyInterface:
	Global vXBox := 1
	; Modified from joytest.ahk, from CvJoyInterface by evilC
	; Create an object from vJoy Interface Class.
	vGenInterface := new CvGenInterface()
	; Was vJoy installed and the DLL Loaded?

	IF (!vGenInterface.vJoyEnabled())
	  {
	   if FileExist("C:\Program Files\vJoy\x64\vJoyConfig.exe")
	     {
		ToolTip, 
		MsgBox,% 0+16+262144, Error vJoy Disabled, vJoy is installed but Disabled. `nThis will Enable vJoy.
		retry:
	  	RunWait, *RunAs "C:\Program Files\vJoy\x64\vJoyConfig.exe" enable on, C:\Program Files\vJoy\x64\, UseErrorLevel Hide               ; Enable vJoy if installed but Disabled
			if (%ErrorLevel%=ERROR)
			  {
			  ToolTip, 
			  MsgBox,% 5+16+262144, Error, You clicked "No". `nRetry and click "Yes" to Enable vJoy. `n`nRetry or Cancel to Exit
				IfMsgBox Cancel
				  ToolTip, Closing! Please Wait.
				  exitFun()
			  }
			IF (!vGenInterface.vJoyEnabled())
			Goto retry
		ToolTip, Reloading! Please Wait.
		Reload
		Gosub last
	      }
	  }

	IF (!vGenInterface.vJoyEnabled()){
		ToolTip, 
		Msgbox,% 1+16+262144,VJoy Error, VJoy is not installed. VJoy will be be installed.`n`nPress "OK" to Install VJoy. `nPress "Cancel" to exit application.
		IfMsgBox OK
		{
		Msgbox,% 0+48+262144, Install vJoy, The vJoy Installer will run. `nPlease Install it.
                RunWait, % A_ScriptDir "\ScpVBus\VJoySetup.exe", % A_ScriptDir "\ScpVBus",
		}
                IfMsgBox Cancel
		{
		ToolTip, Closing! Please Wait.
                exitFun()
		}
	  ToolTip, Reloading! Please Wait.
	  Reload
	  Gosub last
	}

	IF (!vGenInterface.IsVBusExist()) {
           ToolTip, 
           Msgbox,% 1+16+262144, Virtual XBox Bus (ScpVBus) Error, ScpVBus is not installed. This will install ScpVBus. `n`nPress "OK" to continue. `nPress "Cancel" to exit application.
	   ToolTip, Stopped. `nPress %controllerSwitchKey% to start. `nPress %exitKey% to Exit. `nPress %opensettingsKey% to open Settings.
           SetTimer, TipOff, Delete
	   	IfMsgBox OK
		 {
	  	 InstallUninstallScpVBus(True)
		 }
                IfMsgBox Cancel
		{
		ToolTip, Closing! Please Wait.
                exitFun()
		}
	}
	ValidDevices := ""
	Loop 15 {
		IF (vGenInterface.Devices[A_Index].IsAvailable())
			ValidDevices .= A_Index . "|"
	}
	IF (vXBox) {
		IF (vXboxDevice != vstick.DeviceID OR !vstick.GetLedNumber()) {
			IF (isObject(vstick)) {
				vstick.Unplug()
				vstick.Relinquish()
			}
			vGenInterface.UnPlugAll() ; Not sure how this interacts when a real controller is also plugged in. But I seem to notice that there is an issue if not ran.
			Global vstick := vGenInterface.xDevices[vXBoxDevice]
			vstick.Acquire()
			TrayTip,, % "Controller #" vstick.GetLedNumber() 
		}

	}
	Else {
		IF (isObject(vstick)) {
			vstick.Unplug()
			vstick.Relinquish()
		}
		Global vstick := vGenInterface.Devices[vJoyDevice]
	}
Return

; Hotkey labels
; This switches on/off the controller.
controllerSwitch:
	IF (toggle) { ; Starting controller

               ToolTip, Started. `nPress %controllerSwitchKey% to stop. `nPress %exitKey% to Exit.
               SetTimer, TipOff, -4000

		IF (autoActivateGame) {
			WinActivate,ahk_exe %gameExe%
			WinWaitActive, ahk_exe %gameExe%,,2
			IF (ErrorLevel) {
                                ToolTip, Stopped due to Error %GameExe% is not running or not in focus. `nOpen %GameExe% and bring it to focus first. `nPress %controllerSwitchKey% to start. `nPress %exitKey% to Exit. `nPress %opensettingsKey% to open settings.
                                SetTimer, TipOff, Delete
				Return
			}
			WinGetPos,gameX,gameY,gameW,gameH,ahk_exe %gameExe%									; Get game screen position and dimensions
			WinGet, gameID, ID, ahk_exe %gameExe%
		}
		Else {
			gameX:=0
			gameY:=0
			gameW:=A_ScreenWidth
			gameH:=A_ScreenHeight
		}
		
		; Controller origin is center of game screen or screen If autoActivateGame:=0.
		OX:=gameX+gameW/2				
		OY:=gameY+gameH/2
		
		IF (!OX OR !OY) {
			OX := 500
			OY := 500
		}

		; Move mouse to controller origin
		MouseMove,OX,OY	
		
		; The mouse blocker
		Gui, Controller: Show,NA x%gameX% y%gameY% w%gameW% h%gameH%,Controller
		WinSet,Transparent,1,ahk_id %stick%	
		
		IF (1)
			show_Mouse(False)
		;DllCall("SystemParametersInfo", UInt, 0x71, UInt, 0, UInt, 10, UInt, 0)
		
		IF (useAltMouseMethod) {
			md.Start()
			LockMouseToWindow("ahk_id " . stick)
		}
		Else
			SetTimer,mouseTojoystick,%freq%

	}
	Else {	; Shutting down controller

               ToolTip, Stopped. `nPress %controllerSwitchKey% to start. `nPress %exitKey% to Exit. `nPress %opensettingsKey% to open Settings.
               SetTimer, TipOff, Delete

		setStick(0,0)															; Stick in equilibrium.
		setStick(0,0, True)
		IF (useAltMouseMethod) {
			LockMouseToWindow(False)
			md.Stop()
		}
		Else
			SetTimer,mouseTojoystick,Off
		
		IF (1)
			show_Mouse()				; No need to show cursor if not hidden.
		;DllCall("SystemParametersInfo", UInt, 0x71, UInt, 0, UInt, OrigMouseSpeed, UInt, 0)  ; Restore the original speed.
		Gui, Controller:Hide
	
	}
	toggle:=!toggle
Return

; Hotkeys mouse2joystick
#IF (!toggle && mouse2joystick)
#IF
mouse2joystickHotkeys:
	Hotkey, IF, (!toggle && mouse2joystick)
		SetStick(0,0, True)
		IF (walkToggleKey)
			HotKey,%walkToggleKey%,toggleHalf, On
		IF (decreaseWalkKey)
			HotKey,%decreaseWalkKey%,decreaseWalk, On
		IF (increaseWalkKey)
			HotKey,%increaseWalkKey%,increaseWalk, On
		IF (lockZLToggleKey AND lockZL)
			HotKey,%lockZLToggleKey%,toggleAimLock, On
		Hotkey,%upKey%, overwriteUp, on 
		Hotkey,%upKey% Up, overwriteUpup, on
		Hotkey,%leftKey%, overwriteLeft, on 
		Hotkey,%leftKey% Up, overwriteLeftup, on
		Hotkey,%downKey%, overwriteDown, on 
		Hotkey,%downKey% Up, overwriteDownup, on
		Hotkey,%rightKey%, overwriteRight, on 
		Hotkey,%rightKey% Up, overwriteRightup, on
	KeyList := []
	Loop, Parse, joystickButtonKeyList, `,
	{
		useButton := A_Index
		Loop, Parse, A_LoopField, |
		{		
			keyName:=A_LoopField
			IF (!keyName)
				Continue
			KeyList[keyName] := useButton
			Hotkey,%keyName%, pressJoyButton, on 
			Hotkey,%keyName% Up, releaseJoyButton, on
		}
	}
	Hotkey, IF
Return

; Labels for pressing and releasing joystick buttons.
pressJoyButton:
	keyName:=A_ThisHotkey
	joyButtonNumber := KeyList[keyName] ; joyButtonNumber:=A_Index
	If InStr(keyName, "wheel")
		new SelfDeletingTimer(100, "ReleaseWheel", joyButtonNumber)
	IF (!vXBox){
		IF (joyButtonNumber = 7 AND lockZL) {
			IF (ZLToggle)
				vstick.SetBtn(0,joyButtonNumber)
			Else
				vstick.SetBtn(1,joyButtonNumber)
		}
		Else IF (joyButtonNumber)
			vstick.SetBtn(1,joyButtonNumber)
	}
	Else {
		Switch joyButtonNumber
		{
		Case 7:
			IF (lockZL AND ZLToggle)
				vstick.SetAxisByIndex(0,6)
			Else
				vstick.SetAxisByIndex(100,6)
			return
		Case 8:
			vstick.SetAxisByIndex(100,3)
			return
		Case 9:
			vstick.SetBtn(1,joyButtonNumber-1)
			return
		Case 10:
			vstick.SetBtn(1,joyButtonNumber-3)
			return
		Case 11,12:
			vstick.SetBtn(1,joyButtonNumber-2)
			return
		Case 13:
			vstick.SetPOV(0)
			return
		Case 14:
			vstick.SetPOV(180)
			return
		Case 15:
			vstick.SetPOV(270)
			return
		Case 16:
			vstick.SetPOV(90)
			return
		Default:
			vstick.SetBtn(1,joyButtonNumber)
			return
		}
	}
Return

ReleaseWheel(keyNum) { ; This is duplicated of the label below, it had to be added so I could release mouse wheel keys as they don't fire Up keystrokes.
	Global
	IF (!vXBox){
		IF (keyNum = 7 AND lockZL) {
			IF (ZLToggle)
				vstick.SetBtn(1,keyNum)
			Else
				vstick.SetBtn(0,keyNum)
		}
		Else IF (keyNum)
			vstick.SetBtn(0,keyNum)
	}
	Else {
		Switch keyNum
		{
			Case 7:
				IF (lockZL AND ZLToggle)
					vstick.SetAxisByIndex(100,6)
				Else
					vstick.SetAxisByIndex(0,6)
			Case 8:
				vstick.SetAxisByIndex(0,3)
			Case 9:
				vstick.SetBtn(0,keyNum-1)
			Case 10:
				vstick.SetBtn(0,keyNum-3)
			Case 11,12:
				vstick.SetBtn(0,keyNum-2)
			Case 13,14,15,16:
				vstick.SetPOV(-1)
			Default:
				vstick.SetBtn(0,keyNum)
		}
	}
	Return
}

releaseJoyButton:
	keyName:=RegExReplace(A_ThisHotkey," Up$")
	joyButtonNumber := KeyList[keyName] ; joyButtonNumber:=A_Index
	IF (!vXBox){
		IF (joyButtonNumber = 7 AND lockZL) {
			IF (ZLToggle)
				vstick.SetBtn(1,joyButtonNumber)
			Else
				vstick.SetBtn(0,joyButtonNumber)
		}
		Else IF (joyButtonNumber)
			vstick.SetBtn(0,joyButtonNumber)
	}
	Else {
		Switch joyButtonNumber
		{
			Case 7:
				IF (lockZL AND ZLToggle)
					vstick.SetAxisByIndex(100,6)
				Else
					vstick.SetAxisByIndex(0,6)
			Case 8:
				vstick.SetAxisByIndex(0,3)
			Case 9:
				vstick.SetBtn(0,joyButtonNumber-1)
			Case 10:
				vstick.SetBtn(0,joyButtonNumber-3)
			Case 11,12:
				vstick.SetBtn(0,joyButtonNumber-2)
			Case 13,14,15,16:
				vstick.SetPOV(-1)
			Default:
				vstick.SetBtn(0,joyButtonNumber)
		}
	}
Return

toggleAimLock:
	IF (vXbox)
		vstick.SetAxisByIndex((ZLToggle := !ZLToggle) ? 100 : 0,6)
	Else
		vstick.SetBtn((ZLToggle := !ZLToggle),7)
Return

toggleHalf:
	moveStickHalf := !moveStickHalf
	KeepStickHowItWas()
Return

decreaseWalk:
	walkSpeed -= 0.05
	IF (walkSpeed < 0)
		walkSpeed := 0
	KeepStickHowItWas()
	IniWrite, % walkSpeed:= Round(walkSpeed, 2), settings.ini, Keyboard Movement>Keys, walkSpeed
	GUI, Main:Default
	GUIControl,,opwalkSpeedTxt, % Round(walkSpeed * 100) "%"
Return

increaseWalk:
	walkSpeed += 0.05
	IF (walkSpeed > 1)
		walkSpeed := 1
	KeepStickHowItWas()
	IniWrite, % walkSpeed := Round(walkSpeed, 2), settings.ini, Keyboard Movement>Keys, walkSpeed
	GUI, Main:Default
	GUIControl,,opwalkSpeedTxt, % Round(walkSpeed * 100) "%"
Return

KeepStickHowItWas() {
	Global moveStickHalf, walkSpeed, upKey, leftKey, downKey, rightKey
	IF (GetKeyState(downKey, "P"))
		SetStick("N/A",(moveStickHalf ? -1 * walkSpeed : -1), True)
	IF (GetKeyState(rightKey, "P"))
		SetStick((moveStickHalf ? 1 * walkSpeed : 1),"N/A", True)
	IF (GetKeyState(leftKey, "P"))
		SetStick((moveStickHalf ? -1 * walkSpeed : -1),"N/A", True)
	IF (GetKeyState(upKey, "P"))
		SetStick("N/A",(moveStickHalf ? 1 * walkSpeed : 1), True)
}

overwriteUp:
Critical, On
IF (moveStickHalf)
	SetStick("N/A",1 * walkSpeed, True)
Else
	SetStick("N/A",1, True)
Critical, Off
Return
overwriteUpup:
Critical, On
IF (GetKeyState(downKey, "P")) {
	IF (moveStickHalf)
		SetStick("N/A",-1 * walkSpeed, True)
	Else
		SetStick("N/A",-1, True)
}
Else
	SetStick("N/A",0, True)
Critical, Off
Return

overwriteLeft:
Critical, On
IF (moveStickHalf)
	SetStick(-1 * walkSpeed,"N/A", True)
Else
	SetStick(-1,"N/A", True)
Critical, Off
Return
overwriteLeftup:
Critical, On
IF (GetKeyState(rightKey, "P")) {
	IF (moveStickHalf)
		SetStick(1 * walkSpeed,"N/A", True)
	Else
		SetStick(1,"N/A", True)
}
Else
	SetStick(0,"N/A", True)
Critical, Off
Return

overwriteRight:
Critical, On
IF (moveStickHalf)
	SetStick(1 * walkSpeed,"N/A", True)
Else
	SetStick(1,"N/A", True)
Critical, Off
Return
overwriteRightup:
Critical, On
IF (GetKeyState(leftKey, "P")) {
	IF (moveStickHalf)
		SetStick(-1 * walkSpeed,"N/A", True)
	Else
		SetStick(-1,"N/A", True)
}
Else
	SetStick(0,"N/A", True)
Critical, Off
Return

overwriteDown:
Critical, On
IF (moveStickHalf)
	SetStick("N/A",-1 * walkSpeed, True)
Else
	SetStick("N/A",-1, True)
Critical, Off
Return
overwriteDownup:
Critical, On
IF (GetKeyState(upKey, "P")) {
	IF (moveStickHalf)
		SetStick("N/A",1 * walkSpeed, True)
	Else
		SetStick("N/A",1, True)
}
Else
	SetStick("N/A",0, True)
Critical, Off
Return

overwriteWheelUp:
	SetStick(0,0)
	IF (!alreadyDown){
		IF (vXbox)
			vstick.SetPOV(90)
		Else
			vstick.SetBtn(1,16)
		alreadyDown := True
		DllCall("Sleep", Uint, 250)
	}
	SetStick(-1,0)
	DllCall("Sleep", Uint, 30)
	SetStick(0,0)
	SetTimer, ReleaseDPad, -650 ; vstick.SetBtn(0,16)
Return
overwriteWheelDown:
	SetStick(0,0)
	IF (!alreadyDown){
		IF (vXbox)
			vstick.SetPOV(90)
		Else
			vstick.SetBtn(1,16)
		alreadyDown := True
		DllCall("Sleep", Uint, 250)
	}
	SetStick(1,0)
	DllCall("Sleep", Uint, 30)
	SetStick(0,0)
	SetTimer, ReleaseDPad, -650 ; vstick.SetBtn(0,16)
Return

ReleaseDPad:
	IF (vXbox)
		vstick.SetPOV(-1)
	Else
		vstick.SetBtn(0,16)
	alreadyDown := False
	SetTimer, ReleaseDPad, Off
Return

; Labels

mouseTojoystick:
	Critical, On
	mouse2joystick(r,dr,OX,OY)
	Critical, Off
Return

; Functions

mouse2joystick(r,dr,OX,OY) {
	; r is the radius of the outer circle.
	; dr is a bounce back parameter.
	; OX is the x coord of circle center.
	; OY is the y coord of circle center.
	Global k, nnp, AlreadyDown
	MouseGetPos,X,Y
	X-=OX										; Move to controller coord system.
	Y-=OY
	RR:=sqrt(X**2+Y**2)
	IF (RR>r) {								; Check If outside controller circle.
		X:=round(X*(r-dr)/RR)
		Y:=round(Y*(r-dr)/RR)
		RR:=sqrt(X**2+Y**2)
		MouseMove,X+OX,Y+OY 					; Calculate point on controller circle, move back to screen/window coords, and move mouse.
	}
	
	; Calculate angle
	phi:=getAngle(X,Y)							
	
	
	IF (RR>k*r AND !AlreadyDown) 								; Check If outside inner circle/deadzone.
		action(phi,((RR-k*r)/(r-k*r))**nnp)		; nnp is a non-linearity parameter.	
	 Else
		 setStick(0,0)							; Stick in equllibrium.

	MouseMove,OX,OY
}

action(phi,tilt) {	
	; This is for mouse2joystick.
	; phi ∈ [0,2*pi] defines in which direction the stick is tilted.
	; tilt ∈ (0,1] defines the amount of tilt. 0 is no tilt, 1 is full tilt.
	; When this is called it is already established that the deadzone is left, or the inner radius.
	; pmX/pmY is used for inverting axis.
	; snapToFullTilt is used to ensure full tilt is possible, this needs to be improved, should be dependent on the sensitivity.
	Global pmX,pmY,pi,snapToFullTilt

	; Adjust tilt
	tilt:=tilt>1 ? 1:tilt
	IF (snapToFullTilt!=-1)
		tilt:=1-tilt<=snapToFullTilt ? 1:tilt
	
	; Two cases with forward+right
	; Tilt is forward and slightly right.
	lb:=3*pi/2										; lb is lower bound
	ub:=7*pi/4										; ub is upper bound
	IF (phi>=lb && phi<=ub)							
	{
		x:=pmX*tilt*scale(phi,ub,lb)
		y:=pmY*tilt
		setStick(x,y)
		Return
	}
	; Tilt is slightly forward and right.
	lb:=7*pi/4										; lb is lower bound
	ub:=2*pi						; ub is upper bound
	IF (phi>=lb && phi<=ub)							
	{
		x:=pmX*tilt
		y:=pmY*tilt*scale(phi,lb,ub)
		setStick(x,y)
		Return
	}
	
	; Two cases with right+downward
	; Tilt is right and slightly downward.
	lb:=0											; lb is lower bound
	ub:=pi/4										; ub is upper bound
	IF (phi>=lb && phi<=ub)							
	{
		x:=pmX*tilt
		y:=-pmY*tilt*scale(phi,ub,lb)
		setStick(x,y)
		Return
	}
	; Tilt is downward and slightly right.
	lb:=pi/4										; lb is lower bound
	ub:=pi/2										; ub is upper bound
	IF (phi>=lb && phi<=ub)							
	{
		x:=pmX*tilt*scale(phi,lb,ub)
		y:=-pmY*tilt
		setStick(x,y)
		Return
	}
	
	; Two cases with downward+left
	; Tilt is downward and slightly left.
	lb:=pi/2										; lb is lower bound
	ub:=3*pi/4										; ub is upper bound
	IF (phi>=lb && phi<=ub)							
	{
		x:=-pmX*tilt*scale(phi,ub,lb)
		y:=-pmY*tilt
		setStick(x,y)
		Return
	}
	; Tilt is left and slightly downward.
	lb:=3*pi/4										; lb is lower bound
	ub:=pi											; ub is upper bound
	IF (phi>=lb && phi<=ub)							
	{
		x:=-pmX*tilt
		y:=-pmY*tilt*scale(phi,lb,ub)
		setStick(x,y)
		Return
	}
	
	; Two cases with forward+left
	; Tilt is left and slightly forward.
	lb:=pi											; lb is lower bound
	ub:=5*pi/4										; ub is upper bound
	IF (phi>=lb && phi<=ub)							
	{
		x:=-pmX*tilt
		y:=pmY*tilt*scale(phi,ub,lb)
		setStick(x,y)
		Return
	}
	; Tilt is forward and slightly left.
	lb:=5*pi/4										; lb is lower bound
	ub:=3*pi/2										; ub is upper bound
	IF (phi>=lb && phi<=ub)							
	{
		x:=-pmX*tilt*scale(phi,lb,ub)
		y:=pmY*tilt
		setStick(x,y)
		Return
	}
	; This should not happen:
	setStick(0,0)
	MsgBox,% 0+16+262144,Error, Error at phi=%phi%. Please report.
	Return
}

scale(phi,lb,ub) {
	; let phi->f(phi) then, f(ub)=0 and f(lb)=1
	Return (phi-ub)/(lb-ub)
}

setStick(x,y, a := False) {
	; Set joystick x-axis to 100*x % and y-axis to 100*y %
	; Input is x,y ∈ (-1,1) where 1 would mean full tilt in one direction, and -1 in the other, while zero would mean no tilt at all. Using this interval makes it easy to invert the axis
	; (mainly this was choosen beacause the author didn't know the correct interval to use in CvJoyInterface)
	; the input is not really compatible with the CvJoyInterface. Hence this transformation:	
	IF (vXBox) {
		x:=(x+1)*50									; This maps x,y (-1,1) -> (0,100)
		y:=(y+1)*50
	}
	Else {
		x:=(x+1)*16384									; This maps x,y (-1,1) -> (0,32768)
		y:=(y+1)*16384
	}
	
	; Use set by index.
	; x = 1, y = 2.
	IF ( (!a AND vXbox) OR (a AND !vXBox) ) { ; IF (GetKeyState("RButton") OR a ) {
		axisX := 4
		axisY := 5
	}
	Else {
		axisX := 1
		axisY := 2
	}
	IF x is number
		vstick.SetAxisByIndex(x,axisX)
	IF y is number
		vstick.SetAxisByIndex(y,axisY)
}

; Shared functions
getAngle(x,y) {
	Global pi
	IF (x=0)
		Return 3*pi/2-(y>0)*pi
	phi:=atan(y/x)
	IF (x<0 && y>0)
		Return phi+pi
	IF (x<0 && y<=0)
		Return phi+pi
	IF (x>0 && y<0)
		Return phi+2*pi
	Return phi
}

exitFun() {
	ToolTip, Closing! Please Wait.
	exitFunc()
	}

exitFunc() {
	Global
	IF (mouse2Joystick)	{
		setStick(0,0)
		SetStick(0,0, True)
			vstick.UnPlug()
		vstick.Relinquish()
	}
	
	md.Delete()
	md := ""
	show_Mouse() ; DllCall("User32.dll\ShowCursor", "Int", 1)
	;DllCall("SystemParametersInfo", UInt, 0x71, UInt, 0, UInt, OrigMouseSpeed, UInt, 0)  ; Restore the original speed.
	ExitApp
}

;
; End Script.
; Start settings.
;
openSettings:
ToolTip, 

If (!toggle)			; This is probably best.
	{
	Return
	}

IF (controllerSwitchKey)
	Hotkey,%controllerSwitchKey%,controllerSwitch, off
IF (exitKey)
	Hotkey,%exitKey%,exitFun, off
IF (opensettingsKey)
        Hotkey,%opensettingskey%,openSettings, off

tree := "
(
General|Setup, Hotkeys
Gamepad|Buttons, Left Stick, Right Stick
Extra Settings
)"
GUI, Main:New, +AlwaysOnTop -MinimizeBox, % "Mouse2Gamepad for Yuzu Settings  -  " . version
GUI, Add, TreeView, xm w150 h300 r16 gTreeClick Section
GUI, Font, s11 Bold
GUI, Add, Text, xp yp+310, Setting will be Saved Automatically.
GUI, Font,

GUI, Add, GroupBox, xm+160 ym+232 w540 h70, Help and Support:
GUI, Add, Link, xp+10 yp+20, <a href="https://youtu.be/fPdPDgNGKI4">View Video Tutorial</a> by the Maker of This Tool, HiDe Techno Tips
GUI, Add, Link, xp yp+20, <a href="https://www.youtube.com/channel/UCy3fBVKd0RMY05CgiiuGqSA?sub_confirmation=1">Please Support me by Subscribing to my Youtube Channel.</a>

GUI, Add, Tab2, +Buttons -Theme -Wrap vTabControl ys w320 h0 Section, General|General>Setup|General>Hotkeys|Gamepad|Gamepad>Buttons|Gamepad>Left Stick|Gamepad>Right Stick|Extra Settings
GUIControlGet, S, Pos, TabControl ; Store the coords of this section for future use.
;------------------------------------------------------------------------------------------------------------------------------------------
GUI, Tab, General

	GUI, Add, GroupBox, xm+160 y%SY% w540 h50, Virtual XBox device to use as Gamepad:
	GUI, Add, DropDownList, xp+10 yp+20 vopvXBoxDevice w90, % StrReplace("0|1|2|3|4|", vXBoxDevice, vXBoxDevice . "|")
	
	GUI, Add, GroupBox, section xm+160 yp+45 w540 h90,Executable Name:
	GUI, Add, Text, xp+10 yp+20, The executable name for your Game:
	GUI, Add, Edit, x+m yp vopgameExe w90, %gameExe% 
	GUI, Add, Text, xs+10 yp+25, Use Controller only when Game executable Entered above is running?
	GUI, Add, Radio, % "xp+10 yp+20 Group vopautoActivateGame Checked" !autoActivateGame, No
	GUI, Add, Radio, % "x+m Checked" autoActivateGame, Yes
;------------------------------------------------------------------------------------------------------------------------------------------
GUI, Tab, General>Setup
	GUI, Add, GroupBox, xm+160 y%SY% w540 h50 Section, Sensitivity
	GUI, Add, Edit, xs+10 yp+20 w50 vopr gNumberCheck, %r%
	GUI, Add, Text, x+4 yp+3, Lower values correspond to higher sensitivity 

	GUI, Add, GroupBox, xs yp+30 w540 h50, Non-Linear Sensitivity
	GUI, Add, Edit, xs+10 yp+20 w50 vopnnp gNumberCheck, %nnp%
	GUI, Add, Text, x+4 yp+3, 1 is Linear ( < 1 makes center more sensitive )
	
	GUI, Add, GroupBox, xs yp+30 w540 h50, Deadzone
	GUI, Add, Edit, xs+10 yp+20 w50 vopk gNumberCheck, %k%
	GUI, Add, Text, x+4 yp+3, Range (0 - 1)
	
	GUI, Add, GroupBox, xs yp+30 w540 h50, Mouse Check Frequency
	GUI, Add, Edit, xs+10 yp+20 w50 vopfreq Number, %freq%
	GUI, Add, Text, x+4 yp+3, I recommend 50-100 ( Default:75 )
;------------------------------------------------------------------------------------------------------------------------------------------
GUI, Tab, General>Hotkeys
	GUI, Add, GroupBox, xm+160 y%SY% w540 h50 Section, Toggle Controller On/Off
	GUI, Add, Hotkey, xs+10 yp+20 w50 Limit190 vopcontrollerSwitchKey, % StrReplace(controllerSwitchKey, "#")
	
	GUI, Add, GroupBox, xm+160 yp+40 w540 h50 Section, Quit Application
	GUI, Add, Hotkey, xs+10 yp+20 w50 Limit190 vopexitKey, % StrReplace(exitKey, "#")

	GUI, Add, GroupBox, xm+160 yp+40 w540 h50 Section, Open Settings
	GUI, Add, Hotkey, xs+10 yp+20 w50 Limit190 vopopensettingsKey, % StrReplace(opensettingsKey, "#")
;------------------------------------------------------------------------------------------------------------------------------------------
GUI, Tab, Gamepad
	GUI, Add, Text, xm+160 y%SY% Section, Bind Your Mouse and Keyboard to a emulated Virtual XBox Gamepad that `nwill be used in the Games.
;------------------------------------------------------------------------------------------------------------------------------------------
GUI, Tab, Gamepad>Buttons
	GUI, Add, Text, xm+160 y%SY% Section, Bind Your Mouse and Keyboard Buttons to The Virtual XBox Gamepad Buttons:

	GUI, Add, GroupBox, xs yp+20 w540 h140 Section, Virtual xBox Gamepad Button Binder:
	GUI, Add, Edit, xs+10 yp+20 w520 h20 vopjoystickButtonKeyList, %joystickButtonKeyList%
	GUI, Add, Text, xs+10 yp+25, The Keys and Mouse Buttons separated by "," above are bound to Buttons of Virtual XBox Gamepad.
        GUI, Add, Text, xs+10 yp+40, Press the Button Below to Customise Bound Buttons:
	GUI, Add, Button, xs+10 yp+20 w520 gKeyListHelper, Customise Buttons.
	
	GUI, Add, GroupBox, xm+160 yp+40 w540 h50, Bound Buttons Profile Manager:
	IniRead,allSavedLists,SavedKeyLists.ini
	allSavedLists := StrReplace(allSavedLists, "`n", "|")
	GUI, Add, ComboBox, xs+10 yp+20 w400 vopSaveListName gLoadSavedList, %allSavedLists%
	GUI, Add, Button, x+m yp-1 w110 h23 gDeleteSavedList, Delete
;------------------------------------------------------------------------------------------------------------------------------------------
GUI, Tab, Gamepad>Left Stick
	GUI, Add, GroupBox, xm+160 y%SY% w540 h100 Section, Keyboard Keys Bound to Left Analog Stick of Virtual XBox Gamepad:
	GUI, Add, Text, xs+10 yp+25 Right w80, Up:
	GUI, Add, Hotkey, x+2 yp-3 w50 Limit190 vopupKey, %upKey%
	GUI, Add, Text, xs+10 yp+25, Left:
	GUI, Add, Hotkey, x+2 yp-3 w50 Limit190 vopleftKey, %leftKey%
	GUI, Add, Text, xp+60 yp Right w60, Right:
	GUI, Add, Hotkey, x+2 yp-3 w50 Limit190 voprightKey, %rightKey%
	GUI, Add, Text, xs+10 yp+25 Right w80, Down:
	GUI, Add, Hotkey, x+2 yp-3 w50 Limit190 vopdownKey, %downKey%

	GUI, Add, GroupBox, xs w540 h120, Left Stick Walking Speed Settings:
	GUI, Add, Text, xs+10 yp+25 Right w80, Walking Speed:
	GUI, Add, Slider, x+2 yp-8 w180 Range0-100 TickInterval10 Thick12 vopwalkSpeed gWalkSpeedChange AltSubmit, % walkSpeed*100
	GUI, Font, Bold 
	GUI, Add, Text, x+1 yp+8 w40 vopwalkSpeedTxt, % Round(walkSpeed*100) "%"
        GUI, Font, Norm
	GUI, Add, Text, xs+10 yp+25, Toggle Walking Speed Shortcut Key:
	GUI, Add, Hotkey, x+2 yp-3 w50 Limit190 vopwalkToggleKey, %walkToggleKey%
	GUI, Font, Bold 
	GUI, Add, Text, xp+10 yp+22, +
        GUI, Font, Norm
	GUI, Add, Text, xp-120 yp+20, Increase :
	GUI, Add, Hotkey, x+2 yp-3 w50 Limit190 vopincreaseWalkKey, %increaseWalkKey%
	GUI, Add, Text, x+3 yp+3, or  Decrease :
	GUI, Add, Hotkey, x+2 yp-3 w50 Limit190 vopdecreaseWalkKey, %decreaseWalkKey%
;------------------------------------------------------------------------------------------------------------------------------------------
GUI, Tab, Gamepad>Right Stick
	GUI, Add, Text, xm+160 y%SY% w540 Section, Mouse Movement Binds to the Right Analog Stick of Virtual XBox Gamepad.

	GUI, Add, GroupBox, xm+160 yp+20 w255 h40 Section,Invert X-Axis
	GUI, Add, Radio, % "xp+10 yp+20 Group vopinvertedX Checked" . !invertedX, No
	GUI, Add, Radio, % "x+m Checked" . invertedX, Yes
	
	GUI, Add, GroupBox, xs+275 ys w255 h40 Section,Invert Y-Axis
	GUI, Add, Radio, % "xp+10 yp+20 Group vopinvertedY Checked" . !invertedY, No
	GUI, Add, Radio, % "x+m Checked" . invertedY, Yes
;------------------------------------------------------------------------------------------------------------------------------------------
GUI, Tab, Extra Settings
	
	GUI, Add, GroupBox, xm+160 y%SY% w540 h50 Section,Use ZL Lock Toggle Key
	GUI, Add, Radio, % "xp+10 yp+20 Group voplockZL Checked" . !lockZL, No
	GUI, Add, Radio, % "x+m Checked" . lockZL, Yes
	GUI, Add, Text, x+10 Right w80, ZL Lock Key:
	GUI, Add, Hotkey, x+2 yp-3 w50 Limit190 voplockZLToggleKey, %lockZLToggleKey%

	GUI, Font, cRed Bold
	GUI, Add, GroupBox, xs yp+40 w540 h65,EXPERIMENTAL Alternate Mouse Detection
	GUI, Font,
	GUI, Add, CheckBox, % "xp+10 yp+20 vopuseAltMouseMethod Checked" . useAltMouseMethod, Use Mouse Delta? (Experimental)
	GUI, Add, Text, xs+10 yp+20 w40 Right, X-Sen:
	GUI, Add, Edit, x+2 yp-3 vopalt_xSen w40, %alt_xSen%
	GUI, Add, Text, x+10 yp+3 w30 Right, Y-Sen:
	GUI, Add, Edit, x+2 yp-3 vopalt_ySen w40, %alt_ySen%
	GUI, Add, Text, x+3 yp+3 w130 Left, Try 260-400? No Idea...
GUI, Add, StatusBar
BuildTree("Main", tree)
Gui, Main: Show, w720
Return	

TreeClick:
	IF (A_GUIEvent = "S") {
		useSection := selectionPath(A_EventInfo)
		IF (useSection = "Left Stick") {
			useSection := "Gamepad>Left Stick"
			TV_Modify(findByName(useSection), "Select")
		}
		Else IF (useSection = "Right Stick") {
			useSection := "Gamepad>Right Stick"
			TV_Modify(findByName(useSection), "Select")
		}
		SB_SetText(useSection)
		GUIControl, Choose, TabControl, %useSection%
	}
Return

WalkSpeedChange:
	GUIControlGet,tmpSpeed,,opwalkSpeed
	GUIControl,,opwalkSpeedTxt, %tmpSpeed%`%
Return

MainGUIClose:
	GoSub, SaveSavedList
	Gosub, SubmitAll
	Gui, Main:Hide
	GUI, Main:Destroy
	Reload
	Gosub last
return

SubmitAll:
	Gui, Main:Submit, NoHide
	GUI, Main: Hide
	
    ; Write General
	IniWrite, % opvXBoxDevice, settings.ini, General, vXBoxDevice
	IniWrite, % opgameExe, settings.ini, General, gameExe
	IniWrite, % opautoActivateGame - 1, settings.ini, General, autoActivateGame

	; Write General>Setup
	IniWrite, % opr, settings.ini, General>Setup, r
	IniWrite, % opnnp, settings.ini, General>Setup, nnp
	IniWrite, % opk, settings.ini, General>Setup, k
	IniWrite, % opfreq, settings.ini, General>Setup, freq

	; Write General>Hotkeys
	IniWrite, % opcontrollerSwitchKeyWin ? "#" . opcontrollerSwitchKey : opcontrollerSwitchKey, settings.ini, General>Hotkeys, controllerSwitchKey
	IniWrite, % opexitKeyWin ? "#" . opexitKey : opexitKey, settings.ini, General>Hotkeys, exitKey
    IniWrite, % opopensettingsKeyWin ? "#" . opopensettingsKey : opopensettingsKey, settings.ini, General>Hotkeys, opensettingsKey
	
	; Write Gamepad>Buttons
	IniWrite, % opjoystickButtonKeyList, settings.ini, Gamepad>Buttons, joystickButtonKeyList

	; Write Gamepad>Left Stick
	IniWrite, % opupKey, settings.ini, Gamepad>Left Stick, upKey
	IniWrite, % opleftKey, settings.ini, Gamepad>Left Stick, leftKey
	IniWrite, % opdownKey, settings.ini, Gamepad>Left Stick, downKey
	IniWrite, % oprightKey, settings.ini, Gamepad>Left Stick, rightKey
	IniWrite, % opwalkToggleKey, settings.ini, Gamepad>Left Stick, walkToggleKey
	IniWrite, % opincreaseWalkKey, settings.ini, Gamepad>Left Stick, increaseWalkKey
	IniWrite, % opdecreaseWalkKey, settings.ini, Gamepad>Left Stick, decreaseWalkKey
	IniWrite, % Round(opwalkSpeed/100, 2), settings.ini, Gamepad>Left Stick, walkSpeed

    ; Write Gamepad>Right Stick
	IniWrite, % opinvertedX - 1, settings.ini, Gamepad>Right Stick, invertedX
	IniWrite, % opinvertedY - 1, settings.ini, Gamepad>Right Stick, invertedY

	; Write Extra Settings
	IniWrite, % oplockZL- 1, settings.ini, Extra Settings, lockZL
	IniWrite, % oplockZLToggleKey, settings.ini, Extra Settings, lockZLToggleKey
	IniWrite, % opuseAltMouseMethod, settings.ini, Extra Settings, useAltMouseMethod
	IniWrite, % opalt_xSen, settings.ini, Extra Settings, alt_xSen
	IniWrite, % opalt_ySen, settings.ini, Extra Settings, alt_ySen
Return

selectionPath(ID) {
	TV_GetText(name,ID)
	IF (!name)
		Return 0
	parentID := ID
	Loop
	{
		parentID := TV_GetParent(parentID)
		IF (!parentID)
			Break
		parentName=
		TV_GetText(parentName, parentID)
		IF (parentName)
			name := parentName ">" name
	}
	Return name
}

findByName(Name){
	retID := False
	ItemID = 0  ; Causes the loop's first iteration to start the search at the top of the tree.
	Loop
	{
		ItemID := TV_GetNext(ItemID, "Full")  ; Replace "Full" with "Checked" to find all checkmarked items.
		IF (!ItemID)  ; No more items in tree.
			Break
		temp := selectionPath(ItemID)
		IF (temp = Name) {
			retID := ItemID
			Break
		}
	}
	Return retID
}

BuildTree(aGUI, treeString, oParent := 0) {
	Static pParent := []
	Static Call := 0
	Loop, Parse, treeString, `n, `r
	{
		startingString := A_LoopField
		temp := StrSplit(startingString, ",")
		Loop % temp.MaxIndex()
		{
			useString := Trim(temp[A_Index])
			IF (!useString)
				Continue
			Else IF (useString = "||") {
				useIndex := A_Index+1
				While (useIndex < temp.MaxIndex() + 1) {
					useRest .= "," . temp[useIndex]
					useIndex++
				}
				useRest := SubStr(useRest, 2)
				BuildTree(aGUI, useRest, pParent[--Call])
				Break
			}
			Else IF InStr(useString, "|") {
				newTemp := StrSplit(useString, "|")
				pParent[Call++] := oParent
				uParent := TV_Add(newTemp[1], oParent, (oParent = 0 ) ? "Expand" : "")
				useRest := RegExReplace(useString, newTemp[1] . "\|(.*)$", "$1")
				useIndex := A_Index+1
				While (useIndex < temp.MaxIndex() + 1) {
					useRest .= "," . temp[useIndex]
					useIndex++
				}
				BuildTree(aGUI, useRest, uParent)
				Break
			}
			Else
				TV_Add(useString, oParent)
		}
	}
}

NumberCheck(hEdit) {
    static PrevNumber := []

    ControlGet, Pos, CurrentCol,,, ahk_id %hEdit%
    GUIControlGet, NewNumber,, %hEdit%
    StrReplace(NewNumber, ".",, Count)

    If NewNumber ~= "[^\d\.-]|^.+-" Or Count > 1 { ; BAD
        GUIControl,, %hEdit%, % PrevNumber[hEdit]
        SendMessage, 0xB1, % Pos-2, % Pos-2,, ahk_id %hEdit%
    }

    Else ; GOOD
        PrevNumber[hEdit] := NewNumber
}

LoadSavedList:
	GUIControlGet, slName,, opSaveListName
	IniRead, ldKeyList, SavedKeyLists.ini, %slName%, KeyList
	IF (ldKeyList != "ERROR")
		GUIControl,, opjoystickButtonKeyList, %ldKeyList%
Return

SaveSavedList:
	GUIControlGet, slName,, opSaveListName
	IF (!slName) {
		slName=Primary
	}
	GUIControlGet, slList,, opjoystickButtonKeyList
	IniWrite, %slList%, SavedKeyLists.ini, %slName%, KeyList
	IniRead,allSavedLists,SavedKeyLists.ini
	allSavedLists := StrReplace(allSavedLists, "`n", "|")
	GUIControl,, opSaveListName, % "|" . allSavedLists
	GUIControl, Text, opSaveListName, %slName%
Return

DeleteSavedList:
	GUIControlGet, slName,, opSaveListName
	IniDelete, SavedKeyLists.ini, %slName%
	IniRead,allSavedLists,SavedKeyLists.ini
	allSavedLists := StrReplace(allSavedLists, "`n", "|")
	GUIControl,, opSaveListName, % "|" . allSavedLists
Return

; Default settings in case problem reading/writing to file.
setSettingsToDefault:
	pairsDefault=
(
gameExe=Yuzu.exe
vXBoxDevice=1
autoActivateGame=0
r=30
k=0.02
freq=75
nnp=.80
controllerSwitchKey=F1
exitKey=F2
opensettingsKey=F3
invertedX=0
invertedY=0
joystickButtonKeyList=a,b,x,y,l,r,WheelUp,WheelDown,NumpadAdd,NumpadSub,LButton,RButton,Up,Down,Left,Right
upKey=w
leftKey=a
downKey=s
rightKey=d
walkToggleKey=Numpad0
increaseWalkKey=NumpadAdd
decreaseWalkKey=NumPadSub
walkSpeed=1
lockZL=0
lockZLToggleKey=Numpad1
useAltMouseMethod=0
alt_xSen=400
alt_ySen=280
)
	Loop,Parse,pairsDefault,`n
	{
		StringSplit,keyValue,A_LoopField,=
		%keyValue1%:=keyValue2
	}
firstRun := True
	Goto, readSettingsSkippedDueToError
Return

#IF KeyHelperRunning(setToggle)
#IF
KeyListHelper:
Hotkey, IF, KeyHelperRunning(setToggle)
HotKey,~LButton, getControl, On
Hotkey, IF
GUI, Main:Default
GUIControlGet, getKeyList,, opjoystickButtonKeyList
KeyListByNum := []
Loop, Parse, getKeyList, `,
{
	keyName := A_LoopField
	If !keyName
		continue
	KeyListByNum[A_Index] := keyName
}
IF (vXBox) {
	textWidth := 100
	numEdits := 16
}
Else {
	textWidth := 50
	numEdits := 18
}
setToggle := False
GUI, Main:Hide
GUI, KeyHelper:New, +AlwaysOnTop +HWNDKeyHelperHWND -MinimizeBox +OwnerMain
GUI, Margin, 10, 7.5
GUI, Font,, Lucida Sans Typewriter ; Courier New
GUI, Add, Text, W0 H0 vLoseFocus, Hidden
GUI, Add, Text, W%textWidth% R1 Right Section, % vXBox ? Format("{1:-9.9s}{2:4.4s}","( A - ✕ )","A") : "A"
GUI, Add, Edit, W80 R1 x+m yp-3 Center ReadOnly -TabStop, % KeyListByNum[1]
GUI, Add, Text, W%textWidth% xs R1 Right, % vXBox ? Format("{1:-9.9s}{2:4.4s}","( B - ○ )","B") : "B"
GUI, Add, Edit, W80 R1 x+m yp-3 Center ReadOnly -TabStop, % KeyListByNum[2]
GUI, Add, Text, W%textWidth% xs R1 Right, % vXBox ? Format("{1:-9.9s}{2:4.4s}","( X - □ )","X") : "X"
GUI, Add, Edit, W80 R1 x+m yp-3 Center ReadOnly -TabStop, % KeyListByNum[3]
GUI, Add, Text, W%textWidth% xs R1 Right, % vXBox ? Format("{1:-9.9s}{2:4.4s}","( Y - △ )","Y") : "Y"
GUI, Add, Edit, W80 R1 x+m yp-3 Center ReadOnly -TabStop, % KeyListByNum[4]
GUI, Add, Text, W%textWidth% xs R1 Right, % vXBox ? Format("{1:-9.9s}{2:4.4s}","(LB - L1)","L") : "L"
GUI, Add, Edit, W80 R1 x+m yp-3 Center ReadOnly -TabStop, % KeyListByNum[5]
GUI, Add, Text, W%textWidth% xs R1 Right, % vXBox ? Format("{1:-9.9s}{2:4.4s}","(RB - R1)","R") : "R"
GUI, Add, Edit, W80 R1 x+m yp-3 Center ReadOnly -TabStop, % KeyListByNum[6]
GUI, Add, Text, W%textWidth% xs R1 Right, % vXBox ? Format("{1:-9.9s}{2:4.4s}","(LT - L2)","ZL") : "ZL"
GUI, Add, Edit, W80 R1 x+m yp-3 Center ReadOnly -TabStop, % KeyListByNum[7]
GUI, Add, Text, W%textWidth% xs R1 Right, % vXBox ? Format("{1:-9.9s}{2:4.4s}","(RT - R2)","ZR") : "ZR"
GUI, Add, Edit, W80 R1 x+m yp-3 Center ReadOnly -TabStop, % KeyListByNum[8]
GUI, Add, Text, W%textWidth% xs R1 Right, % vXBox ? Format("{1:-9.9s}{2:4.4s}","( Start )","+") : "+"
GUI, Add, Edit, W80 R1 x+m yp-3 Center ReadOnly -TabStop, % KeyListByNum[9]
GUI, Add, Text, W%textWidth% xs R1 Right, % vXBox ? Format("{1:-9.9s}{2:4.4s}","( Back  )","-") : "-"
GUI, Add, Edit, W80 R1 x+m yp-3 Center ReadOnly -TabStop, % KeyListByNum[10]
GUI, Add, Text, w65 ys R1 Right Section, L-Click
GUI, Add, Edit, W80 R1 x+m yp-3 Center ReadOnly -TabStop, % KeyListByNum[11]
GUI, Add, Text, w65 ys R1 Right Section, R-Click
GUI, Add, Edit, W80 R1 x+m yp-3 Center ReadOnly -TabStop, % KeyListByNum[12]
GUI, Add, Text, w80 ys R1 Right Section, D-Up
GUI, Add, Edit, W80 R1 x+m yp-3 Center ReadOnly -TabStop, % KeyListByNum[13]
GUI, Add, Text, w80 xs R1 Right, D-Down
GUI, Add, Edit, W80 R1 x+m yp-3 Center ReadOnly -TabStop, % KeyListByNum[14]
GUI, Add, Text, w80 xs R1 Right, D-Left
GUI, Add, Edit, W80 R1 x+m yp-3 Center ReadOnly -TabStop, % KeyListByNum[15]
GUI, Add, Text, w80 xs R1 Right, D-Right
GUI, Add, Edit, W80 R1 x+m yp-3 Center ReadOnly -TabStop, % KeyListByNum[16]
GUI, Add, Text, w0 xs R1 Right, Dummy
IF(!vXBox) {
	GUI, Add, Text, w80 xs R1 Right, Blow-Mic
	GUI, Add, Edit, W80 R1 x+m yp-3 Center ReadOnly -TabStop, % KeyListByNum[17]
	GUI, Add, Text, w80 xs R1 Right, Show-Screen
	GUI, Add, Edit, W80 R1 x+m yp-3 Center ReadOnly -TabStop, % KeyListByNum[18]
}
GUI, Add, Text, w0 xm+230 R1 Right, Dummy
GUI, Add, Button, xp yp-30 w80 gSaveButton Section, OK
GUI, Add, Button, x+m w80 gCancelButton, Cancel
GUI, Add, Button, xs yp-30 w170 gAutoLoop, Auto Cycle
GUI, Add, Button, xs yp-60 w170 gClearButton, Clear

GUI, Show,, KeyList Helper
GuiControl, Focus, LoseFocus
Return


ClearButton:
	GUI, KeyHelper:Default
	Loop %numEdits%
		GUIControl,,Edit%A_Index%,
Return

CancelButton:
KeyHelperGUIClose:
	IF (setToggle)
		Return
	Hotkey, IF, KeyHelperRunning(setToggle)
	HotKey,~LButton, getControl, Off
	Hotkey, IF
	GUI, Main:Show
	GUI, KeyHelper:Destroy
Return

SaveButton:
	tempList := ""
	Loop %numEdits%
	{
	GUIControlGet, tempKey,,Edit%A_Index%
		tempList .= tempKey . ","
	}
	tempList := SubStr(tempList,1, StrLen(tempList)-1)
GUI, Main:Default
GUIControl,, opjoystickButtonKeyList, %tempList%
GoSub, KeyHelperGUIClose
Return

getControl:
	GUI, KeyHelper:Default
	KeyWait, LButton

	setToggle := True
	MouseGetPos,,, mouseWin, useControl, 1
	IF (InStr(useControl, "Edit") AND mouseWin = KeyHelperHWND)
		GetKey()
	setToggle := False

	clearFocus:
	GuiControl, Focus, LoseFocus
Return

AutoLoop:
	GUI, KeyHelper:Default
	Loop 4
		GUIControl, +Disabled, Button%A_Index%
	setToggle := True
	Loop %numEdits% {
		useControl := "Edit" . A_Index
		GetKey()
	}
	setToggle := False
	Loop 4
		GUIControl, -Disabled, Button%A_Index%
	GoSub, clearFocus
	MsgBox, % 0+64+262144, Success!, Done!
Return

KeyHelperRunning(setTog){
	Return (WinActive("KeyList Helper") AND !setTog)
}

GetKey() {
	Global
	GoSub, TurnOn
	MousePressed := False
	GUIControl, -E0x200, %useControl%
	GuiControl,Text, %useControl%, Waiting
	ih.Start()
	ErrorLevel := ih.Wait()
	singleKey := ih.EndKey
	GoSub, TurnOff
	
	IF (MousePressed)
		singleKey := MousePressed
	Else IF (singleKey = "," OR singleKey = "=") ; Comma and equal sign Don't work
		singleKey := ""
	
	singleKey := RegexReplace(singleKey, "Control", "Ctrl")
		
	GuiControl, Text, %useControl%, %singleKey%
	GUIControl, +E0x200, %useControl%
	Loop %numEdits%
	{
		GUIControlGet, tempKey,,Edit%A_Index%
		IF (tempKey = singleKey AND useControl != "Edit" . A_Index)
			GuiControl, Text, Edit%A_Index%,
	}
Return singleKey
}

WM_LBUTTONDOWN() {
	Global useControl, MousePressed
	Send, {Esc}
	MousePressed := "LButton"
	Return 0
}

WM_RBUTTONDOWN() {
	Global useControl, MousePressed
	Send, {Esc}
	MousePressed := "RButton"
	Return 0
}

WM_MBUTTONDOWN() {
	Global useControl, MousePressed
	Send, {Esc}
	MousePressed := "MButton"
	Return 0
}

WM_XBUTTONDOWN(w) {
	Global useControl, MousePressed
	Send, {Esc}
	SetFormat, IntegerFast, Hex
	IF ((w & 0xFF) = 0x20)
		MousePressed := "XButton1"
	Else IF((w & 0xFF) = 0x40)
		MousePressed := "XButton2"
	Return 0
}

WM_MOUSEHWHEEL(w) {
	Global useControl, MousePressed
	Send, {Esc}
	SetFormat, IntegerFast, Hex
	IF ((w & 0xFF0000) = 0x780000)
		MousePressed := "WheelRight"
	Else IF((w & 0xFF0000) = 0x880000)
		MousePressed := "WheelLeft"
	Return 0
}

WM_MOUSEWHEEL(w) {
	Global useControl, MousePressed
	Send, {Esc}
	SetFormat, IntegerFast, Hex
	MousePressed := "" . w + 0x0
	IF ((w & 0xFF0000) = 0x780000)
		MousePressed := "WheelUp"
	Else IF((w & 0xFF0000) = 0x880000)
		MousePressed := "WheelDown"
	Return 0
}

TurnOn:
OnMessage(0x0201, "WM_LBUTTONDOWN")
OnMessage(0x0204, "WM_RBUTTONDOWN")
OnMessage(0x0207, "WM_MBUTTONDOWN")
OnMessage(0x020B, "WM_XBUTTONDOWN")
OnMessage(0x020E, "WM_MOUSEHWHEEL")
OnMessage(0x020A, "WM_MOUSEWHEEL")
Return

TurnOff:
OnMessage(0x0201, "")
OnMessage(0x0204, "")
OnMessage(0x0207, "")
OnMessage(0x020B, "")
OnMessage(0x020E, "")
OnMessage(0x020A, "")
Return

;-------------------------------------------------------------------------------
show_Mouse(bShow := True) { ; show/hide the mouse cursor
;-------------------------------------------------------------------------------
	; https://autohotkey.com/boards/viewtopic.php?p=173707#p173707
    ; WINAPI: SystemParametersInfo, CreateCursor, CopyImage, SetSystemCursor
    ; https://msdn.microsoft.com/en-us/library/windows/desktop/ms724947.aspx
    ; https://msdn.microsoft.com/en-us/library/windows/desktop/ms648385.aspx
    ; https://msdn.microsoft.com/en-us/library/windows/desktop/ms648031.aspx
    ; https://msdn.microsoft.com/en-us/library/windows/desktop/ms648395.aspx
    ;---------------------------------------------------------------------------
    static BlankCursor
    static CursorList := "32512, 32513, 32514, 32515, 32516, 32640, 32641"
        . ",32642, 32643, 32644, 32645, 32646, 32648, 32649, 32650, 32651"
    local ANDmask, XORmask, CursorHandle

    IF (bShow) ; shortcut for showing the mouse cursor
        Return, DllCall("SystemParametersInfo"
            , "UInt", 0x57              ; UINT  uiAction    (SPI_SETCURSORS)
            , "UInt", 0                 ; UINT  uiParam
            , "Ptr",  0                 ; PVOID pvParam
            , "UInt", 0)                ; UINT  fWinIni

    IF (!BlankCursor) { ; create BlankCursor only once
        VarSetCapacity(ANDmask, 32 * 4, 0xFF)
        VarSetCapacity(XORmask, 32 * 4, 0x00)
        BlankCursor := DllCall("CreateCursor"
            , "Ptr", 0                  ; HINSTANCE  hInst
            , "Int", 0                  ; int        xHotSpot
            , "Int", 0                  ; int        yHotSpot
            , "Int", 32                 ; int        nWidth
            , "Int", 32                 ; int        nHeight
            , "Ptr", &ANDmask           ; const VOID *pvANDPlane
            , "Ptr", &XORmask)          ; const VOID *pvXORPlane
    }

    ; set all system cursors to blank, each needs a new copy
    Loop, Parse, CursorList, `,, %A_Space%
    {
        CursorHandle := DllCall("CopyImage"
            , "Ptr", BlankCursor        ; HANDLE hImage
            , "UInt", 2                 ; UINT   uType      (IMAGE_CURSOR)
            , "Int",  0                 ; int    cxDesired
            , "Int",  0                 ; int    cyDesired
            , "UInt", 0)                ; UINT   fuFlags
        DllCall("SetSystemCursor"
            , "Ptr", CursorHandle       ; HCURSOR hcur
            , "UInt",  A_Loopfield)     ; DWORD   id
    }
}

LockMouseToWindow(llwindowname="") {
  IF (!llwindowname) {
	DllCall("ClipCursor", "UInt", 0)
	Return False
  }
  WinGetPos, llX, llY, llWidth, llHeight, %llwindowname%
  VarSetCapacity(llrectA, 16)
  IF (llWidth AND llHeight) {
	NumPut(llX+10,&llrectA+0),NumPut(llY+54,&llrectA+4),NumPut(llWidth-10 + llX,&llrectA+8),NumPut(llHeight-10 + llY,&llrectA+12)
	DllCall("ClipCursor", "UInt", &llrectA)
	Return True
  }
}

installBus:
	InstallUninstallScpVBus(True)
Return
uninstallBus:
	InstallUninstallScpVBus(False)
return

InstallUninstallScpVBus(state:="ERROR") {
	IF (state == "ERROR"){
		MsgBox, % 0+16+262144, Error, Error Encountered! `n`nReloading the Application! Please Wait., 2
		ToolTip, Reloading the Application! Please Wait.
		Reload
		Gosub last
	  }		
	IF (state){
                ToolTip, Installing ScpVBus. Please Wait.
                SetTimer, TipOff, Delete
		RunWait, *Runas devcon.exe install ScpVBus.inf root\ScpVBus, % A_ScriptDir "\ScpVBus", UseErrorLevel Hide
                ToolTip, 
		IF (ErrorLevel == "ERROR"){
		  MsgBox, % 0+16+262144, Error, User Cancelled Installation. `nScpVBus not Installed. `n`nReloading the Application! Please Wait., 3
		  ToolTip, Reloading the Application! Please Wait.
		  Reload
		  Gosub last
		  }
		else {
		  MsgBox, % 0+64+262144, Success, ScpVBus Installation Done. `n`nReloading the Application! Please Wait., 3
		  ToolTip, Reloading the Application! Please Wait.
		  Reload
		  Gosub last
		 }
		}
	Else {
		ToolTip, Uninstalling ScpVBus. Please Wait.
                SetTimer, TipOff, Delete
		RunWait, *Runas devcon.exe remove root\ScpVBus, % A_ScriptDir "\ScpVBus", UseErrorLevel Hide
                ToolTip, 
		IF (ErrorLevel == "ERROR"){
		  MsgBox, % 0+16+262144, Error, User Cancelled Unistallation. `nScpVBus not Uninstalled. `n`nReloading the Application! Please Wait., 3
		  ToolTip, Reloading the Application! Please Wait.
		  Reload
		  Gosub last
		  }
		else {
		  MsgBox, % 0+64+262144, Success, ScpVBus Uninstallation Done . `n`nReloading the Application! Please Wait., 3
		  ToolTip, Reloading the Application! Please Wait.
		  Reload
		  Gosub last
		 }
	}
return
}

; Gets called when mouse moves
; x and y are DELTA moves (Amount moved since last message), NOT coordinates.
MouseEvent(MouseID, x := 0, y := 0){
	Global alt_xSen, alt_ySen
	Static useX, useY, xZero, yZero
	intv := 1
	
	IF (MouseID == "RESET") {
		useX := useY := 0
		SetStick(0,0)
		Return
	}
	
	IF ((x < 0 AND useX > 0) OR (x > 0 AND useX < 0))
		useX := 0
	IF ((y < 0 AND useY > 0) OR (y > 0 AND useY < 0))
		useY := 0
	IF (x AND y)
		intv := 4

	IF (!x)
		xZero++
	IF (xZero > 2) {
		useX := 0
		xZero := 0
	}
	IF (x > 0)
		useX += intv 
	Else
		useX -= intv 

	IF (!y)
		yZero++
	IF (yZero > 2) {
		useY := 0
		yZero := 0
	}
	IF (y > 0)
		useY += intv 
	Else
		useY -= intv 
		
	IF (abs(useX)>alt_xSen)
		useX := useX/abs(useX) * alt_xSen
	Else IF (abs(x) AND abs(useX) < alt_xSen/6)
		useX := useX/abs(useX) * alt_xSen/6

	IF (abs(useY)>alt_ySen)
		useY := useY/abs(useY) * alt_ySen
	Else IF (abs(y) AND abs(useY) < alt_ySen/6)
		useY := useY/abs(useY) * alt_ySen/6

	SetStick(useX/alt_xSen,-useY/alt_ySen)
	Return
}

MouseEvent_OFF(MouseID, x := 0, y := 0){
	Global alt_xSen, alt_ySen
	Static useX, useY
	IF (MouseID == "RESET") {
		useX := useY := 0
		SetStick(0,0)
		Return
	}
	
	IF ((x < 0 AND useX > 0) OR (x > 0 AND useX < 0))
		useX := 0
	IF ((y < 0 AND useY > 0) OR (y > 0 AND useY < 0))
		useY := 0

	IF (!x)
		useX /= 2
	Else
		useX += x
	
	IF (abs(useX)>alt_xSen)
		useX := x/abs(x) * alt_xSen

	IF (!y)
		useY /= 2
	Else 
		useY += y

	IF (abs(useY)>alt_ySen)
		useY := y/abs(y) * alt_ySen
		
	SetStick(useX/alt_xSen,-useY/alt_ySen)
	Return
}

TipOff:
ToolTip, 
return

ConnectedToInternet(flag=0x40)
{
  Return DllCall("Wininet.dll\InternetGetConnectedState"
        , "Str", flag,"Int",0)
}

last:
 
