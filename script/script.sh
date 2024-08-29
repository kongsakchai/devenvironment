#! /bin/bash

# ws: Make in Workspaces
ws() {
  make -C "$DEV/workspaces/$1" $2
}

# wg: Go to Workspace
wg() {
  cd "$DEV/workspaces/$1"
}

# wv: View Workspaces
wv() {
  ls "$DEV/workspaces"
}

# --- Project Commands ---

# pr: Make in Projects
pr() {
  make -C "$DEV/projects/$1" $2
}

# pg: Go to Projects
pg() {
  cd "$DEV/projects/$1"
}

# pv: View Projects
pv() {
  ls "$DEV/projects"
}

# --- Lab Commands ---

# lb: Make in Projects
lb() {
  make -C "$DEV/labs/$1" $2
}

# lg: Go to Labs
lg() {
  cd "$DEV/labs/$1"
}

# lv: View Labs
lv() {
  ls "$DEV/labs"
}

# --- Second Braind Command ---

# sb: Make in Second Brains ---
br() {
  make -C "$DEV/brains" $1
}

# sg: Go to Second Brains ---
brg() {
  cd "$DEV/brains"
}

# sv: View Second Brains ---
brv() {
  ls "$DEV/brains"
}
