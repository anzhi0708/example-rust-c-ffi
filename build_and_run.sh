# This bash script is written to show the commands used

cd ./src/c_source

# 1. Builds dylib
clang -fPIC -shared hello.c -o libhello.so

# 2. Cargo
cargo build

# 3.
# Adds `c_source/` to dylib search path (-L)
#
# Linux
export LD_LIBRARY_PATH=./src/c_source:$(LD_LIBRARY_PATH)
#
# MacOS
export DYLD_LIBRARY_PATH=./src/c_source:$(LD_LIBRARY_PATH)


cargo run
