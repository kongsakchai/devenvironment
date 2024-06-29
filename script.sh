#!/bin/s
alias c:='cd /mnt/c'
alias d:='cd /mnt/d'

prj() {
    cd ~/projects/$1
}

lab() {
    cd ~/labs/$1
}

ws() {
    cd ~/workspaces/$1
}

wss() {
    make -C "~/workspaces/$1" $2
}
