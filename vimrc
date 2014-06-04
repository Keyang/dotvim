call pathogen#infect() 
call pathogen#helptags()
set wildmode=longest,list,full
set wildmenu
"-- General --
set number		"Show line numbers
set ruler		"Show the line and column number of the cursor position

"-- Programming --
set autoindent		"Copy indent from current line when starting a new line
set smartindent		"Do smart indenting when starting a new line. Works with supported c-like languages
set regexpengine=1
set autoread
syntax on
filetype on
filetype plugin on
filetype indent plugin on
set omnifunc=syntaxcomplete#Complete
set nowrap
"-- Spaces/Tabs --
set expandtab		"Use spaces instead of tabs
set shiftwidth=2
set tabstop=2
set hidden
set scrolloff=5
set hlsearch
set incsearch

"-- Tweaks --
"Add tweak for better backspace support
set backspace=indent,eol,start

colorscheme gruvbox
set background=dark
filetype plugin on
let g:delimitMate_expand_cr = 1
let g:delimitMate_expand_space = 1
let g:delimitMate_jump_expansion=1
let g:ycm_register_as_syntastic_checker = 0

"Customized Key mappings
let mapleader=" "   "set leader key the space key
map <leader>h <C-w>h
map <leader>j <C-w>j
map <leader>k <C-w>k
map <leader>l <C-w>l
map <leader>n :NERDTreeToggle<CR>
map <leader>t :CommandT<CR>
vmap <leader>c "*y
map <leader>/ :call NERDComment("n", "Toggle")<CR>
autocmd FileType javascript map <leader>f :call JsBeautify()<CR>
autocmd FileType html map <leader>f :call HtmlBeautify()<CR>
autocmd FileType css map <leader>f :call CSSBeautify()<CR>
map <leader>z :!bash<CR>

"Custmoized commands
com Vimrc edit ~/.vim/vimrc
com Bash ConqueTerm bash
