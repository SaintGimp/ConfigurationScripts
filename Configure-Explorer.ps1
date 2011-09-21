# PSCX command to add Powershell to Explorer context menu
Enable-OpenPowerShellHere

# Set Explorer and Start Menu settings
& "$ProfileDir\Configuration\Explorer Settings.reg"

# Set Send To menu items
copy "$env:APPDATA\Microsoft\Windows\Start Menu\Programs\Accessories\Notepad.lnk" "$env:APPDATA\Microsoft\Windows\SendTo\Notepad.lnk"
erase "C:\Users\Eric\AppData\Roaming\Microsoft\Windows\SendTo\Bluetooth File Transfer.LNK" -ErrorAction:SilentlyContinue
erase "C:\Users\Eric\AppData\Roaming\Microsoft\Windows\SendTo\Desktop (create shortcut).DeskLink"  -ErrorAction:SilentlyContinue
erase "C:\Users\Eric\AppData\Roaming\Microsoft\Windows\SendTo\Documents.mydocs"  -ErrorAction:SilentlyContinue
erase "C:\Users\Eric\AppData\Roaming\Microsoft\Windows\SendTo\Fax Recipient.lnk"  -ErrorAction:SilentlyContinue

"Explorer configured.  You'll need to log out and back in to see Start Menu changes."