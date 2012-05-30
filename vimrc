" Removes vi compatibility
set nocompatible

" Load Pathogen
call pathogen#infect()
call pathogen#helptags()

" Load Wombat theme
if has("gui_running")
    colorscheme wombat
else
    set t_Co=256
    syntax on
    colorscheme wombat256
endif

" Set font
if has("mac")
    set gfn=Inconsolata:h13
else
    set gfn=Inconsolata\ Medium\ 10
endif

" Visual stuff
set number
set title

set list
set listchars=tab:>.,trail:.,extends:#,nbsp:.
autocmd filetype html,xml set listchars-=tab:>.

" Indentation
set nowrap
set tabstop=4
set shiftwidth=4
set shiftround
set shiftwidth=4
set smarttab
set expandtab
set smartindent
set pastetoggle=<F2>

filetype indent plugin on

" Searching
set showmatch
set smartcase
set hlsearch
set incsearch

" Alerts
set noerrorbells
set visualbell

" Backups and history
set nobackup
set undolevels=1000
set noswapfile

" Mouse
set mouse=a

" Tabs
nmap <F7> :tabn<CR>
nmap <F8> :tabp<CR>

" NERDTree
nmap <F5> :NERDTreeToggle<CR>
let NERDTreeIgnore=['\.pyc$', '\.rbc$', '\~$']
let NERDTreeShowHidden=1

" gist-vim
if has("mac")
  let g:gist_clip_command = 'pbcopy'
elseif has("unix")
  let g:gist_clip_command = 'xclip -selection clipboard'
endif
let g:gist_detect_filetype = 1
let g:gist_open_browser_after_post = 1

" Taglist
nmap <F6> :TlistToggle<CR>

" Code completion
autocmd FileType python set omnifunc=pythoncomplete#Complete
autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
autocmd FileType css set omnifunc=csscomplete#CompleteCSS
autocmd FileType xml set omnifunc=xmlcomplete#CompleteTags
autocmd FileType php set omnifunc=phpcomplete#CompletePHP
autocmd FileType c set omnifunc=ccomplete#Complete

" Highlighting for various file types
au BufRead,BufNewFile *.twig set filetype=jinja
au BufRead,BufNewFile *.twig set filetype=htmljinja
au BufRead,BufNewFile *.html set filetype=jinja
au BufRead,BufNewFile *.html set filetype=htmljinja


" Command aliases
cnoreabbrev nt NERDTree

" Fix for syntax highlighting to appear correctly
autocmd BufEnter * :syntax sync fromstart
autocmd BufEnter * :syntax sync minlines=99999

" Disabled arrows
map <up> <nop>
map <down> <nop>
map <left> <nop>
map <right> <nop>
imap <up> <nop>
imap <down> <nop>
imap <left> <nop>
imap <right> <nop>
