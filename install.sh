#!/usr/bin/env bash

pack install
pack generate

#echo 'YouCompleteMe'
#cd ~/.vim/pack/completion/start/YouCompleteMe
#python3 install.py --clangd-completer --ts-completer

cp ~/.vim/.style.yapf ~/.style.yapf
