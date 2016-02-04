" Plugins {{{
set nocompatible
filetype off
set rtp+=~/.vim/bundle/vundle.vim
call vundle#begin()
Plugin 'vundlevim/vundle.vim'
Plugin 'mhinz/vim-startify'
Plugin 'tpope/vim-fugitive'
"Plugin 'bling/vim-airline'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'flazz/vim-colorschemes'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'gioele/vim-autoswap'
Plugin 'jiangmiao/auto-pairs'
Plugin 'scrooloose/nerdtree'
Plugin 'mattn/emmet-vim'
"Plugin 'vim-scripts/html-autoclosetag'
Plugin 'scrooloose/syntastic'
Plugin 'eslint/eslint'
Plugin 'shutnik/jshint2.vim'
Plugin 'tpope/vim-surround'
"Plugin 'yggdroot/indentline'
Plugin 'Valloric/YouCompleteMe'
Plugin 'airblade/vim-gitgutter'
Plugin 'mustache/vim-mustache-handlebars'
Plugin 'scrooloose/nerdcommenter'
Plugin 'SirVer/ultisnips'
Plugin 'ervandew/supertab'
Plugin 'gregsexton/MatchTag'
Plugin 'junegunn/vim-easy-align'
Plugin 'othree/javascript-libraries-syntax.vim'
Plugin 'pangloss/vim-javascript'
Plugin 'godlygeek/tabular'
Plugin 'plasticboy/vim-markdown'
Plugin 'mxw/vim-jsx'
Plugin 'kien/rainbow_parentheses.vim'
Plugin 'othree/html5.vim'
call vundle#end()
filetype plugin indent on
" }}}

" General Settings {{{
set ruler
set number
set hid
set ignorecase
set smartcase
set hlsearch
set incsearch
set autoindent 
set smartindent
set wrap
set clipboard=unnamed
" don't redraw while executing macros (good performance config)
set lazyredraw
" for regular expressions turn magic on
set magic
" show matching brackets when text indicator is over them
set showmatch
" how many tenths of a second to blink when matching brackets
set mat=1
" show command in bottom bar
set showcmd
" no annoying sound on errors
set noerrorbells
set novisualbell
set t_vb=
set tm=500
" margin
set foldcolumn=0
" cmd bar height
set cmdheight=1
" dir and history
set directory=~/.vim/tmp//
set backupdir=~/.vim/tmp//
set history=1000
set undolevels=1000
set undoreload=10000
set undofile
set undodir=~/.vim/tmp/undo/
" turn backup off, since most stuff is in SVN, git et.c anyway...
set nobackup
set nowb
set noswapfile
" use spaces instead of tabs
set expandtab
" Be smart when using tabs ;)
set smarttab
" 1 tab == 4 spaces
set shiftwidth=2
set tabstop=2
" linebreak on 500 characters
set lbr
set tw=500
" file ignore
set wildignore+=*.a,*.0
set wildignore+=*.jpg,*.jpeg,*.gif,*.png,*.mov,*.pdf,*.psd,*.ai
set wildignore+=*.ppt,*.pptx,*.doc,*.docx,*.xls,*.xlsx
set timeoutlen=300
"paste
"set paste
"set nopaste
" autocomplete words with spell check
"set complete+=kspell

" }}}

" Custome Leader and Keys {{{
let mapleader = " "
let g:mapleader = " "
nmap <leader>nt :NERDTree<cr>
nmap <leader>w :w!<cr>
nmap <leader>q :q!<cr>
nmap <leader>l :bnext<cr>
nmap <leader>h :bprevious<cr>
nmap <leader>p :CtrlP ~/docs/<cr>
nmap <Leader>g :Gstatus<cr>
nmap <leader>bd :bd<cr>
inoremap jj <ESC>
nnoremap <leader>ev :vsp $MYVIMRC<CR>
nnoremap <leader>et :vsp ~/.tmux.conf<CR>
nnoremap <leader>ez :vsp ~/.zshrc<CR>
nnoremap <leader>sv :source $MYVIMRC<CR>
nnoremap <leader>pi :PluginInstall<CR>
nnoremap <leader><leader> <c-w>w
nnoremap <C-e> 3<C-e>
nnoremap <C-y> 3<C-y>
" }}}

" Colors, Scheme, Coding and Fonts {{{
syntax enable
colorscheme Tomorrow-Night
try
    colorscheme Tomorrow-Night
catch
endtry
set background=dark
if has("gui_running")
    set guioptions-=T
    set guioptions-=e
    set t_Co=256
    set guitablabel=%M\ %t
endif
set encoding=utf8
set ffs=unix,dos,mac
" }}}

" Airline {{{
set laststatus=2
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#fnamemod = ':t'
if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

