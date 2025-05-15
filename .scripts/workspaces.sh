#! /bin/bash

me() {
    cd $(fdsearch "$1" $WORKSPACE)
}

# --- Workspace Commands ---
work_path="$WORKSPACE/workspaces"
history_file="$work_path/.history"

# ws: Make in Workspaces
ws() {
    make -C $(fdsearch "$1" $work_path) $2 FROM=$(PWD)
}

# wg: Go to Workspace
wg() {
    dir=$(fdsearch "$1" $work_path)
    cd $dir
}

# --- Project Commands ---
project_path="$WORKSPACE/projects"

# pr: Make in Projects
pr() {
    make -C $(fdsearch "$1" $project_path) $2 FROM=$(PWD)
}

# pg: Go to Projects
pg() {
    dir=$(fdsearch "$1" $project_path)
    cd $dir
}

# --- Lab Commands ---
lab_path="$WORKSPACE/labs"

# lb: Make in Projects
lb() {
    make -C $(fdsearch "$1" $lab_path) $2 FROM=$(PWD)
}

# lg: Go to Labs
lg() {
    dir=$(fdsearch "$1" $lab_path)
    cd $dir
}

# --- Second Braind Command ---
brain_path="$WORKSPACE/brains"

# sb: Make in Second Brains ---
br() {
    make -C $(fdsearch "$1" $brain_path) $2 FROM=$(PWD)
}

# sg: Go to Second Brains ---
brg() {
    cd $(fdsearch "$1" $brain_path)
}
