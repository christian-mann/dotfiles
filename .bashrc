export PATH=~/bin:$PATH:/sbin:/usr/sbin:/usr/local/gcc-4.8.0-qt-4.8.4-for-mingw32/win32-gcc/bin/:/Users/christian/Downloads/android-sdk-macosx/platform-tools

# gnu coreutils
export PATH="/usr/local/opt/coreutils/libexec/gnubin:$PATH"

if [ -e ~/.bash_aliases ]; then . ~/.bash_aliases; fi
export EDITOR=vim

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

export PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[01;34m\] \w \$\[\033[00m\] '
export PATH=/usr/local/texlive/2014/bin/x86_64-darwin:$PATH
alias ipython="/Users/christian/Library/Python/2.7/bin/ipython"
PATH=$PATH:/usr/local/texlive/2014/bin/x86_64-darwin/

shopt -s globstar
