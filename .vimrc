syntax on
set number

filetype plugin on
filetype plugin indent on
set autoindent
set smartindent
set tabstop=2
set shiftwidth=2
set expandtab ts=2 sw=2 ai
set visualbell
set t_vb=

set bg=dark
if has("gui_running")
    execute pathogen#infect()
    set guifont=Inconsolata\ for\ Powerline:h12
    let g:airline_powerline_fonts=1
    colorscheme base16-railscasts
else
    let g:airline_left_sep=''
    let g:airline_right_sep=''
    colorscheme slate
endif

autocmd vimenter * if !argc() | NERDTree | endif
map <C-n> :NERDTreeToggle<CR>

set statusline+=%#warningmsg#
set statusline+=%{fugitive#statusline()}
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:airline#extensions#whitespace#enabled = 0
set guifont=Inconsolata\ for\ Powerline:h12

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_echo_current_error = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 0
let g:syntastic_check_on_wq = 0
let g:syntastic_javascript_checkers = ['jscs']
let g:syntastic_ruby_checkers = ['rubocop']
let g:syntastic_ruby_rubocop_exec = '/Users/swatters/.rbenv/shims/rubocop'
let g:syntastic_html_checkers = []

set colorcolumn=120

set runtimepath^=~/.vim/bundle/ctrlp.vim
