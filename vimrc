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

" http://stackoverflow.com/questions/6624043/how-to-open-or-close-nerdtree-and-tagbar-with-leader
function! ToggleNERDTree()
    let w:jumpbacktohere = 1

    " Detect which plugins are open
    if exists('t:NERDTreeBufName')
        let nerdtree_open = bufwinnr(t:NERDTreeBufName) != -1
    else
        let nerdtree_open = 0
    endif

    " Perform the appropriate action
    if nerdtree_open
        NERDTreeClose
    else
        NERDTree
    endif

    " Jump back to the original window
    for window in range(1, winnr('$'))
        execute window . 'wincmd w'
        if exists('w:jumpbacktohere')
            unlet w:jumpbacktohere
            break
        endif
    endfor
endfunction

nmap <F12> :call ToggleNERDTree()<CR>

autocmd FileType python set omnifunc=pythoncomplete#Complete
autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
autocmd FileType css set omnifunc=csscomplete#CompleteCSS
autocmd FileType xml set omnifunc=xmlcomplete#CompleteTags
autocmd FileType php set omnifunc=phpcomplete#CompletePHP
autocmd FileType c set omnifunc=ccomplete#Complete
