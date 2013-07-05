autocmd FileType python set omnifunc=pythoncomplete#Complete
autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
autocmd FileType css set omnifunc=csscomplete#CompleteCSS
autocmd FileType xml set omnifunc=xmlcomplete#CompleteTags
autocmd FileType php set omnifunc=phpcomplete#CompletePHP
autocmd FileType c set omnifunc=ccomplete#Complete

filetype on
filetype plugin on
syntax enable
set grepprg=grep\ -nH\ $*
set autoindent
set expandtab
set smarttab
set shiftwidth=2
set softtabstop=2
if version >= 700
   set spl=en spell
   set nospell
endif

set wildmenu
set wildmode=list:longest,full

set number
set laststatus=2
set statusline=%<\ %n:%f\ %m%r%y%=%-35.(line:\ %l\ of\ %L,\ col:\ %c%V\ (%P)%)
"some color options
"hi LineNr ctermfg=blue
"hi TabLine ctermfg=blue ctermbg=darkgrey
"hi TabLineSel ctermfg=grey ctermbg=blue
"hi TabLineFill ctermfg=black ctermbg=blue
"hi Pmenu ctermfg=blue ctermbg=darkgrey
"hi PmenuSel ctermfg=grey ctermbg=blue
set smartcase
set ignorecase
set incsearch
set hlsearch
let g:clipbrdDefaultReg = '+'
set nohidden
nnoremap <silent> <C-t> :tabnew<CR>
nnoremap <silent> zj o<Esc>
nnoremap <silent> zk O<Esc>
nnoremap <space> za
set pastetoggle=<F2>
colorscheme Tomorrow-Night
"set background=dark
"colorscheme solarized
