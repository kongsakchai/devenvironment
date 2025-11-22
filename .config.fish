# Scripts
source $WORKSPACE/workspaces/.scripts/workspaces.fish

# Executable
set -x PATH $PATH $WORKSPACE/workspaces/.scripts/exec

# Aliases
alias note="vim $WORKSPACE/brains/note.md" # Open note file
alias wsconfig="vim $WORKSPACE/workspaces/.config.fish" # Open workspace config
alias docker="podman" # Use podman as docker
