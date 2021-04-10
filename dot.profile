fast_git_ps1 ()
{
    printf -- "$(git branch 2>/dev/null | grep -e '\* ' | sed 's/^..\(.*\)/ {\1} /')"
}
 
#PS1='\[\033]0;$MSYSTEM:\w\007\033[32m\]\u@\h \[\033[33m\w$(fast_git_ps1)\033[0m\]$ '
#PS1='$PWD> '
#PROMPT_COMMAND='echo -ne "\033]0;${PWD}\007"'
