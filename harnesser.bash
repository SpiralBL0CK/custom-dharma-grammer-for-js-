#!/bin/bash
detect_leaks=0,exitcode=42,abort_on_error=1,disable_coredump=0 ; 
for i in $(seq 1 1000);
do
    pwd = $(pwd)
    pwd = ${pwd:-1:17}  
    if [$pwd = $1]
    then
        echo $i
        ../../asan-linux-release-813510/d8  --wasm-grow-shared-memory --abort-on-uncaught-exception $i.js;
    fi
done
