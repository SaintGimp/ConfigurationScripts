[System.Environment]::SetEnvironmentVariable("PATH", $Env:Path + ";C:\Program Files (x86)\Beyond Compare 3", "Machine")

git config --global diff.tool bcompare
git config --global difftool.bcompare.cmd 'bcompare \"$LOCAL\" \"$REMOTE\"'
git config --global difftool.prompt false

git config --global merge.tool bcompare
git config --global mergetool.bcompare.cmd 'bcompare \"$LOCAL\" \"$REMOTE\" \"$BASE\" \"$MERGED\"'
git config --global mergetool.bcompare.trustExitCode true 
 
copy ".\git-diffall.sh" "C:\Program Files (x86)\Git\cmd\git-diffall"
 
"Git configured to use BeyondCompare."