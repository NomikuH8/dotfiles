#!/bin/bash
export PS1="\[$(tput bold)\]\[$(tput setaf 1)\][\[$(tput setaf 3)\]\u\[$(tput setaf 2)\]@\[$(tput setaf 4)\]\h \[$(tput setaf 5)\]\W\[$(tput setaf 1)\]]\[$(tput setaf 7)\]\\$ \[$(tput sgr0)\]"

[ -f "$HOME/.config/aliasrc" ] && source "$HOME/.config/aliasrc"
alias ls='ls --color'


# aliases for common commands
alias \
	cp="cp -iv" \
	mv="mv -iv" \
	rm="rm -v" \
	mkdir="mkdir -pv" \
	yt="youtube-dl --add-metadata -i" \
	yta="yt -x -f beataudio/best"

# colorize commands if possible
alias \
	ls="ls -hN --color=auto --group-directories-first" \
	grep="grep --color=auto" \
	diff="diff --color=auto" \
	ccat="highlight --out-format=ansi"


LS_COLORS='di=36:ln=35:so=33:pi=31:ex=1;32:bd=34;46:cd=34;43:su=30;41:sg=30;46:tw=30;42:ow=30;43'
export LS_COLORS

echo 'set completion-ignore-case on' | tee -a ~/inputrc
clear

stty -ixon
