set nocompatible              " be iMpr"
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
set backspace=indent,eol,start
set noswapfile
set number
set scrolloff=5 
set mouse=a
set history=1000
set autoindent
set incsearch                      " incremental search rules
set ruler                          " shows line number in the status line"
set clipboard+=unnamed
set cursorline
set wildmenu
set wildmode=list:longest
set autoread
set ttyfast " u got a fast terminal
set ttyscroll=3
set lazyredraw " to avoid scrolling problems
set synmaxcol=300
autocmd VimEnter * NERDTree
autocmd VimEnter * NERDTreeTabsOpen
autocmd VimEnter * NERDTreeMirror
autocmd VimEnter * wincmd p
set tabstop=2 shiftwidth=2 softtabstop=2
set title
au BufNewFile,BufRead *.erb set filetype=eruby.html
au BufNewFile,BufRead *.es6 set filetype=javascript

let g:nerdtree_tabs_no_startup_for_diff=1
let g:nerdtree_tabs_open_on_console_startup=1
let g:nerdtree_tabs_smart_startup_focus=1
let g:nerdtree_tabs_synchronize_view=1

"Vim neocomplete setting start here

let g:acp_enableAtStartup = 0
" Use neocomplete.
let g:neocomplete#enable_at_startup = 1
" Use smartcase.
let g:neocomplete#enable_smart_case = 1
" Set minimum syntax keyword length.
let g:neocomplete#sources#syntax#min_keyword_length = 3
let g:neocomplete#lock_buffer_name_pattern = '\*ku\*'

" Define dictionary.
let g:neocomplete#sources#dictionary#dictionaries = {
			\ 'default' : '',
			\ 'vimshell' : $HOME.'/.vimshell_hist',
			\ 'scheme' : $HOME.'/.gosh_completions'
			\ }

" Define keyword.
if !exists('g:neocomplete#keyword_patterns')
	let g:neocomplete#keyword_patterns = {}
endif
let g:neocomplete#keyword_patterns['default'] = '\h\w*'

" Plugin key-mappings.
inoremap <expr><C-g>     neocomplete#undo_completion()
inoremap <expr><C-l>     neocomplete#complete_common_string()

" Recommended key-mappings.
" <CR>: close popup and save indent.
inoremap <silent> <CR> <C-r>=<SID>my_cr_function()<CR>
function! s:my_cr_function()
	return neocomplete#close_popup() . "\<CR>"
	" For no inserting <CR> key.
	"return pumvisible() ? neocomplete#close_popup() : "\<CR>"
endfunction
" <TAB>: completion.
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
" <C-h>, <BS>: close popup and delete backword char.
inoremap <expr><C-h> neocomplete#smart_close_popup()."\<C-h>"
inoremap <expr><BS> neocomplete#smart_close_popup()."\<C-h>"
inoremap <expr><C-y>  neocomplete#close_popup()
inoremap <expr><C-e>  neocomplete#cancel_popup()
" Close popup by <Space>.
"inoremap <expr><Space> pumvisible() ? neocomplete#close_popup() : "\<Space>"

" For cursor moving in insert mode(Not recommended)
"inoremap <expr><Left>  neocomplete#close_popup() . "\<Left>"
"inoremap <expr><Right> neocomplete#close_popup() . "\<Right>"
"inoremap <expr><Up>    neocomplete#close_popup() . "\<Up>"
"inoremap <expr><Down>  neocomplete#close_popup() . "\<Down>"
" Or set this.
"let g:neocomplete#enable_cursor_hold_i = 1
" Or set this.
"let g:neocomplete#enable_insert_char_pre = 1

" AutoComplPop like behavior.
"let g:neocomplete#enable_auto_select = 1

" Shell like behavior(not recommended).
"set completeopt+=longest
"let g:neocomplete#enable_auto_select = 1
"let g:neocomplete#disable_auto_complete = 1
"inoremap <expr><TAB>  pumvisible() ? "\<Down>" : "\<C-x>\<C-u>"

" Enable omni completion.
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags
autocmd BufNewFile,BufRead *.coffee set filetype=coffee

" Enable heavy omni completion.
if !exists('g:neocomplete#sources#omni#input_patterns')
	let g:neocomplete#sources#omni#input_patterns = {}
endif
let g:neocomplete#sources#omni#input_patterns.perl = '\h\w*->\h\w*\|\h\w*::'
let g:neocomplete#force_overwrite_completefunc = 1




"For ruby programming
Bundle 'vim-ruby/vim-ruby'
Bundle 'Keithbsmiley/rspec.vim'
" let Vundle manage Vundle
" required! 
Bundle 'gmarik/vundle'
Bundle 'tpope/vim-haml'
Bundle 'bling/vim-airline'
Bundle "mattn/emmet-vim"
Bundle "Shougo/vimproc.vim"
" My bundles here:
"
" original repos on GitHub
Bundle 'flazz/vim-colorschemes'
Bundle 'altercation/vim-colors-solarized.git'
" To enable automatic end in loops
Bundle 'tpope/vim-endwise.git'
Bundle 'tpope/vim-fugitive'
Bundle 'myusuf3/numbers.vim'
Bundle 'Lokaltog/vim-easymotion'
Bundle 'rstacruz/sparkup', {'rtp': 'vim/'}
Bundle 'tpope/vim-rails.git'
Bundle 'tpope/vim-rake.git'
Bundle 'tpope/vim-surround.git'
Bundle 'tpope/vim-bundler'
Bundle 'scrooloose/syntastic'
Bundle 'mhinz/vim-startify'
Bundle 'othree/html5.vim'
Bundle 'Yggdroot/indentLine'
Bundle 'tpope/vim-commentary'
Bundle 'Shougo/neocomplete'
Bundle 'Shougo/neosnippet'
Bundle 'Shougo/neosnippet-snippets'
Bundle 'Shougo/vimshell'
Bundle "Shougo/unite.vim"
" vim-scripts repos
Bundle 'L9'
Bundle 'FuzzyFinder'
Bundle 'scrooloose/nerdtree'
Bundle 'jistr/vim-nerdtree-tabs'
Bundle 'Raimondi/delimitMate'


Bundle 'ap/vim-css-color'

" Colors to vim
Bundle 'chriskempson/base16-vim'

Bundle 'pangloss/vim-javascript'

Bundle 'tpope/vim-repeat'
"This is for ember js and handlebars
Bundle 'dsawardekar/ember.vim'
Bundle 'mustache/vim-mustache-handlebars'
Bundle 'kchmck/vim-coffee-script'
" Git repos on your local machine (i.e. when working on your own plugin)
" ...
"Bundle 'jistr/vim-nerdtree-tabs'"
"
colorscheme solarized
set background=dark
let g:solarized_termtrans=1
let g:solarized_termcolors=16
let g:solarized_contrast="normal"
let g:solarized_visibility="normal"
syntax on
filetype plugin indent on     " required!
vmap <C-c> "+y
vmap <C-x> dd
nmap <C-a> ggVG
"
" Brief help
" :BundleList          - list configured bundles
" :BundleInstall(!)    - install (update) bundles
" :BundleSearch(!) foo - search (or refresh cache first) for foo
" :BundleClean(!)      - confirm (or auto-approve) removal of unused bundles
"
" see :h vundle for more details or wiki for FAQ
" NOTE: comments after Bundle commands are not allowed.
syntax enable

