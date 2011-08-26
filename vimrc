set nocompatible

" Load Pathogen
call pathogen#infect()
call pathogen#helptags()

if has("gui_running")
    colorscheme wombat
else
    set t_Co=256
    syntax on
    colorscheme wombat256
endif

set gfn=Inconsolata\ Medium\ 10

set nowrap
set shiftwidth=4
set shiftround
set showmatch
set ignorecase
set hlsearch
set incsearch
set number
set smarttab
set smartindent
set tabstop=4
set shiftwidth=4
set expandtab
set undolevels=1000
set title
set visualbell
set noerrorbells
set nobackup
"set noswapfile

set pastetoggle=<F2>

filetype indent plugin on

set list
set listchars=tab:>.,trail:.,extends:#,nbsp:.
autocmd filetype html,xml set listchars-=tab:>.

set mouse=a

nmap <F5> :NERDTreeToggle<CR>
nmap <F6> :TlistToggle<CR>

autocmd FileType python set omnifunc=pythoncomplete#Complete
autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
autocmd FileType css set omnifunc=csscomplete#CompleteCSS
autocmd FileType xml set omnifunc=xmlcomplete#CompleteTags
autocmd FileType php set omnifunc=phpcomplete#CompletePHP
autocmd FileType c set omnifunc=ccomplete#Complete
