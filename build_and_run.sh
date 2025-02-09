# This bash script is written to show the commands used

cargo build

# Adds `c_source/` to dylib search path (-L)
#
# Linux
export LD_LIBRARY_PATH=./src/c_source:$(LD_LIBRARY_PATH)
#
# MacOS
export DYLD_LIBRARY_PATH=./src/c_source:$(LD_LIBRARY_PATH)


cargo run
