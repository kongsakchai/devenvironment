#! /bin/bash

me() {
    cd $(dirsearch "$1" $WORKSPACE)
}

# --- Workspace Commands ---
work_path="$WORKSPACE/workspaces"

# ws: Make in Workspaces
ws() {
    make -C $(dirsearch "$1" $work_path) $2 FROM=$(PWD)
}

# wg: Go to Workspace
wg() {
    cd $(dirsearch "$1" $work_path)
}

# --- Project Commands ---
project_path="$WORKSPACE/projects"

# pr: Make in Projects
pr() {
    make -C $(dirsearch "$1" $project_path) $2 FROM=$(PWD)
}

# pg: Go to Projects
pg() {
    cd $(dirsearch "$1" $project_path)
}

# --- Lab Commands ---
lab_path="$WORKSPACE/labs"

# lb: Make in Projects
lb() {
    make -C $(dirsearch "$1" $lab_path) $2 FROM=$(PWD)
}

# lg: Go to Labs
lg() {
    cd $(dirsearch "$1" $lab_path)
}

# --- Second Braind Command ---
brain_path="$WORKSPACE/brains"

# sb: Make in Second Brains ---
br() {
    make -C $(dirsearch "$1" $brain_path) $2 FROM=$(PWD)
}

# sg: Go to Second Brains ---
brg() {
    cd $(dirsearch "$1" $brain_path)
}
