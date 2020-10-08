#!/usr/bin/env bash

set -e

echo "Create coc data dir."
mkdir -p ~/.config/coc

echo "Clear ~/.vim/pack (backup as ~/.vim/pack.bak)."
rm -rf ~/.vim/pack.bak
mv ~/.vim/pack ~/.vim/pack.bak
mkdir ~/.vim/pack
echo "Install vim plugins via pack."
pack install
reset # to recover the strange terminal output format
echo 'Installed vim plugins:'
pack list
echo

echo "Download vscode-pylance."
rm -rf /tmp/download-vscode-pylance
mkdir /tmp/download-vscode-pylance
cd /tmp/download-vscode-pylance
wget https://ms-python.gallery.vsassets.io/_apis/public/gallery/publisher/ms-python/extension/vscode-pylance/2020.9.6/assetbyname/Microsoft.VisualStudio.Services.VSIXPackage
unzip -q Microsoft.VisualStudio.Services.VSIXPackage
rm -rf ~/.config/coc/extensions/vscode-pylance
mv extension ~/.config/coc/extensions/vscode-pylance
