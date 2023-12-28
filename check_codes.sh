#!/bin/bash

for WASM in codes/*.wasm ; do
    FOUND=`wasm2wat $WASM | grep gr_pay_program_rent`
    if [ -n "$FOUND" ]; then
        echo $WASM
    fi
done
