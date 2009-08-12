export EDITOR='mate -w'

. ~/.bash_aliases
. ~/.git-completion


prompt()
{
	local        BLUE="\[\033[0;34m\]"
	local         RED="\[\033[0;31m\]"
	local   LIGHT_RED="\[\033[1;31m\]"
	local       GREEN="\[\033[0;32m\]"
	local LIGHT_GREEN="\[\033[1;32m\]"
	local       WHITE="\[\033[1;37m\]"
	local  LIGHT_GRAY="\[\033[0;37m\]"

	case $TERM in
	  xterm*)
	  TITLEBAR='\[\033]0;\u@\h:\w\007\]'
	  ;;
	  *)
	  TITLEBAR=""
	  ;;
	esac
 
	PS1="${TITLEBAR}$BLUE[$RED\$(date +%H:%M) $RED\u@\h:\W$WHITE\$(__git_ps1)$BLUE]$GREEN\$ "
}

prompt
