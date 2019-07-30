" All system-wide defaults are set in $VIMRUNTIME/debian.vim and sourced by
" the call to :runtime you can find below.  If you wish to change any of those
" settings, you should do it in this file (/etc/vim/vimrc), since debian.vim
" will be overwritten everytime an upgrade of the vim packages is performed.
" It is recommended to make changes after sourcing debian.vim since it alters
" the value of the 'compatible' option.

" This line should not be removed as it ensures that various options are
" properly set to work with the Vim-related packages available in Debian.
runtime! debian.vim

" Uncomment the next line to make Vim more Vi-compatible
" NOTE: debian.vim sets 'nocompatible'.  Setting 'compatible' changes numerous
" options, so any other options should be set AFTER setting 'compatible'.
"
set nocompatible
set nu
set autoindent
set cindent
set tabstop=2
set expandtab
set shiftwidth=2
set softtabstop=2
set backspace=2
set matchtime=2


set laststatus=2
"set ruler
"set cursorline
"set cursorcolumn
set hlsearch  


" Vim5 and later versions support syntax highlighting. Uncommenting the next
" line enables syntax highlighting by default.
syntax on

" If using a dark background within the editing area and syntax highlighting
" turn on this option as well
set background=dark

" Uncomment the following to have Vim jump to the last position when
" reopening a file
"if has("autocmd")
"  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
"endif

" Uncomment the following to have Vim load indentation rules and plugins
" according to the detected filetype.
"if has("autocmd")
"  filetype plugin indent on
"endif

" The following are commented out as they cause vim to behave a lot
" differently from regular Vi. They are highly recommended though.
set showcmd		" Show (partial) command in status line.
set showmatch		" Show matching brackets.
set ignorecase		" Do case insensitive matching
set smartcase		" Do smart case matching
set incsearch		" Incremental search
set autowrite		" Automatically save before commands like :next and :mak
set hidden		" Hide buffers when they are abandoned
"set mouse=a		" Enable mouse usage (all modes)

set wildmenu


set gcr=a:block-blinkon0

"set guioptions -=l
"set guioptions -=L
"set guioptions -=r
"set guioptions -=R
"set guioptions -=m
"set guioptions -=T


set foldmethod=indent
set foldmethod=syntax
set nofoldenable
"za open/close when; zM close all;zR open All;

:hi linenr ctermfg= grey
"set line num clolor 
"set nuw=1
"clear blank before line num



filetype off                    " required!
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
Bundle 'gmarik/vundle'

Bundle 'jiangmiao/auto-pairs'   
Bundle 'scrooloose/syntastic'  

Bundle 'scrooloose/nerdtree'
Bundle 'majutsushi/tagbar'
Bundle 'SirVer/ultisnips'
Bundle 'honza/vim-snippets'
"Bundle 'Valloric/YouCompleteMe'


filetype plugin  indent on

"nerdtree setting
map <F3> :NERDTreeMirror<CR>
map <F3> :NERDTreeToggle<CR>

"tagbar setting
nmap <silent> <F4> :TagbarToggle<CR>
let g:tagbar_ctags_bin = 'ctags'
let g:tagbar_width = 30

"setting ultisnips 
"code template  
"let g:UltiSnipsExpandTrigger="<Tab>"
"let g:UltiSnipsJumpForwardTrigger="<Tab>"
"let g:UltiSnipsJumpBackwardTrigger="<S-Tab>"
" If you want :UltiSnipsEdit to split your window.
"let g:UltiSnipsEditSplit="vertical"

" YCM configure
" Go to definition else declaration
nnoremap <leader>jd :YcmCompleter GoToDefinitionElseDeclaration<CR>
" 主动调用补全
let g:ycm_key_invoke_completion = '<C-a>'
let g:ycm_global_ycm_extra_conf = '~/.vim/bundle/YouCompleteMe/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py'
"start don't show info of ycm_extra_conf
let g:ycm_confirm_extra_conf=0
let g:ycm_seed_identifiers_with_syntax=1  
let g:ycm_complete_in_strings = 1
let g:ycm_key_list_select_completion = ['<Down>']
let g:ycm_key_list_previous_completion = ['<Up>']
let g:ycm_cache_omnifunc=0
let g:ycm_min_num_of_chars_for_completion=2
let g:ycm_collect_identifiers_from_comments_and_strings = 0
let g:ycm_collect_identifiers_from_tags_files=1
"show not windows
set completeopt-=preview




