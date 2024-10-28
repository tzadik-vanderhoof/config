uname_o=$(uname -o)
if [[ "$uname_o" = "Cygwin" ]]; then
    PATH=$PATH:~/config/bin/cygwin
else
    PATH=$PATH:~/config/bin
fi

fast_git_ps1 ()
{
    printf -- "$(git branch 2>/dev/null | grep -e '\* ' | sed 's/^..\(.*\)/ {\1} /')"
}

ed ()
{
    /c/Program\ Files\ \(x86\)/GnuWin32/bin/ed.exe -p'> ' -v "$@"
}
 
#PS1='\[\033]0;$MSYSTEM:\w\007\033[32m\]\u@\h \[\033[33m\w$(fast_git_ps1)\033[0m\]$ '
#PS1='$PWD> '
#PROMPT_COMMAND='echo -ne "\033]0;${PWD}\007"'
export PATH

