# This bash script is written to show the commands used

# 1. Builds dylib
cc -fPIC -shared ./src/c_source/hello.c -o ./libhello.so

# 2. Cargo
cargo build

# 3.
# Adds `c_source/` to dylib search path (-L)
#
# Linux
# export LD_LIBRARY_PATH=$(pwd)/src/c_source:$(LD_LIBRARY_PATH)
export LD_LIBRARY_PATH=$(pwd):$(LD_LIBRARY_PATH)
#
# MacOS
# export DYLD_LIBRARY_PATH=$(pwd)/src/c_source:$(DYLD_LIBRARY_PATH)
export DYLD_LIBRARY_PATH=$(pwd):$(DYLD_LIBRARY_PATH)


cargo run
