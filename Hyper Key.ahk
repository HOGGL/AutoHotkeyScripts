#NoEnv ; recommended for performance and compatibility with future autohotkey releases.
#UseHook
#SingleInstance force

SendMode Input

~RCtrl::
    Send {RCtrl DownTemp}{RShift DownTemp}{RAlt DownTemp}{RWin DownTemp}
    KeyWait, RCtrl
    Send {RCtrl DownTemp}{RShift Up}{RAlt Up}{RWin Up}
    if (A_PriorHotkey = A_ThisHotkey) && (A_TimeSincePriorHotkey < 400)
        Send {Esc}
return

~RCtrl & h:: Send {Left}
~RCtrl & j:: Send {Down}
~RCtrl & k:: Send {Up}
~RCtrl & l:: Send {Right}

~RCtrl & b:: Send {PgUp}
~RCtrl & f:: Send {PgDn}

#If GetKeyState("LAlt", "P")
    ~RCtrl & j:: Send !{Down}
    ~RCtrl & k:: Send !{Up}

#If GetKeyState("LShift", "P") and GetKeyState("LCtrl", "P")
    ~RCtrl & h:: Send +^{Left}
    ~RCtrl & l:: Send +^{Right}

#If GetKeyState("LShift", "P")
    ~RCtrl & h:: Send +{Left}
    ~RCtrl & j:: Send +{Down}
    ~RCtrl & k:: Send +{Up}
    ~RCtrl & l:: Send +{Right}

#If GetKeyState("LCtrl", "P")
    ~RCtrl & h:: Send ^{Left}
    ~RCtrl & j:: Send ^{Down}
    ~RCtrl & k:: Send ^{Up}
    ~RCtrl & l:: Send ^{Right}

#If GetKeyState("LWin", "P")
    ~RCtrl & h:: Send #{Left}
    ~RCtrl & j:: Send #{Down}
    ~RCtrl & k:: Send #{Up}
    ~RCtrl & l:: Send #{Right}
return
