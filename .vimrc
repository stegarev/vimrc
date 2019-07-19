let mapleader = ","

" Specify a directory for plugins
" - For Neovim: ~/.local/share/nvim/plugged
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')

" Make sure you use single quotes

" On-demand loading
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'easymotion/vim-easymotion'
Plug 'tpope/vim-surround'
Plug 'valloric/youcompleteme'
Plug 'danilo-augusto/vim-afterglow'
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'isobit/vim-darcula-colors'
Plug 'ajmwagar/vim-deus'
Plug 'ayu-theme/ayu-vim'
Plug 'christophermca/meta5'
Plug 'sts10/vim-pink-moon'
Plug 'rakr/vim-colors-rakr'
Plug 'junegunn/seoul256.vim'
Plug 'altercation/vim-colors-solarized'
Plug 'morhetz/gruvbox'
Plug 'octol/vim-cpp-enhanced-highlight'
Plug 'vim-scripts/Conque-GDB'
Plug 'vim-airline/vim-airline'
Plug 'rbgrouleff/bclose.vim'
Plug 'francoiscabrol/ranger.vim'
Plug 'tpope/vim-fugitive'

" Initialize plugin system
call plug#end()

set runtimepath^=~/.vim/bundle/ctrlp.vim

"airline settings
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline#extensions#tabline#buffer_nr_show = 1
let g:airline#extensions#keymap#enabled = '0'

"ycm settings
let g:ycm_autoclose_preview_window_after_insertion = 1
let g:ycm_autoclose_preview_window_after_completion = 1
map <leader>gd :YcmCompleter GoToDefinitionElseDeclaration<CR>

syntax enable

set keymap=russian-jcukenwin
set iminsert=0
set imsearch=0
highlight lCursor guifg=NONE guibg=Cyan
"setlocal spell spelllang=ru_yo,en_us

" ColorScheme

set termguicolors
let g:gruvbox_bold = 0
colorscheme gruvbox

set background=dark
set cursorline

set hidden
set encoding=utf-8
set shiftwidth=4
set tabstop=4
set softtabstop=4
set expandtab
set autochdir
set autoindent
set nu
set mouse=a
set laststatus=2    " show current file name in status line
set statusline=%F  " get the full path
set statusline+=\ %y
set statusline+=%=
set statusline+=\ %p%%
set statusline+=\ %c\ %l/%L
set relativenumber
set wildmenu
set wildmode=full

set incsearch
set hlsearch
let g:cpp_class_scope_highlight = 1
let g:cpp_member_variable_highlight = 1
let g:cpp_class_decl_highlight = 1
let g:cpp_concepts_highlight = 1

" mappings
"
" ranger.vim
let g:ranger_map_keys = 0
map <leader>r :Ranger<CR>

" Автоматическое закрытие скобок
imap [ []<LEFT>
imap ( ()<LEFT>
imap { {}<LEFT>

" terminal Escape
" tnoremap <Esc> <C-\><C-n>

" plugins mappings
map <C-n> :NERDTreeToggle<CR>
nnoremap <Leader>n :NERDTreeFind<CR>
map <Leader> <Plug>(easymotion-prefix)
map <C-h> <C-w>h
map <C-l> <C-w>l
map <C-j> <C-w>j
map <C-k> <C-w>k

map <Leader>k :pyf /usr/share/clang/clang-format-6.0/clang-format.py<CR>

let g:ConqueTerm_StartMessages=0    " display warning message if conqueTerm is configed incorrect
let g:ConqueGdb_Leader="\\"
autocmd VimLeave * call system("xsel -ib", getreg('+'))
nnoremap <F9> :make -C bin <CR>
"source /usr/share/doc/ranger/examples/vim_file_chooser.vim
let g:xml_syntax_folding=1
au FileType xml setlocal foldmethod=syntax
"80
"j^wwwwveeyor("A;F xbi0xkd3kjd3j
"82
"j^wwwwveeyow(", F xbi0xk^wwwwwwveeyj$PF xbi0xA;kd3kjd3j
