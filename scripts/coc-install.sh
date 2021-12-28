#!/usr/bin/env bash

set -e

source ~/.vim/scripts/utils.sh

log::info "Clear ~/.config/coc/extensions (backup as ~/.config/coc/extensions.bak)."
mkdir -p ~/.config/coc/extensions
rm -rf ~/.config/coc/extensions.bak
mv ~/.config/coc/extensions ~/.config/coc/extensions.bak
log::info "Install coc extensions via vim."
vim # CocInstall will be called automatically.
