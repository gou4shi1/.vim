echo 'YouCompleteMe'
cd ~/.vim/pack/completion/start/YouCompleteMe
python3 install.py --clang-completer --ts-completer

echo 'color_coded'
cd ~/.vim/pack/highlight/start/color_coded
./build.sh

cp ~/.vim/.style.yapf ~/.style.yapf
