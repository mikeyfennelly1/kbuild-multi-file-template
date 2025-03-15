#!/bin/bash

build_dir="../build"

function move_files_by_extension() {
    local extension="$1"
    local target_dir="$2"

    mkdir -p "$target_dir"

    # Use 'glob' expansion safely
    for file in *"$extension"; do
        [ -e "$file" ] && mv "$file" "$target_dir"
    done
}

# move objs and kernel objs to respective dirs
move_files_by_extension ".o" "${build_dir}/objs"
move_files_by_extension ".ko" "${build_dir}/k_objs"

# Remove unnecessary files
function remove_unnecessary_files() {
    local list_of_unnecesssary_files=(".Module.symvers.cmd" "modules.order.cmd" ".start.ko.cmd" "start.mod.cmd" "start.o.cmd" ".stop.mod.o.cmd" "modules.order" ".modules.order.cmd" "Module.symvers" "start.mod" "start.mod.c" ".start.mod.cmd" ".start.mod.o.cmd" ".start.o.cmd" ".stop.ko.cmd" "stop.mod" "stop.mod.c" ".stop.mod.cmd" ".stop.o.cmd")

    for file in "${list_of_unnecesssary_files[@]}"; do
        echo "Attempting to remove: $file"  # Debugging line
        rm -f "$file"
    done
}

remove_unnecessary_files