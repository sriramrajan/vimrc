" Configuration file for gVim
" Written by Mikołaj Bartnicki <mikobartnicki@gmail.com> on 2014-12-07.
" To use on Unix-like systems, save as: '~/.vim/gvimrc'.
" To use on Windows systems, save as: 'C:\Users\%USERNAME%\vimfiles\gvimrc'.

" GUI settings
set langmenu=en_US.utf=8                    " language of GUI window menus
set columns=84 lines=48                     " window geometry
set number                                  " display line numbers

" font for displaying edited file and messages
if has('unix')
    set guifont=Monospace\ 12               " looks fine on Linux with GNOME
elseif has('windows')
    set guifont=Consolas:h12:cEASTEUROPE    " looks fine on Windows 8.1
endif

" syntax highlighting settings
colorscheme solarized                       " use Solarized color scheme
set background=light                        " use light background
