export PATH=$PATH:/sbin:/opt/metasploit-framework/
if [ -e ~/.bash_aliases ]; then . ~/.bash_aliases; fi
export EDITOR=vim

if [ -z "$COLUMNS" ]; then
	COLUMNS=`tput cols`;
fi
greeting="/usr/games/fortune -a | cowsay"
if [ -z "$COLUMNS" ]; then
	echo -e
else
	greeting="$greeting -W $(($COLUMNS - 5))"
fi
if [ "$TERM" != "linux" ]; then
	greeting="$greeting | lolcat"
fi

#$greeting
