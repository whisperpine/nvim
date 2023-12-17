" Config file for vscode neovim plugin:
" https://marketplace.visualstudio.com/items?itemName=asvetliakov.vscode-neovim

" Vim pluggin manager requirement:
" https://github.com/junegunn/vim-plug

call plug#begin()

" Delete, change and add surroundings
Plug 'tpope/vim-surround'
" Text objects enhancement
Plug 'wellle/targets.vim'

call plug#end()

" Auto swith to English input method on InsertLeave
if has('win32')
    let imselect = stdpath('config') . '\windows\im-select.exe'
    autocmd InsertLeave * :silent exe '!'.imselect.' 1033'
elseif has('wsl')
    let username = trim(system('whoami'))
    let imselect = '/mnt/c/Users/'. username
        \. '/AppData/Local/nvim/windows/im-select.exe'
    autocmd InsertLeave * :silent exe '!'.imselect.' 1033'
elseif has('mac')
    autocmd InsertLeave * :silent exe '!im-select com.apple.keylayout.ABC'
endif

" Use vscode clipbard API
let g:clipboard = g:vscode_clipboard

set ignorecase              " Ignore upper case or lower case when searching
set smartcase               " Override 'ignorecase' if the search pattern contains upper case chars
set nohls                   " Don't highlight searching result
set fileformat=unix         " Set end of line style to LF
set clipboard+=unnamedplus  " Share system clipboard
