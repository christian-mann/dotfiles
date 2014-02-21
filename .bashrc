export PATH=~/bin:$PATH:/sbin:/usr/sbin:/opt/metasploit-framework/:/home/christian/Downloads/gnuarm-4.0.2/bin:/usr/local/bin/flair61/bin/linux
source /usr/local/bin/virtualenvwrapper.sh
export DEVKITPRO=/opt/devkitpro;
export DEVKITPPC=$DEVKITPRO/devkitPPC;
if [ -e ~/.bash_aliases ]; then . ~/.bash_aliases; fi
export EDITOR=vim

export WORKON_HOME=~/.virtualenvs

export LOLCOMMITS_DELAY=3

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

# enable autocompletion
#. /etc/bash_completion

#$greeting
