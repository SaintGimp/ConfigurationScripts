git config --global core.autocrlf false
git config --global alias.hist "log --graph --pretty=format:'%C(red)%h%Creset -%C(bold red)%d%Creset %s %Cgreen(%cr) %C(cyan)<%an>%Creset' --abbrev-commit --date=relative"
git config --global core.editor "$($profiledir.Replace("\", "/"))/Configuration/npp.sh"
git config --global user.name "Eric Lee"
git config --global user.email "saintgimp@hotmail.com"
git config --global core.pager "less -FSXE"
git config --global push.default upstream

# I use the default Powershell dark blue background color and normal red (dark red) doesn't show up well
git config --global color.ui auto
git config --global color.diff.old "red bold"
git config --global color.branch.remote "red bold"
git config --global color.status.added "red bold"
git config --global color.status.changed "red bold"
git config --global color.status.untracked "red bold"
git config --global color.status.nobranch "red bold"

copy .\less.exe "C:\Program Files (x86)\Git\bin"

"Git configured."