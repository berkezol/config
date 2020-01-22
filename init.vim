set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'w0ng/vim-hybrid'
Plugin 'nvie/vim-flake8'
Plugin 'scrooloose/nerdtree'
" Status line for tmux
Plugin 'edkolev/tmuxline.vim'
" Fancy status line
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
" Ack for quick searching"
Plugin 'mileszs/ack.vim'
Plugin 'mustache/vim-mustache-handlebars'
call vundle#end()
"=============================================================================="
"                                    Colors                                    "
"=============================================================================="
syntax enable

set t_Co=256                " Enable 256 color terminal

colorscheme hybrid         " Set colorscheme, needs to be installed
set background=dark

set colorcolumn=80          " Color the 80th character in every line
set tabstop=4
set shiftwidth=4

" TmuxLine
" ---------
let g:tmuxline_powerline_separators = 0
let g:tmuxline_preset = {
        \'a'    : '#h',
        \'win'  : '#I',
        \'cwin' : ['#I', '#W'],
        \'z'    : '%R'
        \}

" VimAirline
" ----------
let g:airline#extensions#tabline#enable = 1
let g:airline#extensions#tabline#left_sep = ''
let g:airline#extensions#tabline#left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_left_sep = ''
let g:airline_powerline_fonts = 0

" Mustache
" --------
let g:mustache_abbreviations = 1
let g:mustache_operators = 1

" Whitespace War
" --------------
highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/
autocmd BufWinEnter * match ExtraWhitespace /\s\+$/
autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
autocmd InsertLeave * match ExtraWhitespace /\s\+$/
autocmd BufWinLeave * call clearmatches()

function! TrimWhiteSpace()
    %s/\s\+$//e
endfunction
autocmd BufWritePre * :call TrimWhiteSpace()
