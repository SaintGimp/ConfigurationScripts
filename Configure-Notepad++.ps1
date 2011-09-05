# NotepadReplacement.exe is a shim that launches Notepad++ whenever Notepad.exe is executed on the system.
# This is mostly harmless except for the rare instance where a tool wants to launch Notepad.exe and then wait
# for the process to exit before continuing.  This shim will break that scenario so you'll need to unregister
# it in that case.
copy .\NotepadReplacement.exe "C:\Program Files (x86)\Notepad++"
& ".\NotepadReplacement.reg"

# Notepad++ settings
$config = [xml](gc "$env:APPDATA\Notepad++\config.xml")
$config.NotepadPlus.GUIConfigs.GUIConfig |? {$_.name -eq "RememberLastSession"} |% {$_.innertext = "no"}
$config.NotepadPlus.GUIConfigs.GUIConfig |? {$_.name -eq "TabBar"} |% {$_.SetAttribute("closeButton", "yes")}
$config.Save("$env:APPDATA\Notepad++\config.xml")

"Notepad++ configured."