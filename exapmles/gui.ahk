#SingleInstance, Force
; SendMode Input
SetWorkingDir, %A_ScriptDir%

gameTitle = "魔兽世界"
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
    sleep, 1000
    SB_SetText("counter: " counter)
    counter := counter + 1
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
