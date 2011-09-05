# Powershell links have console window settings
copy "Windows PowerShell (x86).lnk" "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Accessories\Windows PowerShell"
copy "Windows PowerShell.lnk" "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Accessories\Windows PowerShell"

# More console window settings
& ".\Console Settings.reg"
 
"Console configured."