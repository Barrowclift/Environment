#  -----------------------------------------------------------------------------
#
#  SECTIONS:
#  1.  Networking
#  2.  File and Folder Management
#  3.  Improved Default Commands
#  4.  Third-party Commands
#  5.  Utility Commands
#
#  -----------------------------------------------------------------------------


# ==============================================================================
# 1.  NETWORKING
# ==============================================================================

alias simpleServer='python3 -m http.server'

# ==============================================================================
# 2.  FILE AND FOLDER MANAGEMENT
# ==============================================================================

# Create parent directories if necessary by default
alias mkdir='mkdir -p'
# rysnc is a hard name to remember, cpProgress is easier
alias cpProgress='rsync --progress'

# Display every instance of the given command found in the path
alias which='type -all'

# Shows the individual partition sizes without the temporary memory values
alias partitionsize='df -hT --exclude-type=tmpfs --exclude-type=devtmpfs'
# Shows the size of the current directory
alias size='du -ch | grep total'
# Gets the total disk usage on your machine
alias disksize='df -h --total | grep total'
# Gives you what is using the most space. Both directories and files.
alias largestfiles='du -hsx * | sort -rh | head -10'

# File tree
alias tree="find . -print | sed -e 's;[^/]*/;|____;g;s;____|; |;g'"


# ==============================================================================
# 3.  IMPROVED DEFAULT COMMANDS
# ==============================================================================

# Always ask before replacing, we're not savages
alias cp='cp -i'
alias move='mv -i'

alias ls='ls --color=auto'
alias grep='grep --colour=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'

alias calculator='bc -l'

alias f='open -a Finder ./'


# ==============================================================================
# 4.  THIRD-PARTY COMMANDS
# ==============================================================================

alias haskell='ghci'
alias sql='sqlite3'

# ==============================================================================
# 5.  UTILITY COMMANDS
# ==============================================================================

# Print out every path that makes up $PATH
alias path='echo -e ${PATH//:/\\n}'

# Reload bash_profile
alias source='source ~/.bash_profile'
