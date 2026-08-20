# Scripts
source $WORKSPACE/workspaces/workspaces.fish

# Executable
set -gx PATH $PATH $WORKSPACE/workspaces/bin

# Aliases
alias wsconfig="nvim $WORKSPACE/workspaces/.config.fish" # Open workspace config
