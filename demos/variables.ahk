#Requires AutoHotkey v2.0

#NoTrayIcon
#Warn All, Off
s := "", FileAppend
for _, k in ["a_mydocuments"]
    try if SubStr(k, 1, 2) = "a_" && !IsObject(v := %k%)
        s .= SubStr(k, 3) "|" v "\`n"
MsgBox(s)