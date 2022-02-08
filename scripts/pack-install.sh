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

# TODO: fcitx.vim misses the master branch, need to fix maralla/pack later
git clone https://github.com/lilydjwg/fcitx.vim ~/.vim/pack/edit/start/fcitx.vim
if ! command -v fcitx5 &> /dev/null
then
    pushd ~/.vim/pack/edit/start/fcitx.vim
    git checkout fcitx4
    popd
fi
