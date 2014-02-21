#!/bin/bash

alias md="mkdir";
alias sl="sl -e";
alias open="xdg-open &>/dev/null &";
alias diff="colordiff";
alias gcc="gcc -g --std=c99";
alias g++="g++ -g";
alias gpg="gpg --keyserver pgp.mit.edu";
alias watch="watch -n 1";
#alias make="make -j3";
alias please="sudo";

alias clip="xsel --clipboard";

alias lock="xscreensaver-command -lock && sudo pm-suspend";

# -B don't write pyc files
# -t tab/space checking by default
alias python="python -B -t";

# alias git to g
g() {
	if [ $# -eq 0 ]; then
		git status;
	else
		git "$@";
	fi
}
source /usr/share/bash-completion/completions/git
complete -o bashdefault -o default -o nospace -F _git g 2>/dev/null \
	    || complete -o default -o nospace -F _git g;

# autocomplete ssh hostnames
#_ssh_completion() {
	#perl -ne 'print "$1 " if /^Host (.+)$/' ~/.ssh/config;
	#ls;
#}
#complete -W "$(_ssh_completion)" ssh scp sftp;

if [ -z "$PS1" ]; then
	true;
else
	# allow aliases after sudo
	alias sudo="sudo ";
	cd() {
		command cd "$@" && ls; 
		#complete -W "$(_ssh_completion)" ssh scp sftp; # ehhh
	};
	mkdir() { command mkdir "$@" && cd "$@"; };
	alias christian="echo Yup.";
	alias ls="ls -C --color=auto";
	alias batman="cat ~/.config/batmanBefore.txt; acpi | grep '[0-9 ][0-9]%' -o | head -1 | tr -d '\n'; cat ~/.config/batmanAfter.txt"
	bdiff() { colordiff <(xxd "$1") <(xxd "$2"); };
	google() { if [ "$#" == 0 ]; then w3m http://www.google.com; else w3m http://www.google.com/search?q=`echo $* | tr ' ' '+'`; fi; }; 
	lucky() { w3m http://www.google.com/search?q=`echo $* | tr ' ' '+'`'&btnI=I%27m+Feeling+Lucky'; };
fi;
