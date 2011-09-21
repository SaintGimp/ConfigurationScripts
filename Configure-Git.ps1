git config --global core.autocrlf false
git config --global alias.lg "log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit --date=relative"
git config --global core.editor "$($profiledir.Replace("\", "/"))/Configuration/npp.sh"
git config --global user.name "Eric Lee"
git config --global user.email "saintgimp@hotmail.com"
git config --system core.pager "less -FE"

"Git configured."