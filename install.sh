#!/usr/bin/env bash

pack install
pack generate

#echo 'YouCompleteMe'
#cd ~/.vim/pack/completion/start/YouCompleteMe
#python3 install.py --clangd-completer --ts-completer

cp ~/.vim/.style.yapf ~/.style.yapf

# Download vscode-pylance
mkdir /tmp/download-vscode-pylance
cd /tmp/download-vscode-pylance
wget https://ms-python.gallery.vsassets.io/_apis/public/gallery/publisher/ms-python/extension/vscode-pylance/2020.9.6/assetbyname/Microsoft.VisualStudio.Services.VSIXPackage
unzip Microsoft.VisualStudio.Services.VSIXPackage
rm -rf ~/.config/coc/extensions/vscode-pylance
mv extension ~/.config/coc/extensions/vscode-pylance
