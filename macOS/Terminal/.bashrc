# This file is sourced by all *interactive* bash shells on startup,
# including some apparently interactive shells such as scp and rcp
# that can't tolerate any output.  So make sure this doesn't display
# anything or bad things will happen !

# Test for an interactive shell.  There is no need to set anything
# past this point for scp and rcp, and it's important to refrain from
# outputting anything in those cases.

# This .bashrc was formed with the help of Kurt Schmidt and lots of fine folks
# over at dotfiles.org like xabbott and chris71mach1. Others included
# onyxleopard from reddit.com/r/osxterminal and lopespm on Github.
if [[ $- != *i* ]] ; then
	# Shell is non-interactive. Quit!
	return
fi

#  -----------------------------------------------------------------------------
#
#  SECTIONS:
#  1.  Environment Configuration
#  2.  Terminal Functions
#
#  -----------------------------------------------------------------------------


# ==============================================================================
# 1.  ENVIRONMENT CONFIGURATION
# ==============================================================================

# PATH
# ----------------------------------------------
# Default path
export PATH=/usr/bin:/bin:/usr/sbin:/sbin:$PATH
# Any path additions go here

# SERVERS & VMS
# ----------------------------------------------
# Any server or VM host variables go here

# COLORS
# ----------------------------------------------
# See http://www.linux-sxs.org/housekeeping/lscolors.html for color guide
# Music (Yellow)
export LS_COLORS="*.m4a=00;33:*.mp3=00;33:*.flac=00;33:*.aac=00;33:*.aiff=00;33"
# Movie (Yellow)
export LS_COLORS="*.m4v=00;33:*.mov=00;33:*.mpg=00;33:*.mp4=00;33:*.mkv=00;33:${LS_COLORS}"
# Pictures (Magenta)
export LS_COLORS="*.jpg=00;35:*.png=00;35:*.tiff=00;35:*.tif=00;35:*.gif=00;35:*.pdf=00;35:${LS_COLORS}"
# Archives (Red)
export LS_COLORS="*.tar=00;31:*.tgz=00;31:*.zip=00;31:*.gz=00;31:*.dmg=00;31:*.jar=00;31:*.rar=00;31:*.7z=00;31:*.sublime-package=00;31:*.war=00;31:${LS_COLORS}"

# Add color in Terminal, required to "turn on" colors for OS X and FreeBSD
export CLICOLOR=1

# Colorize and format man pages
export LESS_TERMCAP_mb=$'\e[01;31m'
export LESS_TERMCAP_md=$'\e[1;94;1;94m'
export LESS_TERMCAP_me=$'\e[0m'
export LESS_TERMCAP_se=$'\e[0m'
export LESS_TERMCAP_so=$'\e[0;103m'
export LESS_TERMCAP_ue=$'\e[0m'
export LESS_TERMCAP_us=$'\e[1;31;1;31m'


# PROMPT
# ----------------------------------------------
export RED='\[\033[0;31m\]'
export BOLD_RED='\[\033[1;31m\]'
export CYAN='\[\033[0;36m\]'
export BOLD_CYAN='\[\033[1;36m\]'
export BLUE='\[\033[0;34m\]'
export NORMAL='\[\033[00m\]'
export GREEN='\[\033[0;32m\]'
export YELLOW='\[\033[0;33m\]'
export BOLD_YELLOW='\[\033[1;33m\]'
export RESET='\[\033[0m\]'

