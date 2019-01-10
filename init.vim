if &compatible
  set nocompatible " Be iMproved
endif

let dein_path = $HOME . '/.config/nvim'
set runtimepath+=~/.config/nvim/repos/github.com/Shougo/dein.vim

" Required:
if dein#load_state(dein_path)
	call dein#begin(dein_path)

	" Let dein manage dein
	" Required:
	call dein#add(dein_path)

	" Add or remove your plugins here:
	call dein#add('Shougo/deoplete.nvim')
  call dein#add('tpope/vim-surround')  " Vim bracket/parentheses wrapping
  call dein#add('w0rp/ale')  " linter
  call dein#add('junegunn/fzf', { 'build': './install --all', 'merged': 0 })
  call dein#add('junegunn/fzf.vim', { 'depends': '/usr/local/bin/fzf' })
  call dein#add('907th/vim-auto-save')
  call dein#add('scrooloose/nerdcommenter')
  call dein#add('mileszs/ack.vim')

	" Required:
	call dein#end()
	call dein#save_state()
endif

" Automatically install new plugins
if dein#check_install()
  call dein#install()
endif

" Required:
filetype plugin indent on
syntax enable

" Basic settings --- {{{
set backupcopy=yes
set mouse=a
set incsearch hlsearch
set ignorecase smartcase

set tabstop=2
set shiftwidth=2
set softtabstop=2
set shiftround
set expandtab

set nowrap

set number
set relativenumber
set numberwidth=2
" }}}

" Set Clipboard
if has('unnamedplus')
  set clipboard=unnamedplus
endif

" Shorthands to make life easy --- {{{
" Exit from insert mode
inoremap hh <esc>
" Start of line
nnoremap <S-h> 0
" End of line
nnoremap <S-l> $
let mapleader = ","
" stop highlighting search
nnoremap <silent> <leader><space> :setlocal nohlsearch!<cr>
" search
nnoremap <C-f> /
" enter
inoremap <C-e> <enter>
nnoremap <C-e> <enter>
" delete
nnoremap <C-d> x
"remap command line mode
nnoremap <leader>r :
" }}}

" deoplete
let g:deoplete#enable_at_startup = 1

" ale --- {{{
le_linters = {
  \ 'javascript': ['standard'],
  \ 'ruby': ['rubocop']
  \ }

let g:ale_fixers = {
  \ 'javascript': ['standard'],
  \ 'ruby': ['rubocop']
  \ }
" }}}

" fzf --- {{{
let g:fzf_action = {
  \ 'ctrl-t': 'tab split',
  \ 'ctrl-x': 'split',
  \ 'ctrl-v': 'vsplit' }


" Search for files inside the project not in gitignore fuzzily
nnoremap <C-p> :GFiles<CR>
" Search for all files inside the project fuzzily
nnoremap <leader><C-p> :Files<CR>

" Default fzf layout
" - down / up / left / right
let g:fzf_layout = { 'down': '~40%' }
" }}}

" netrw --- {{{
let g:netrw_banner = 0
let g:netrw_liststyle = 3
let g:netrw_browse_split = 4
let g:netrw_altv = 1
let g:netrw_winsize = 15
" }}}

" autosave
let g:auto_save = 1   " enable autosave on Vim Startup

" ack config
let g:ackprg = 'ag --nogroup --nocolor --column'

set autoread " trigger filetype checking
