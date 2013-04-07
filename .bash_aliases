#!/bin/bash

alias md="mkdir";
alias sl="sl -e";
alias open="xdg-open";
alias diff="colordiff";
alias gcc="gcc -g --std=c99";
alias watch="watch -n 1";
alias please="sudo"

# tab/space checking by default
# don't write pyc files
alias python="python -t -B"

# alias git to g
g() {
	if [ $# -eq 0 ]; then
		git status
	else
		git $@
	fi
}
complete -o bashdefault -o default -o nospace -F _git g 2>/dev/null \
	    || complete -o default -o nospace -F _git g

if [ -z "$PS1" ]; then
	true;
else
	# allow aliases after sudo
	alias sudo="sudo "
	cd() { command cd "$@" && ls; };
	mkdir() { command mkdir "$@" && cd "$@"; };
	alias christian="echo Yup.";
	alias ls="ls -C --color=auto";
	alias batman="cat ~/.config/batmanBefore.txt; acpi | grep '[0-9]\?[0-9]%' -o | head -1 | tr -d '\n'; cat ~/.config/batmanAfter.txt"
fi;
