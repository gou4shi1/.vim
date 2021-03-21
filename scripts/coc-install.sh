#!/usr/bin/env bash

set -e

source ~/.vim/scripts/utils.sh

log::info "Clear ~/.config/coc/extensions (backup as ~/.config/coc/extensions.bak)."
mkdir -p ~/.config/coc/extensions
rm -rf ~/.config/coc/extensions.bak
mv ~/.config/coc/extensions ~/.config/coc/extensions.bak
log::info "Install coc extensions via vim."
vim # CocInstall will be called automatically.

log::info "Download vscode-pylance."
rm -rf /tmp/download-vscode-pylance
mkdir -p /tmp/download-vscode-pylance
cd /tmp/download-vscode-pylance
wget https://ms-python.gallery.vsassets.io/_apis/public/gallery/publisher/ms-python/extension/vscode-pylance/2020.10.2/assetbyname/Microsoft.VisualStudio.Services.VSIXPackage
unzip -q Microsoft.VisualStudio.Services.VSIXPackage
rm -rf ~/.config/coc/extensions/vscode-pylance
mv extension ~/.config/coc/extensions/vscode-pylance

log::info "Patch coc-python-disable-language-server."
cd ~/.config/coc/extensions/node_modules/coc-python
git apply ~/.vim/patches/coc-python-disable-language-server.patch
