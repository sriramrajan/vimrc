" Configuration file for Vim and gVim
" Written by Mikołaj Bartnicki <mikobartnicki@gmail.com> on 2014-12-10.
" To use on Unix-like systems, save as: '~/.vim/vimrc'.
" To use on Windows systems, save as: 'C:\Users\%USERNAME%\vimfiles\vimrc'.

" Use Vim mode instead of pure vi, it must be the first instruction
set nocompatible

" display settings
language messages en_US.utf-8   " language of messages
set encoding=utf-8              " encoding used to display edited file
set ruler                       " show the cursor position

" write settings
set fileencoding=utf-8          " encoding used to save edited file
set confirm                     " confirm :q in case of unsaved changes
set nobackup                    " don't keep the backup~ file

" edit settings
set textwidth=79                " set maximum width of text (columns)
set tabstop=4                   " set [Tab] length (columns)
set shiftwidth=4                " set indentation depth (columns)
set expandtab                   " replace [Tab] with spaces
set backspace=indent,eol,start  " [Backspace] over everything in insert mode
set nojoinspaces                " no extra space after a dot when joining lines

" search settings
set incsearch                   " do incremental search
set ignorecase                  " do case insensitive search...
set smartcase                   " ...unless capital letters are used
set hlsearch                    " highlight search results

" file type specific settings
filetype on                     " enable file type detection
filetype plugin on              " load the plugins for the specific file types
filetype indent on              " automatically indent code
set cinoptions=g0               " don't indent C++ scope declarations

" syntax highlighting settings
syntax enable                   " enable syntax highlighting
colorscheme default             " use default color scheme
set background=dark             " use dark background

" way of displaying non-printable characters
set listchars=eol:$,tab:>-,trail:.,nbsp:_,extends:+,precedes:+

" automatic commands
if has('autocmd')
    " disable automatic code indentation when editing TeX and XML files
    autocmd FileType tex,xml setlocal indentexpr=

    " delete empty or whitespaces-only lines at the end of file
    autocmd BufWritePre * :%s/\(\s*\n\)\+\%$//ge

    " replace groups of empty or whitespaces-only lines with one empty line
    autocmd BufWritePre * :%s/\(\s*\n\)\{3,}/\r\r/ge

    " delete all trailing whitespaces
    autocmd BufWritePre * :%s/\s\+$//ge
endif

" keymapping settings

" center view on the next search result
noremap n nzz
noremap N Nzz

" press [F1] for help
noremap <F1> :help<CR>
inoremap <F1> <Esc>:help<CR>

" press [F2] to toggle dark/light background
noremap <F2> :let &bg = (&bg == "dark" ? "light" : "dark")<CR>
inoremap <F2> <C-o>:let &bg = (&bg == "dark" ? "light" : "dark")<CR>

" press [F3] to toggle displaying line numbers
noremap <F3> :set number!<CR>
inoremap <F3> <C-o>:set number!<CR>

" press [F4] to toggle showing the non-printable charactes
noremap <F4> :set list!<CR>
inoremap <F4> <C-o>:set list!<CR>

" press [F5] to turn off the search results highlight
noremap <F5> :nohlsearch<CR>
inoremap <F5> <C-o>:nohlsearch<CR>

" press [F6] to sort selection or paragraph
vnoremap <F6> :sort i<CR>
nnoremap <F6> Vip:sort i<CR>

" press [F7] to fix indentation in whole edited file
noremap <F7> m'ggVG=``zz
inoremap <F7> <Esc>m'ggVG=``zzgi

" press [F8] to toggle tabstop length between 4 and 8
noremap <F8> :let &ts = (&ts != 4 ? 4 : 8)<CR>
inoremap <F8> <C-o>:let &ts = (&ts != 4 ? 4 : 8)<CR>

" press [F9] to toggle softtabstop
noremap <F9> :let &sts = (&sts != &ts ? &ts : 0)<CR>
inoremap <F9> <C-o>:let &sts = (&sts != &ts ? &ts : 0)<CR>

" press [F11] to save the edited file
noremap <F11> :w<CR>
inoremap <F11> <C-o>:w<CR>

" press [F12] to quit Vim
noremap <F12> :q<CR>
inoremap <F12> <Esc>:q<CR>
