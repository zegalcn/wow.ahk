#SingleInstance, Force
; SendMode Input
; SetWorkingDir, %A_ScriptDir%

gameTitle = "魔兽世界"
isAbort = False

^Esc::ExitApp
$Esc::Reload

$F1::
  MsgBox, Shift-Esc to reload `nCtr-Esc to exit `nF1 to open this help menu`nF2 to set upper-left bound `nF3 to set lower-right bound `nF4 to set color `nF5 to print information `nF7 to start fishing
  return

$F2::
  Loop {
    IF (isAbort) {
      break
    }

    Random, time_key, 200, 600
    Sleep, %time_key%
    ; SetMouseDelay, %time_key%

    WinActivate, %gameTitle%

    Random, r, 0, 6
    If (r > 5)  {
      send, {WheelDown}
      Continue 
    }
    send, {WheelUp}
  }