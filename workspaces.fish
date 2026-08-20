function jj
    set dir (wsdir "$argv[1]" "$argv[2]")
    if test -n "$dir"
        cd $dir
    end
end

function me
    jj "$argv[1]" $WORKSPACE
end

# --- Workspace Commands ---
set -g work_path $WORKSPACE/workspaces
set -g history_file $work_path/.history

function ws
    if test -z "$argv[1]"
        wslist
        return
    end
    make -C (wsdir "$argv[1]" $work_path) $argv[2] FROM=(pwd)
end

function wg
    jj "$argv[1]" $work_path
end

# --- Project Commands ---
set -g project_path $WORKSPACE/projects

function pr
    make -C (wsdir "$argv[1]" $project_path) $argv[2] FROM=(pwd)
end

function pg
    jj "$argv[1]" $project_path
end

# --- Lab Commands ---
set -g lab_path $WORKSPACE/labs

function lb
    make -C (wsdir "$argv[1]" $lab_path) $argv[2] FROM=(pwd)
end

function lg
    jj "$argv[1]" $lab_path
end

# --- Second Brain Commands ---
set -g brain_path $WORKSPACE/brains

function br
    make -C (wsdir "$argv[1]" $brain_path) $argv[2] FROM=(pwd)
end

function brg
    jj "$argv[1]" $brain_path
end