" unicode symbols
"let g:airline_left_sep = '»'
"let g:airline_left_sep = '▶'
"let g:airline_right_sep = '«'
"let g:airline_right_sep = '◀'
"let g:airline_symbols.linenr = '␊'
"let g:airline_symbols.linenr = '␤'
"let g:airline_symbols.linenr = '¶'
"let g:airline_symbols.branch = '⎇'
"let g:airline_symbols.paste = 'ρ'
"let g:airline_symbols.paste = 'Þ'
"let g:airline_symbols.paste = '∥'
"let g:airline_symbols.whitespace = 'Ξ'
"
"" airline symbols
"let g:airline_left_sep = ''
"let g:airline_left_alt_sep = ''
"let g:airline_right_sep = ''
"let g:airline_right_alt_sep = ''
"let g:airline_symbols.branch = ''
"let g:airline_symbols.readonly = ''
"let g:airline_symbols.linenr = ''
" }}}

" Startify {{{
let g:startify_bookmarks = [
            \ { 'v': '~/.vimrc' },
            \ { 't': '~/.tmux.conf' },
            \ { 'z': '~/.zshrc' },
            \ ]

" }}}

" CtrlP {{{
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/](\.(git|hg|node_modules|svn)|\_site)$',
  \ 'file': '\v\.(exe|so|dll|class|png|jpg|jpeg)$',
\}
" search the nearest ancestor that contains .git, .hg, .svn
let g:ctrlp_working_path_mode = 2

" }}}

" Emmet {{{
let g:user_emmet_expandabbr_key = '<c-y>'
" }}}

" Syntastic {{{
"set statusline+=%#warningmsg#
"set statusline+=%{SyntasticStatuslineFlag()}
"set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_javascript_checkers = ['eslint','jshint2']
"let g:syntastic_html_tidy_exec = 'tidy5'

let jshint2_read = 1
let jshint2_save = 1
"autocmd BufWritePost *.js silent :JSHint
" }}}

" Snippets {{{
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsEditSplit="vertical"

let g:ycm_key_list_select_completion = ['<C-n>', '<Down>']
let g:ycm_key_list_previous_completion = ['<C-p>', '<Up>']
let g:SuperTabDefaultCompletionType = '<C-n>'

let g:UltiSnipsExpandTrigger = "<tab>"
let g:UltiSnipsJumpForwardTrigger = "<tab>"
let g:UltiSnipsJumpBackwardTrigger = "<s-tab>"
" }}}

" Abbreviations {{{
iabbrev teh the
iabbrev seperate separate
iabbrev fuction function
iabbrev fucntion function
iabbrev fnction function
iabbrev functon function
iabbrev funtion function
iabbrev funciont function
iabbrev consloe console
" }}}

" Togglewrap {{{
"function ToggleWrap()
"  if &wrap
"    echo "Wrap OFF"
"    setlocal nowrap
"    set virtualedit=all
"    silent! nunmap <buffer> <Up>
"    silent! nunmap <buffer> <Down>
"    silent! nunmap <buffer> <Home>
"    silent! nunmap <buffer> <End>
"    silent! iunmap <buffer> <Up>
"    silent! iunmap <buffer> <Down>
"    silent! iunmap <buffer> <Home>
"    silent! iunmap <buffer> <End>
"  else
"    echo "Wrap ON"
"    setlocal wrap linebreak nolist
"    set virtualedit=
"    setlocal display+=lastline
"    noremap  <buffer> <silent> <Up>   gk
"    noremap  <buffer> <silent> <Down> gj
"    noremap  <buffer> <silent> <Home> g<Home>
"    noremap  <buffer> <silent> <End>  g<End>
"    inoremap <buffer> <silent> <Up>   <C-o>gk
"    inoremap <buffer> <silent> <Down> <C-o>gj
"    inoremap <buffer> <silent> <Home> <C-o>g<Home>
"    inoremap <buffer> <silent> <End>  <C-o>g<End>
"  endif
"endfunction
" }}}

" React {{{
let g:jsx_ext_required = 0
" }}}
 
" Autocmd {{{
" disbale format comments options
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o
" }}}

" Rainbow Parenthese {{{
let g:rbpt_colorpairs = [
    \ ['brown',       'RoyalBlue3'],
    \ ['Darkblue',    'SeaGreen3'],
    \ ['darkgray',    'DarkOrchid3'],
    \ ['darkgreen',   'firebrick3'],
    \ ['darkcyan',    'RoyalBlue3'],
    \ ['darkred',     'SeaGreen3'],
    \ ['darkmagenta', 'DarkOrchid3'],
    \ ['brown',       'firebrick3'],
    \ ['gray',        'RoyalBlue3'],
    \ ['black',       'SeaGreen3'],
    \ ['darkmagenta', 'DarkOrchid3'],
    \ ['Darkblue',    'firebrick3'],
    \ ['darkgreen',   'RoyalBlue3'],
    \ ['darkcyan',    'SeaGreen3'],
    \ ['darkred',     'DarkOrchid3'],
    \ ['red',         'firebrick3'],
    \ ]

au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces 
"}}}

" vim:foldmethod=marker:foldlevel=0

