#!/usr/bin/env bash

set -e

# Create coc data dir.
mkdir -p ~/.config/coc

# Install vim plugins via pack.
pack install
reset # to recover strange terminal output format
echo 'Installed vim plugins:'
pack
echo

#echo 'YouCompleteMe'
#cd ~/.vim/pack/completion/start/YouCompleteMe
#python3 install.py --clangd-completer --ts-completer

# Create global yapf config.
cp ~/.vim/.style.yapf ~/.style.yapf

# Download vscode-pylance
rm -rf /tmp/download-vscode-pylance
mkdir /tmp/download-vscode-pylance
cd /tmp/download-vscode-pylance
wget https://ms-python.gallery.vsassets.io/_apis/public/gallery/publisher/ms-python/extension/vscode-pylance/2020.9.6/assetbyname/Microsoft.VisualStudio.Services.VSIXPackage
unzip -q Microsoft.VisualStudio.Services.VSIXPackage
rm -rf ~/.config/coc/extensions/vscode-pylance
mv extension ~/.config/coc/extensions/vscode-pylance
