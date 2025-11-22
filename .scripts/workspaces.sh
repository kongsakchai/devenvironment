#! /bin/bash

me() {
    cd $(fdir "$1" $WORKSPACE)
}

jp() {
    cd $(fdir "$1" $(PWD))
}

# --- Workspace Commands ---
work_path="$WORKSPACE/workspaces"
history_file="$work_path/.history"

# ws: Make in Workspaces
ws() {
    if [ -z "$1" ]; then
        wslist
        return
    fi
    make -C $(fdir "$1" $work_path) $2 FROM=$(PWD)
}

# wg: Go to Workspace
wg() {
    dir=$(fdir "$1" $work_path)
    cd $dir
}

# --- Project Commands ---
project_path="$WORKSPACE/projects"

# pr: Make in Projects
pr() {
    make -C $(fdir "$1" $project_path) $2 FROM=$(PWD)
}

# pg: Go to Projects
pg() {
    dir=$(fdir "$1" $project_path)
    cd $dir
}

# --- Lab Commands ---
lab_path="$WORKSPACE/labs"

# lb: Make in Projects
lb() {
    make -C $(fdir "$1" $lab_path) $2 FROM=$(PWD)
}

# lg: Go to Labs
lg() {
    dir=$(fdir "$1" $lab_path)
    cd $dir
}

# --- Second Braind Command ---
brain_path="$WORKSPACE/brains"

# sb: Make in Second Brains ---
br() {
    make -C $(fdir "$1" $brain_path) $2 FROM=$(PWD)
}

# sg: Go to Second Brains ---
brg() {
    cd $(fdir "$1" $brain_path)
}
