set runtimepath^=~/.vim runtimepath+=~/.vim/after
let &packpath = &runtimepath
source ~/.vimrc

set wildignore+=*\\tmp\\*,*middleware**.swp,*.zip,*.exe  " Windows

let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$'
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/]\.(git|hg|svn)$',
  \ 'file': '\v\.(exe|so|dll)$',
  \ }

call rpcnotify(0, 'Gui', 'WindowMaximized', 1)

" Doesn't do anything in Neovim
"highlight Cursor guifg=blue guibg=black
"highlight iCursor guifg=blue guibg=steelblue
set guicursor=i-n-v-c:block-Cursor
set guicursor+=i:ver100-iCursor
set guicursor+=n-v-c:blinkon0
set guicursor+=i:blinkwait10
"

lua require('packages')


