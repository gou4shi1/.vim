echo 'YouCompleteMe'
cd ~/.vim/pack/completion/start/YouCompleteMe
python3 install.py --clang-completer --ts-completer

cp ~/.vim/.style.yapf ~/.style.yapf
