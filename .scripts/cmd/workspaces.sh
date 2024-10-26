#! /bin/bash

dev() {
  cd "$ME"
}

# ws: Make in Workspaces
ws() {
  make -C "$ME/workspaces/$1" $2
}

# wg: Go to Workspace
wg() {
  cd "$ME/workspaces/$1"
}

# wv: View Workspaces
wv() {
  ls "$ME/workspaces"
}

# --- Project Commands ---

# pr: Make in Projects
pr() {
  make -C "$ME/projects/$1" $2
}

# pg: Go to Projects
pg() {
  cd "$ME/projects/$1"
}

# pv: View Projects
pv() {
  ls "$ME/projects"
}

# --- Lab Commands ---

# lb: Make in Projects
lb() {
  make -C "$ME/labs/$1" $2
}

# lg: Go to Labs
lg() {
  cd "$ME/labs/$1"
}

# lv: View Labs
lv() {
  ls "$ME/labs"
}

# --- Second Braind Command ---

# sb: Make in Second Brains ---
br() {
  make -C "$ME/brains" $1
}

# sg: Go to Second Brains ---
brg() {
  cd "$ME/brains"
}

# sv: View Second Brains ---
brv() {
  ls "$ME/brains"
}
