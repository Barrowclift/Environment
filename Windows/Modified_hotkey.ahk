; Fixing Window's Broken Shit

; Prevent diverting focus away to the menu on left alt key
~LAlt Up:: return

; Prevent the Windows Start Menu from ever showing it's ugly face
~LWin Up:: return
~RWin Up:: return

; Text navigation

!Left::
Send {Home}
return

!Right::
Send {End}
return

#Left::
Send ^{Left}
return

#Right::
Send ^{Right}
return

; Selecting text

!+Left::
Send +{Home}
return

!+Right::
Send +{End}
return

#+Right::
Send ^+{Right}
return

#+Left::
Send ^+{Left}
return

; Deleting text

!Backspace::
Send +{Home}
Send {Backspace}
return

!Delete::
Send +{End}
Send {Delete}
return

#Backspace::
Send ^+{Left}
Send {Backspace}
return

#Delete::
Send ^+{Right}
Send {Delete}
return

; Cut, copy, paste, save ...

!c::
Send ^{c}
return

!v::
Send ^{v}
return

!x::
Send ^{x}
return

!a::
Send ^{a}
return

!f::
Send ^{f}
return

!z::
Send ^{z}
return

+!z::
Send ^{y}
return

!s::
Send ^{s}
return

!o::
Send ^{o}
return

!w::
Send ^{w}
return

!q::
Send !{F4}
return

!i::
Send !{Enter}
return