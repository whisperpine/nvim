" Config file for vscode neovim plugin:
" https://marketplace.visualstudio.com/items?itemName=asvetliakov.vscode-neovim

" Vim pluggin manager requirement:
" https://github.com/junegunn/vim-plug

call plug#begin()

Plug 'tpope/vim-surround'   " Delete, change and add surroundings

call plug#end()

set ignorecase              " Ignore upper case or lower case when searching
set smartcase               " Override 'ignorecase' if the search pattern contains upper case chars
set nohls                   " Don't highlight searching result
set fileformat=unix         " Set end of line style to LF
set clipboard+=unnamedplus  " Share system clipboard


if has("win32")
    let g:clipboard = {
    \   'name': 'wsl-clip',
    \	'copy': {
    \		'+': 'win32yank.exe -i',
    \		'*': 'win32yank.exe -i',
    \	},
    \	'paste': {
    \		'+': 'win32yank.exe -o --lf',
    \		'*': 'win32yank.exe -o --lf',
    \	},
    \	'cache_enabled': 0,
    \ }
endif
