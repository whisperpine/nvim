" Vim plugin manager requirement:
" https://github.com/junegunn/vim-plug

call plug#begin()

" A scheme called gruvbox-material
Plug 'sainnhe/gruvbox-material'
" Light weight airline
Plug 'itchyny/lightline.vim'
" To show indent line
Plug 'Yggdroot/indentLine'
" Auto remove redundant white spaces
Plug 'ntpeters/vim-better-whitespace'
" Delete, change and add surroundings
Plug 'tpope/vim-surround'
" Comment stuff out.
Plug 'tpope/vim-commentary'
" Text objects enhancement
Plug 'wellle/targets.vim'

call plug#end()

" Source ./plug-free.vim
exe 'source ' . expand('<sfile>:p:h') . '/plug-free.vim'

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


" Use win32yank to copy and past on Windows
if has('win32')
    let g:clipboard = {
    \   'name': 'wsl-clip',
    \	'copy': {
    \		'+': 'win32yank.exe -i',
    \		'*': 'win32yank.exe -i',
    \	},
    \	'paste': {
    \		'+': 'win32yank.exe --lf -o',
    \		'*': 'win32yank.exe --lf -o',
    \	},
    \	'cache_enabled': 0,
    \ }
endif

" Configure lightline plugin
" \ 'separator': { 'left': '', 'right': '' },
" \ 'separator': { 'left': '', 'right': '' },
" \ 'separator': { 'left': '', 'right': '' },
" \ 'subseparator': { 'left': '\\', 'right': '/' },
let g:lightline = {
\ 'colorscheme': 'gruvbox_material',
\ }

" Configure indentLine plugin
let g:indentLine_color_term = 239   " Set color
let g:vim_json_conceal = 0          " Avoid char hidden in json
let g:markdown_syntax_conceal = 0   " Avoid char hidden in markdown

" Configure vim-better-whitespace plugin
let g:better_whitespace_enabled = 1
let g:strip_whitespace_on_save = 1
let g:strip_whitespace_confirm = 0
let g:better_whitespace_guicolor = '#ea6962'

" Available values: 'material', 'mix', 'original'
let g:gruvbox_material_foreground = 'material'
" Remove background color
let g:gruvbox_material_transparent_background = 1
" Disable italic in comment
let g:gruvbox_material_disable_italic_comment = 1
" Enabling this option will reduce loading time
let g:gruvbox_material_better_performance = 1
" Override scheme color
let g:gruvbox_material_colors_override = {
\ 'fg0':    ['#cacaca', '223'],
\ 'fg1':    ['#cacaca', '223'],
\ 'grey1':  ['#838383', '245'],
\ 'grey2':  ['#838383', '245'],
\ 'bg_dim': ['#252525', '233'],
\ 'bg0':    ['#323232', '236'],
\ 'bg1':    ['#3c3c3c', '237'],
\ 'bg2':    ['#3c3c3c', '237'],
\ 'bg3':    ['#505050', '239'],
\ 'bg4':    ['#505050', '239'],
\ 'bg5':    ['#666666', '241'],
\ 'bg_statusline1': ['#3c3c3c',   '237'],
\ 'bg_statusline2': ['#464646',   '237'],
\ 'bg_statusline3': ['#5b5b5b',   '241'],
\ }

" Set colorscheme
colorscheme gruvbox-material
