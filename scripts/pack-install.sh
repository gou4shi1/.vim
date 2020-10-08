#!/usr/bin/env bash

set -e

source ~/.vim/scripts/utils.sh

log::info "Clear ~/.vim/pack (backup as ~/.vim/pack.bak)."
mkdir -p ~/.vim/pack
rm -rf ~/.vim/pack.bak
mv ~/.vim/pack ~/.vim/pack.bak
log::info "Install vim plugins via pack."
mkdir -p ~/.config/coc
pack install
