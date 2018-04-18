"" width = 72

"" 初始化 ----------------------------------------------------------
set number              " line number
set formatoptions+=o    " Continue comment marker in new lines.
set expandtab           " Insert spaces when TAB is pressed.
set tabstop=4           " Render TABs using this many spaces.
set shiftwidth=4        " Indentation amount for < and > commands.
set numberwidth=3
set cpoptions+=n
set nuw=4
syntax on
filetype plugin indent on
set clipboard+=unnamedplus " clipboard
color dracula
hi Normal ctermbg=none "禁用终端颜色
" set t_Co=0
" set termguicolors "背景颜色
set t_Co=256
"" --------------------------------------------------------------------

"" 插件区 -------------------------------------------------------------
call plug#begin()
Plug 'roxma/nvim-completion-manager'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'Yggdroot/indentLine'
Plug 'dracula/vim', { 'as': 'dracula' }
" Javascript / React / Redux
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'wokalski/autocomplete-flow'
Plug 'Shougo/neosnippet'
Plug 'Shougo/neosnippet-snippets'
Plug 'w0rp/ale'
" Airline
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
" ---------------------------
Plug 'scrooloose/nerdtree'
Plug 'Raimondi/delimitMate'
" Markdown
Plug 'godlygeek/tabular'
Plug 'plasticboy/vim-markdown'
" 以太币
Plug 'tomlion/vim-solidity'
call plug#end()
"" --------------------------------------------------------------------

"" 缩进线/点 ----------------------------------------------------------
let g:indentLine_color_term = 239
let g:indentLine_color_tty_light = 7 " (default: 4)
let g:indentLine_color_dark = 2 " (default: 2)
let g:indentLine_char = '¦'
""" option: ¦, ┆, │, ⎸, or ▏ 
let g:indentLine_showFirstIndentLevel = 0  " 第一行显不显示indent line!
"" --------------------------------------------------------------------

""
map <C-n> :NERDTreeToggle<CR>
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'
let g:NERDTreeWinSize=50
let g:Tlist_WinWidth=50

"" Javascript 的一些微小的设定 ----------------------------------------
let g:deoplete#enable_at_startup = 1
"" --------------------------------------------------------------------

"" Airline
let g:airline#extensions#tabline#enabled = 1
let g:airline_theme='violet'
" air-line
let g:airline_powerline_fonts = 1

if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

" unicode symbols
" let g:airline_left_sep = '»'
let g:airline_left_sep = ''
" let g:airline_left_sep = '▶'
" let g:airline_right_sep = '«'
let g:airline_right_sep = ''
" let g:airline_right_sep = '◀'
let g:airline_symbols.linenr = '␊'
let g:airline_symbols.linenr = '␤'
let g:airline_symbols.linenr = '¶'
let g:airline_symbols.branch = '⎇'
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.paste = 'Þ'
let g:airline_symbols.paste = '∥'
let g:airline_symbols.whitespace = 'Ξ'

" airline symbols
" let g:airline_left_sep = ''
" let g:airline_left_alt_sep = ''
" let g:airline_right_sep = ''
" let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''

" The Silver Searcher
if executable('ag')
  " Use ag over grep
  set grepprg=ag\ --nogroup\ --nocolor

  " Use ag in CtrlP for listing files. Lightning fast and respects .gitignore
  let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'

  " ag is fast enough that CtrlP doesn't need to cache
  let g:ctrlp_use_caching = 0
endif
" bind K to grep word under cursor
nnoremap K :grep! "\b<C-R><C-W>\b"<CR>:cw<CR>
" bind \ (backward slash) to grep shortcut
command -nargs=+ -complete=file -bar Ag silent! grep! <args>|cwindow|redraw!

" Markdown
let g:vim_markdown_conceal = 0

" fjasl
:nn <M-1> 1gt
:nn <M-2> 2gt
:nn <M-3> 3gt
:nn <M-4> 4gt
:nn <M-5> 5gt
:nn <M-6> 6gt
:nn <M-7> 7gt
:nn <M-8> 8gt
:nn <M-9> 9gt
:nn <M-0> :tablast<CR>
