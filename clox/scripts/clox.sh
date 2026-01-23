#!/bin/sh

if test $1 = "build"; then
    echo "Compiling clox"
    gcc -o build/clox main.c chunk.c memory.c debug.c -Wall -Wextra
elif test $1 = "run"; then
    ./build/clox
else
    echo "options are build | run"
fi