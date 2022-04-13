" Disable compatibility with vi which can cause unexpected issues.
set nocompatible

" Enable type file detection. Vim will be able to try to detect the type of file in use.
filetype on

" Display verticle line at column 80
set colorcolumn=80

" Enable plugins and load plugin for the detected file type.
filetype plugin on

" vimtex fold
" g:vimtex_fold_enabled

" PDF Viewer for tex live preview
let g:livepreview_previewer = 'zathura'

" Load an indent file for the detected file type.
filetype indent on

" Turn syntax highlighting on.
syntax on

" Add numbers to each line on the left-hand side.
set number

" Highlight cursor line underneath the cursor horizontally.
set cursorline

" Highlight cursor line underneath the cursor vertically.
" set cursorcolumn

" Set netrw listing type
let g:netrw_liststyle=3

" Don't load files in netrw window
let g:netrw_browse_split=4

" Set netrw split width
let g:netrw_winsize=20

" Set shift width to 4 spaces.
set shiftwidth=4

" Set tab width to 4 columns.
set tabstop=4

" Use space characters instead of tabs.
set expandtab

" Do not save backup files.
set nobackup

" Do not let cursor scroll below or above N number of lines when scrolling.
set scrolloff=10

" While searching through a file incrementally highlight matching characters
set incsearch

" Ignore capital letters during search.
set ignorecase

" Override the ignorecase option if searching for capital letters.
set smartcase

" Show parital command you type in the last line of the screen.
set showcmd

" Show the mode you are on the last line.
set showmode

" Show matching words during a search.
set showmatch

" Use highlighting when doing a search.
" set hlsearch

" Enable auto completion menu after pressing TAB.
set wildmenu
"
" " Make wildmenu behave like similar to Bash completion.
set wildmode=list:longest
"
" " There are certain files that we would never want to edit with Vim.
" " Wildmenu will ignore files with these extensions.
set wildignore=*.docx,*.jpg,*.png,*.gif,*.pdf,*.pyc,*.exe,*.flv,*.img,*.xlsx

" PLUGINS ---------------------------------------------------------------- {{{

call plug#begin('~/.vim/plugged')

  Plug 'lervag/vimtex'
  Plug 'preservim/nerdtree'
  Plug 'rust-lang/rust.vim'
  Plug 'mattn/emmet-vim'
  Plug 'xuhdev/vim-latex-live-preview', { 'for': 'tex' }

call plug#end()

" }}}


" MAPPINGS --------------------------------------------------------------- {{{

" Mappings code goes here.

" }}}


" VIMSCRIPT -------------------------------------------------------------- {{{

" This will enable code folding.
" Use the marker method of folding.
augroup filetype_vim
    autocmd!
    autocmd FileType vim setlocal foldmethod=marker
augroup END

" More Vimscripts code goes here.

" }}}


" STATUS LINE ------------------------------------------------------------ {{{

" Status bar code goes here.

" }}}
"Added by android-vim:
set tags+=/home/sony/.vim/tags
autocmd Filetype java setlocal omnifunc=javacomplete#Complete
let g:SuperTabDefaultCompletionType = 'context'
