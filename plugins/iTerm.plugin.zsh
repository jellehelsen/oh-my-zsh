#iTerm stuff
# Put the penultimate and current directory in the iterm tab:

function settab { 
	echo -ne "\e]1;$( echo -ne $PWD:h:t/$PWD:t|sed 's|.*\(.\{20\}\)$|\1|')\a"    
        } 

# Put the string " [zsh]   hostname::/full/directory/path" in the title bar:
    
function settitle { echo -ne "\e]2;[zsh]   $HOST:r:r::$PWD\a" }

# This updates after each change of directory:

function chpwd { settab;settitle }

# These put the name of the program running in the tab, and then remove it
# when the program has finished:

function preexec { printf "\e]1; $(history $HISTCMD | tail -n 1 | cut -b7- ) \a" } 
function precmd { settab }