#os detection

export PLATFORM=`uname`
source ~/.bash_functions

# more accurate platform detection for linux flavours, expand later 
# export DISTRO=`lsb_release -i | awk '{print $3}'`


case $PLATFORM in
	Darwin) #osx only
		alias portscan="/System/Library/CoreServices/Applications/Network\ Utility.app/Contents/Resources/stroke" 
		alias cask='brew cask'
		export colourflag="-G"
		export package_manager="brew"

		;;
	Linux)
		export colourflag="--color"
		export package_manager='sudo apt-get'
		export DIR_COLORS="$HOME/.dircolors"
        eval "`dircolors -b $DIR_COLORS`"
		;;
	*)
		echo "wtf platform is this??"
esac





## prefs

bind "set completion-ignore-case on"



## exports & environment variables

export PATH="$PATH:$HOME/bin"
export EDITOR='subl -w'
export CLICOLOR=1
export LSCOLORS=gxFxCxDxBxegedabagaced
export PS1="\[\e[00;33m\]\u\[\e[0m\]\[\e[00;37m\]@\h:\[\e[0m\]\[\e[00;36m\][\w]:\[\e[0m\]\[\e[00;37m\] \[\e[0m\]"

## aliases

alias ls="ls $colourflag"
alias ll='ls -lh'
alias la='ls -lah'
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias pfind='ps aux | grep -i'
alias grep='grep -i --color=auto'
alias sha1='openssl sha1'
alias qfind="find . -name "
alias myip='curl ip.appspot.com'
alias zeus='ssh -p 6922 chewlings.duckdns.org'
alias update="$package_manager update"
alias upgrade="$package_manager upgrade"
complete -cf sudo man


