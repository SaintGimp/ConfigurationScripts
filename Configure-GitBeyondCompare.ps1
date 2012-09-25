[System.Environment]::SetEnvironmentVariable("PATH", $Env:Path + ";C:\Program Files (x86)\Beyond Compare 3", "Machine")

git config --global diff.tool bc3
git config --global difftool.bc3.path "c:/program files (x86)/beyond compare 3/bcomp.com"
git config --global difftool.prompt false

git config --global merge.tool bc3
git config --global mergetool.bc3.path "c:/program files (x86)/beyond compare 3/bcomp.com"
git config --global mergetool.bc3.trustExitCode true 
git config --global mergetool.keepBackup false
 
copy ".\git-diffall.sh" "C:\Program Files (x86)\Git\cmd\git-diffall"
 
"Git configured to use BeyondCompare."