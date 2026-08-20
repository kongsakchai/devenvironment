#! /bin/bash

jj() {
    dir=$(wsdir "$1" "$2")
    if [ -n $dir ]; then
        cd $dir
    fi
}

me() {
    jj "$1" $WORKSPACE
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
    make -C $(wsdir "$1" $work_path) $2 FROM=$(PWD)
}

# wg: Go to Workspace
wg() {
    jj "$1" $work_path
}

# --- Project Commands ---
project_path="$WORKSPACE/projects"

# pr: Make in Projects
pr() {
    make -C $(wsdir "$1" $project_path) $2 FROM=$(PWD)
}

# pg: Go to Projects
pg() {
    jj "$1" $project_path
}

# --- Lab Commands ---
lab_path="$WORKSPACE/labs"

# lb: Make in Projects
lb() {
    make -C $(wsdir "$1" $lab_path) $2 FROM=$(PWD)
}

# lg: Go to Labs
lg() {
    jj "$1" $lab_path
}

# --- Second Braind Command ---
brain_path="$WORKSPACE/brains"

# sb: Make in Second Brains ---
br() {
    make -C $(wsdir "$1" $brain_path) $2 FROM=$(PWD)
}

# sg: Go to Second Brains ---
brg() {
    jj "$1" $brain_path
}
