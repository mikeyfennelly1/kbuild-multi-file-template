#!/bin/bash
mkdir -p ./build
build_outputs=("modules.order" ".modules.order.cmd" "Module.symvers" ".Module.symvers.cmd" ".start.ko.cmd" "start.mod" "start.mod.c" ".start.mod.cmd" "start.mod.o" ".start.mod.o.cmd" "start.o" ".start.o.cmd" ".stop.ko.cmd" "stop.mod" "stop.mod.c" ".stop.mod.cmd" "stop.mod.o" ".stop.mod.o.cmd" "stop.o" ".stop.o.cmd")

for item in "${build_outputs[@]}"; do
    mv "${item}" ./build
done