#SingleInstance, Force
; SendMode Input
SetWorkingDir, %A_ScriptDir%

gameTitle = 魔兽世界
isAbort := False

counter := 0

Gui Add, StatusBar, ,  
Gui Add, Button, , &Start
Gui Add, Button, ym, &Pause

Gui Show, w620 h420, Window

return

Battle() {
  global counter
  global isAbort = False
  Loop {
    Random, time_key, 200, 600
    Sleep, %time_key%

    WinActivate, %gameTitle%

    Random, r, 0, 6
    If (r > 5)  
      send, {WheelDown} 
    Else
      send, {WheelUp}
  } Until isAbort
}

ButtonStart() {
  Battle()
  return
}

ButtonPause() {
  global isAbort = True
  return
}

GuiEscape:
GuiClose:
  ExitApp
