"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => General
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Don't force vi compatibility
set nocompatible      

" Plugin to order files
runtime bundle/vim-pathogen/autoload/pathogen.vim
call pathogen#infect('~/.vim/bundle')
call pathogen#helptags()

" Enable filetype plugin
filetype plugin on
filetype indent on

"set leader to comma
let mapleader = ","

" Sets how many lines of history VIM has to remember
set history=1000

" Set to auto read when a file is changed from the outside
set autoread

" Switch on syntax highlighting.
syntax on

"Color tipografía y menu contextual 
colorscheme molokai 
set guifont=Courier\ New\ 10

" Mouse enable
set mouse=a

"When .vimrc is edited, reload it
autocmd! bufwritepost .vimrc source ~/.vimrc

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Tabulación e indentación
" """"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set expandtab "replace tab to spaces
set shiftwidth=4
set tabstop=4
set smarttab

set lbr
set tw=500

set noai " No Auto indent para poder pegar bien el texto del Clipboard
set si "Smart indent
set wrap "Wrap lines

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => VIM user interface
" """"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set wildmenu
set wildmode=full "Make the command-line completion better
set ruler "Always show current position
set number "Mostrar en el lateral número de linea
set cmdheight=2 "The commandbar height
set hid "Change buffer - without saving
set title "Show current file name
"set cursorline "Underline current line

" Set backspace config
set backspace=eol,start,indent
set whichwrap+=<,>,h,l

set nolazyredraw "Don't redraw while executing macros 
set magic "Set magic on, for regular expressions
set mat=2 "How many tenths of a second to blink

" No sound on errors
set noerrorbells
set novisualbell
set t_vb=
set tm=500


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"=>BUCARDOR /
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

set ignorecase                                        "Ignore case when searching
set hlsearch                                          "Highlight search things
set incsearch                                         "Make search act like search in modern browsers
set showmatch "Show matching bracets when text indicator is over them
set wildignore=*.o,*.class,*.pyc,.git,.svn.target/**  "Remove search highlight 

"Ignore these files while expanding wild chars
nnoremap <leader><space> :noh<cr>                     


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"=> MAPEOS 
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"Mapeo visual para mantener las lineas selecionadas a la hora de indentarlas con < >
vnoremap > >gv
vnoremap < <gv

"Forget fucking caps 
nmap :W :w
nmap :Q :q
nmap :WQ :wq
nmap :wQ :wq
nmap :Wq :wq

" Use the damn hjkl keys
map <up> <nop>
map <down> <nop>
map <left> <nop>
map <right> <nop>

" ctrl-jklm changes to that split
map <c-j> <c-w>j
map <c-k> <c-w>k
map <c-l> <c-w>l
map <c-h> <c-w>h

" ctrl-c to close more quickly windows
map <c-c> <c-w>c

"Move between your tabs like in a browser
"D is for mac (cmd key) y linux try A (alt)
 "map <A-1>  1gt
 "map <A-2>  2gt
 "map <A-3>  3gt
 "map <A-4>  4gt
 "map <A-5>  5gt
 "map <A-6>  6gt
 "map <A-7>  7gt
 "map <A-8>  8gt
 "map <A-9>  9gt
 "map <A-0>  10gt

"nmap <c-1> :tabm 0<CR>
"nmap <C-Tab> :tabn<CR>
"nmap <C-S-Tab> :tabp<CR>
"nmap <C-t> :tabnew<CR>
"
"see this page http://vim.wikia.com/wiki/Alternative_tab_navigation
:nmap <C-S-TAB> :tabprevious<CR>
:nmap <C-TAB> :tabnext<CR>
:map <C-S-TAB> :tabprevious<CR>
:map <C-TAB> :tabnext<CR>
:imap <C-S-TAB> <Esc>:tabprevious<CR>i
:imap <C-TAB> <Esc>:tabnext<CR>i
:nmap <C-t> :tabnew<CR>
:imap <C-t> <Esc>:tabnew<CR>
 


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"=> VIM DIFF

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set diffopt+=iwhite


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"=> PLUGINS
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"""""""""""""""""""""""""""""""
"=> NERD Tree Plugin Settings
"""""""""""""""""""""""""""""""

" Toggle the NERD Tree on an off with F3
nnoremap <F2> :NERDTreeToggle<CR>

"Find the current file in the file browse
nnoremap <F3> :NERDTreeFind<CR> 

" Store the bookmarks file in perforce
" let NERDTreeBookmarksFile="~/.vim/NERDTreeBookmarks"

" Show the bookmarks table on startup
let NERDTreeShowBookmarks=1

"Don't display these kinds of files
let NERDTreeIgnore=[ '\.ncb$', '\.suo$', '\.vcproj\.RIMNET', '\.obj$',
             \ '\.ilk$', '^BuildLog.htm$', '\.pdb$', '\.idb$',
                         \ '\.embed\.manifest$', '\.embed\.manifest.res$',
                                     \ '\.intermediate\.manifest$', '^mt.dep$' ]



"""""""""""""""""""""""""""""""
"=> Gundo
""""""""""""""""""""""""""""""
nnoremap <leader>g :GundoToggle<CR>

"""""""""""""""""""""""""""""
"=>Tag List
"""""""""""""""""""""""""""""
"set tags=tags
"map <leader>t :TlistToggle<CR>
""let Tlist_Show_One_File = 1
"let Tlist_Use_Right_Window = 1

"""""""""""""""""""""""""""""
"=> EasyGrep
"""""""""""""""""""""""""""""
"Show always on bottom even two vertical split windows
let g:EasyGrepWindowPosition="botright"
