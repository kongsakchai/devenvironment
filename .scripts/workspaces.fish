function me
    cd (fdir "$argv[1]" $WORKSPACE)
end

# --- Workspace Commands ---
set -g work_path $WORKSPACE/workspaces
set -g history_file $work_path/.history

function ws
    make -C (fdir "$argv[1]" $work_path) $argv[2] FROM=(pwd)
end

function wg
    set dir (fdir "$argv[1]" $work_path)
    cd $dir
end

# --- Project Commands ---
set -g project_path $WORKSPACE/projects

function pr
    make -C (fdir "$argv[1]" $project_path) $argv[2] FROM=(pwd)
end

function pg
    set dir (fdir "$argv[1]" $project_path)
    cd $dir
end

# --- Lab Commands ---
set -g lab_path $WORKSPACE/labs

function lb
    make -C (fdir "$argv[1]" $lab_path) $argv[2] FROM=(pwd)
end

function lg
    set dir (fdir "$argv[1]" $lab_path)
    cd $dir
end

# --- Second Brain Commands ---
set -g brain_path $WORKSPACE/brains

function br
    make -C (fdir "$argv[1]" $brain_path) $argv[2] FROM=(pwd)
end

function brg
    cd (fdir "$argv[1]" $brain_path)
end
