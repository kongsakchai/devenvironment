# --- Workspaces Management Commands ---

# ws: Make in Workspaces
ws() {
  make -C "$DEV/workspaces/$1" $2
}

# wg: Go to Workspace
wg() {
  cd "$DEV/workspaces/$1"
}

# --- Project Commands ---

# pr: Make in Projects
pr() {
  make -C "$DEV/projects/$1" $2
}

# pg: Go to Projects
pg() {
  cd "$DEV/projects/$1" || return
}

# --- Lab Commands ---

# lb: Manage Labs
lb() {
  make -C "$DEV/labs/$1" $2
}

# lg: Go to Labs
lg() {
  cd "$DEV/labs/$1"
}
