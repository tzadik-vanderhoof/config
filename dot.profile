uname_o=$(uname -o)
if [[ "$uname_o" = "Cygwin" ]]; then
    PATH=$PATH:~/config/bin/cygwin
else
    PATH=$PATH:~/config/bin
fi