# Thanks to Michal Kottman for his method of showing git branches in the
# prompt: https://gist.github.com/mkottman/1936195
PS_LINE=`printf -- ' ' {1..200}`
function parse_git_branch {
	PS_BRANCH=''
	PS_FILL=${PS_LINE:0:$COLUMNS}
	if [ -d .svn ]; then
		PS_BRANCH="(svn r$(svn info|awk '/Revision/{print $2}'))"
		return
	elif [ -f _FOSSIL_ -o -f .fslckout ]; then
		PS_BRANCH="(fossil $(fossil status|awk '/tags/{print $2}')) "
		return
	fi
	ref=$(git symbolic-ref HEAD 2> /dev/null) || return
	PS_BRANCH="(git ${ref#refs/heads/}) "
}
PROMPT_COMMAND="parse_git_branch ; $PROMPT_COMMAND"
PS_INFO="${BOLD_CYAN}\w"
PS_GIT="${YELLOW}\$PS_BRANCH"
TAG=""
if [ $(id -u) -eq 0 ];
then # you are root, add ADMIN to prompt
	TAG="ROOT"
fi
export PS1="\${PS_FILL}\[\033[0G\]${PS_INFO} ${PS_GIT}\n${BOLD_YELLOW}${TAG}${BOLD_RED}\$${RESET} "


# VARIOUS
# ----------------------------------------------
# Set default editor
export EDITOR=/usr/bin/vim

# Try to correct spelling errors in the cd command
shopt -s cdspell
# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize
# make less more friendly for non-text input files, see lesspipe(1)
[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

# Using alias definitions from .bash_aliases.
if [ -f ~/.bash_aliases ]; then
	. ~/.bash_aliases
fi
# Enable programmable completion features
if [ -f /etc/bash_completion ]; then
	. /etc/bash_completion
fi


# ==============================================================================
# 2.  TERMINAL FUNCTIONS
# ==============================================================================

# Easier and better extractor
extract () {
	# Must use "$@" if we want all arguments (with white space) to be treated
	# As one file argument. This, however, restricts the command to one file 
	# or directory argument at a time, so while that's never an issue for me
	# personally do take note of this.
	if [ -f "$@" ] ; then
		case "$@" in
			*.tar.bz2)  tar xjf "$@"    ;;
			*.tar.gz)   tar xzf "$@"    ;;
			*.bz2)      bunzip2 "$@"    ;;
			*.rar)      rar x "$@"      ;;
			*.gz)       gunzip "$@"     ;;
			*.tar)      tar xf "$@"     ;;
			*.tbz2)     tar xjf "$@"    ;;
			*.tgz)      tar xzf "$@"    ;;
			*.zip)      unzip "$@"      ;;
			*.Z)        uncompress "$@" ;;
			*)          echo "'$@' cannot be extracted via extract()" ;;
		esac
	else
		echo "'$@' is not a valid file"
	fi
}

# An easer zip command
# Usage: $ zipper ${THE_FILE}
zipper () {
	if [ $(echo $@ | tail -c 2) == "/" ] ; then
		file="${@%?}"
	else
		file="$@"
	fi

	zip -r -q "$file.zip" "$file"
}

# An easier tar compression command
# Usages: $ tartar ${THE_FILE}
tartar () {
	if [ $(echo $@ | tail -c 2) == "/" ] ; then
		file="${@%?}"
	else
		file="$@"
	fi

	tar czf "$file.tar.gz" "$file"
}

# Move a file and automatically traverse to the directory it was moved to
md () {
	if [ -f "$1" -o -d "$1" ] ; then
		if [ -d "$2" ] ; then
			mv "$1" "$2"
			cd "$2"
		else
			echo "'$2' is not a valid directory"
		fi
	else
		echo "'$1' is not a valid file"
	fi
}

# Removes all .DS_Store and ._.DS_Store files from the current directory down
dsdel () {
	find . -name ".DS_Store" -delete
}

# Move deleted files to OS X's trash (safer)
trash () {
	command mv "$@" ~/.Trash ;
}

# Preview file in OS X's QuickLook
ql () {
	qlmanage -p "$*" >& /dev/null;
}

function gui_password {
    if [[ -z $1 ]]; then
        gui_prompt="Password:"
    else
        gui_prompt="$1"
    fi
    PW=$(osascript <<EOF
    tell application "System Events"
        activate
        text returned of (display dialog "${gui_prompt}" default answer "" with hidden answer)
    end tell
EOF
    )

    echo -n "${PW}"
}
