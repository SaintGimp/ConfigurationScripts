# PSCX command to add Powershell to Explorer context menu
Enable-OpenPowerShellHere

# Set Explorer and Start Menu settings
& "$ProfileDir\Configuration\Explorer Settings.reg"

# Set Send To menu items
copy "$env:APPDATA\Microsoft\Windows\Start Menu\Programs\Accessories\Notepad.lnk" "$env:APPDATA\Microsoft\Windows\SendTo\Notepad.lnk"
erase "C:\Users\Eric\AppData\Roaming\Microsoft\Windows\SendTo\Bluetooth File Transfer.LNK"
erase "C:\Users\Eric\AppData\Roaming\Microsoft\Windows\SendTo\Desktop (create shortcut).DeskLink"
erase "C:\Users\Eric\AppData\Roaming\Microsoft\Windows\SendTo\Documents.mydocs"
erase "C:\Users\Eric\AppData\Roaming\Microsoft\Windows\SendTo\Fax Recipient.lnk"

"Explorer configured."