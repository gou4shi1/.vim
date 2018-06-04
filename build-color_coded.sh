#!/bin/sh

cd ~/.vim/pack/highlight/opt/color_coded
mkdir -p build
cd build
rm -f CMakeCache.txt
cmake ..
make && make install # Compiling with GCC is preferred, ironically
# Clang works on OS X, but has mixed success on Linux and the BSDs

# Cleanup afterward; frees several hundred megabytes
make clean && make clean_clang

cp color_coded.vim pack/highlight/opt/color_coded/after/syntax/color_coded.vim 

