filetype plugin on
filetype indent on

" Always show current position
set ruler

" Configure backspace to work as a backspace...
set backspace=eol,start,indent
set whichwrap+=<,>,h,l

" Ignore case when searching
set ignorecase

" Highlight search results
set hlsearch

" Show matching brackets when indicator is over them
set showmatch

" Stop noises...
set noerrorbells
set novisualbell
set t_vb=
set tm=500

syntax enable

set background=dark

set encoding=utf8

" Use spaces instead of tabs
set expandtab

" Be smart when using tabs...
set smarttab

" 1 tab is 4 spaces
set shiftwidth=4
set tabstop=4

" Indenting stuff
set ai
set si
set wrap

" Set 7 lines to the cursor, when moving vertically
set so=7

" Set line numbers etc
set number
set cursorline
set relativenumber
highlight LineNr ctermfg=LightGrey
highlight CursorLineNr ctermfg=White

" Status Line
set statusline=
set statusline+=%7*\[%n]                                  "buffernr
set statusline+=%1*\ %<%F\                                "File+path
set statusline+=%2*\ %y\                                  "FileType
set statusline+=%3*\ %{''.(&fenc!=''?&fenc:&enc).''}      "Encoding
set statusline+=%8*\ %=\ row:%l/%L\ (%03p%%)\             "Rownumber/total (%)
set statusline+=%9*\ col:%03c\                            "Colnr
set statusline+=%0*\ \ %m%r%w\ %P\ \                      "Modified? Readonly? Top/bot.
set laststatus=2                                          "Always show statusbar
