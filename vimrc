"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => General
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Don't force vi compatibility
set nocompatible      

" Plugin to order files
runtime bundle/vim-pathogen/autoload/pathogen.vim
call pathogen#infect()
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

" Visual settings
syntax on
colorscheme molokai 
set encoding=utf-8
set t_Co=256 "Set t 256 color term

" Mouse enable
set mouse=a

"When .vimrc is edited, reload it
autocmd! bufwritepost .vimrc source ~/.vimrc

"Set groovy colors for gradle files
au BufNewFile,BufRead *.gradle setf groovy 

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Tabulación e indentación
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set expandtab "replace tab to spaces
set shiftwidth=4
set tabstop=4
set smarttab

set lbr
set tw=500

set noai " No Auto indent para poder pegar bien el texto del Clipboard
set si "Smart indent
set wrap "Wrap lines

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Copy && Paste
" => Enable in all OS http://vimcasts.org/blog/2013/11/getting-vim-with-clipboard-support/
" => Plugin to use clipboard https://github.com/svermeulen/vim-easyclip
" => "+y this is the command to yank in + OS register
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set clipboard+=unnamed  
if has('unnamedplus')
  set clipboard=unnamed,unnamedplus
endif
set paste               " Paste from a windows or from vim
set go+=a               " Visual selection automatically copied to the clipboard"

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => VIM user interface
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set wildmenu
set wildmode=full       "Make the command-line completion better
set ruler               "Always show current position
set number              "Mostrar en el lateral número de linea
set cmdheight=2         "The commandbar height
set hid                 "Change buffer - without saving
set title               "Show current file name
"set cursorline "Underline current line

" Set backspace config
set backspace=eol,start,indent
set whichwrap+=<,>,h,l

set nolazyredraw         "Don't redraw while executing macros 
set magic                "Set magic on, for regular expressions
set mat=2                "How many tenths of a second to blink

" No sound on errors
set noerrorbells
set novisualbell
set t_vb=
set tm=500

" Markdown
au BufNewFile,BufFilePre,BufRead *.markdown,*.mdown,*.mkd,*.mkdn,*.md set filetype=markdown

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"=> Search /
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

set ignorecase           "Ignore case when searching
set hlsearch             "Highlight search things
set incsearch            "Make search act like search in modern browsers
set showmatch            "Show matching bracets when text indicator is over them
set wildignore+=*.o,*.class,*.pyc,.git,.svn.target/**,*.swp,*.zip,*.so,*\\tmp\\*
set wildignore+=*/.cache/*,*/tmp/*,*/.neocon/*,*.log,*.gz,*.bz2,*.bmp,*.ppt
                
"Ignore these files while expanding wild chars
nnoremap <leader><space> :noh<cr>                     


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"=> Backups
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set nobackup             "nobk:  in this age of version control, who needs it
set nowritebackup        "nowb:  don't make a backup before overwriting
set noswapfile           "noswf: don't litter swap files everywhere
set directory=/tmp       "dir:   directory for temp files

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"=> Maps 
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

    """""""""""""""""""""""""""""
    "=> Airline
    """""""""""""""""""""""""""""   
    let g:airline_theme="hybridline"
    let g:timeoutlen=50
    set laststatus=2 " load at init https://github.com/bling/vim-airline/issues/358


    """""""""""""""""""""""""""""""
    "=> Crtlp 
    """"""""""""""""""""""""""""""
    nnoremap <leader>p :CtrlP<CR>
    nnoremap <leader>b :CtrlPBuffer<CR>
    let g:ctrlp_working_path_mode = 'a'

    """""""""""""""""""""""""""""
    "=> EasyGrep
    """""""""""""""""""""""""""""
    "Show always on bottom even two vertical split windows
    let g:EasyGrepWindowPosition="botright"

    """""""""""""""""""""""""""""""
    "=> EasyTags
    """""""""""""""""""""""""""""""
    let g:easytags_file = '~/.vim/tags'
    let g:easytags_dynamic_files = 1

    """""""""""""""""""""""""""""
    "=> Git Gutter 
    """""""""""""""""""""""""""""   
    let g:gitgutter_map_keys = 0

    """""""""""""""""""""""""""""""
    "=> Gundo
    """"""""""""""""""""""""""""""
    nnoremap <leader>g :GundoToggle<CR>

    """""""""""""""""""""""""""""
    "=> IncSearch
    """""""""""""""""""""""""""""   
    map /  <Plug>(incsearch-forward)
    map ?  <Plug>(incsearch-backward)
    map g/ <Plug>(incsearch-stay)

    """""""""""""""""""""""""""""""
    "=> NERD Tree Plugin Settings
    """""""""""""""""""""""""""""""
    set modifiable "Can add/modifiy proyect's structure
    nnoremap <F2> :NERDTreeToggle<CR> 
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
    "=> TagBar
    """""""""""""""""""""""""""""""
    nmap <F4> :TagbarToggle<CR>


