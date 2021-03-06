set nocompatible              " be iMpr"
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
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
set synmaxcol=250
set ttyscroll=3
set lazyredraw " to avoid scrolling problems
set tabstop=2 shiftwidth=2 softtabstop=2 expandtab
set title
au BufNewFile,BufRead *.erb set filetype=eruby.html
au BufNewFile,BufRead *.es6 set filetype=javascript

"remove trailing whitespace
autocmd FileType c,cpp,java,php,ruby,eruby.html,javascript,coffee,rake autocmd BufWritePre <buffer> :%s/\s\+$//e

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
autocmd BufNewFile,BufRead *.slim set filetype=slim.html

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

"vim ctrlp
Bundle 'kien/ctrlp.vim'
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*.log,*.sql     " MacOSX/Linux"

Bundle 'ap/vim-css-color'

" Ag search
Bundle 'rking/ag.vim'

" Colors to vim
Bundle 'chriskempson/base16-vim'

Bundle 'pangloss/vim-javascript'

Bundle 'tpope/vim-repeat'
"This is for ember js and handlebars
Bundle 'dsawardekar/ember.vim'
Bundle 'mustache/vim-mustache-handlebars'
Bundle 'kchmck/vim-coffee-script'
Bundle 'elixir-lang/vim-elixir'
Bundle 'slim-template/vim-slim'
Bundle 'vim-scripts/vim-auto-save'
Bundle 'rorymckinley/vim-symbols-strings'
let g:auto_save = 1  " enable AutoSave on Vim startup
let g:auto_save_no_updatetime = 1  " do not change the 'updatetime' option
let g:auto_save_in_insert_mode = 0  " do not save while in insert mode

Bundle 'dyng/ctrlsf.vim'

"auto reload vimrc when saved
augroup reload_vimrc " {
	autocmd!
	autocmd BufWritePost $MYVIMRC source $MYVIMRC
augroup END " }"

call vundle#end()            " required
syntax on
filetype plugin indent on     " required!
colorscheme Monokai
vmap <C-c> "+y
vmap <C-x> dd
nmap <C-a> ggVG
" This is for inserting space after comma
autocmd BufNewFile,BufRead *.slim inoremap , ,<space>
autocmd BufNewFile,BufRead *.erb inoremap , ,<space>
autocmd BufNewFile,BufRead *.rb inoremap , ,<space>
autocmd BufNewFile,BufRead *.rake inoremap , ,<space>
autocmd BufNewFile,BufRead *.coffee inoremap , ,<space>

" Plugin key-mappings.
imap <C-k>     <Plug>(neosnippet_expand_or_jump)
smap <C-k>     <Plug>(neosnippet_expand_or_jump)
xmap <C-k>     <Plug>(neosnippet_expand_target)

" SuperTab like snippets behavior.
imap <expr><TAB> neosnippet#expandable_or_jumpable() ?
      \ "\<Plug>(neosnippet_expand_or_jump)"
      \: pumvisible() ? "\<C-n>" : "\<TAB>"
smap <expr><TAB> neosnippet#expandable_or_jumpable() ?
      \ "\<Plug>(neosnippet_expand_or_jump)"
      \: "\<TAB>"

" For conceal markers.
if has('conceal')
  set conceallevel=2 concealcursor=niv
endif
"vim-airline works without nerdtree
set laststatus=2

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
