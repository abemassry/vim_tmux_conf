autocmd FileType python set omnifunc=pythoncomplete#Complete
autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
autocmd FileType css set omnifunc=csscomplete#CompleteCSS
autocmd FileType xml set omnifunc=xmlcomplete#CompleteTags
autocmd FileType php set omnifunc=phpcomplete#CompletePHP
autocmd FileType c set omnifunc=ccomplete#Complete
au BufNewFile,BufRead *.ejs set filetype=html

filetype on
filetype plugin on
syntax enable
set grepprg=grep\ -nH\ $*
set autoindent
set expandtab
set smarttab
set shiftwidth=2
set softtabstop=2
set tabstop=2
let spacing = "2Spaces"
set list lcs=tab:\|\ 
if version >= 700
   set spl=en spell
   set nospell
endif

set wildmenu
set wildmode=list:longest,full

set number
set laststatus=2
set statusline=%<\ %n:%f\ %m%r%y\ 2Spaces%=%-35.(line:\ %l\ of\ %L,\ col:\ %c%V\ (%P)%)
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
if &diff
  set background=dark
  colorscheme hybrid
endif

set colorcolumn=81

function GitBranchName()
  let shellcmd = '~/.git_branch.sh'
  let gitbranch=system(shellcmd)
  let g:gitbranch=gitbranch
endfunction

function Git()
  return g:gitbranch
endfunction
  

function TabTabs()
  set shiftwidth=2
  set tabstop=2
  set softtabstop=0
  set noexpandtab
  set statusline=%<\ %n:%f\ %m%r%y\ Tabs\ %{Git()}\ %=%-35.(line:\ %l\ of\ %L,\ col:\ %c%V\ (%P)%)
endfunction
nmap <F3> mz:execute TabTabs()<CR>'z

function Tab2Spaces()
  set expandtab
  set smarttab
  set shiftwidth=2
  set softtabstop=2
  set tabstop=2
  let spacing = "2Spaces"
  set statusline=%<\ %n:%f\ %m%r%y\ 2Spaces\ %{Git()}\ %=%-35.(line:\ %l\ of\ %L,\ col:\ %c%V\ (%P)%)
endfunction
nmap <F4> mz:execute Tab2Spaces()<CR>'z

function Tab4Spaces()
  set expandtab
  set smarttab
  set shiftwidth=4
  set softtabstop=4
  set tabstop=4
  let spacing = "4Spaces"
  set statusline=%<\ %n:%f\ %m%r%y\ 4Spaces\ %{Git()}\ %=%-35.(line:\ %l\ of\ %L,\ col:\ %c%V\ (%P)%)
endfunction
nmap <F5> mz:execute Tab4Spaces()<CR>'z

au BufEnter *.* execute GitBranchName()
"set background=dark
"colorscheme solarized
execute pathogen#infect()
