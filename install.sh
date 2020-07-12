set -x

# Assumes git bash environment on windows
if [[ -e "~/.vimrc" ]]; then mv ~/.vimrc ~/.vimrc.bak; fi
if [[ -e "~/vim" ]]; then mv ~/vim ~/.vim.bak; fi
if [[ -e "~/_vimrc" ]]; then mv ~/_vimrc ~/_vimrc.bak; fi
if [[ -e "~/vimfiles" ]]; then mv ~/vimfiles ~/vimfiles.bak; fi
if [[ -e "~/AppData/Local/nvim/init.vim" ]]; then mv ~/AppData/Local/nvim/init.vim ~/AppData/Local/nvim/init.vim.bak; fi
if [[ -e "~/AppData/Local/nvim/ginit.vim" ]]; then mv ~/AppData/Local/nvim/ginit.vim ~/AppData/Local/nvim/ginit.vim.bak; fi
if [[ -e "~/vimfiles" ]]; then mv ~/vimfiles ~/vimfiles.bak; fi

cp vim/vimrc ~/.vimrc
cp vim/vimrc ~/_vimrc

mkdir -p ~/.vim/
mkdir -p ~/vimfiles/

cp -r vim/vimfiles/* ~/.vim/
cp -r vim/vimfiles/* ~/vimfiles/

cp nvim/*.vim ~/AppData/Local/nvim/

