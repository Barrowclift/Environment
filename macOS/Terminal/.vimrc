" Many thanks to Doug Black for his wonderful article on his vimrc:
" http://dougblack.io/words/a-good-vimrc.html#ui

" May or may not even be necessary, better safe than sorry, see:
" http://stackoverflow.com/questions/5845557/in-a-vimrc-is-set-nocompatible-completely-useless
set nocompatible
let mapleader=","		" Easier shortcuts


" UI Config -------------------------------
set nowrap				" Do NOT wrap text
set ruler				" Displays line number and character count in lower right hand corner of editor
set history=50			" Keep 50 lines of command line history
set showcmd				" Shows information bar at bottom of editor
set autoindent			" Exactly what it sets, set it on

if has("mouse")			" Better mouse support
	set mouse=a
endif

" Autoindent code when editing
set autoindent
filetype plugin indent on

set wildmenu			" Tab to complete in command line
set lazyredraw			" Redraw only when we need to

set formatoptions+=n	" While formatting text, recognize numbered lists


" Spaces & Tabs ---------------------------
set noexpandtab			" Never convert tabs to spaces
set softtabstop=4		" The number of columns indented when editing
set tabstop=4			" The number of columns a tab is counted for
set shiftwidth=4		" How many columns indented
set backspace=indent,eol,start	" Make backspace work like all other apps

autocmd FileType python setlocal shiftwidth=4 tabstop=4 softtabstop=4 " Fuck python's awful 8 column tabstop, and fuck the devs that made that option forcibly overwrite user-defined settings

set list listchars=tab:\ \ " The cursor rests at the beginning of tabs instead of the end, like it should.

" Colors ----------------------------------
syntax enable
colorscheme monokai


" Searching -------------------------------
set incsearch			" Search in real time as characters are typed
set hlsearch			" Highlight search matches

" Shortcut to turn off search higlights after search
" , + SPACE
nnoremap <leader><space> :nohlsearch<CR>

set showmatch			" Highlight matching [({})]


" Folding ---------------------------------
set foldenable			" Enable folding
set foldnestmax=10		" 10 nested fold max
set foldlevelstart=10	" Open most folds by default
nnoremap <Space> za		" Space to toggle folds
set foldmethod=indent	" Fold based on indent level


" Movement --------------------------------
" Move vertically by visual line
nnoremap j gj
nnoremap k gk

" Move to beginning/end of line
nnoremap B ^
nnoremap E $


" Backups ---------------------------------
if has("vms")
	set nobackup
else
	set backup
	set backupdir=~/.vim/tmp/,~/.tmp,~/tmp,/var/tmp,/tmp
	set backupskip=/tmp/*,/private/tmp/*
	set directory=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
	set writebackup
endif

set viminfo+=n~/.vim/viminfo
