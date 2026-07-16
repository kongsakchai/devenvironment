# Scripts
source $WORKSPACE/workspaces/.scripts/workspaces.fish

# Executable
set -gx PATH $PATH $WORKSPACE/workspaces/.scripts/bin

# Aliases
alias note="nvim $WORKSPACE/brains/note.md" # Open note file
alias wsconfig="nvim $WORKSPACE/workspaces/.config.fish" # Open workspace config
alias docker="podman" # Use podman as docker
