" Plugins will be downloaded under the specified directory.
call plug#begin('~/.vim/plugged')

" Declare the list of plugins.
Plug 'snakemake/snakemake', {'rtp': 'misc/vim'}
Plug 'broadinstitute/vim-wdl'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'scrooloose/syntastic'
Plug 'nvie/vim-flake8'
Plug 'tpope/vim-fugitive'
" List ends here. Plugins become visible to Vim after this call.
call plug#end()

" Set spellcheck in commit messages
autocmd FileType gitcommit setlocal spell

" Set snakemake syntax on snakemake files
au BufNewFile,BufRead Snakefile set syntax=snakemake
au BufNewFile,BufRead *.smk set syntax=snakemake

" Recommended syntastic settings
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
"let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" Set indentattion
set tabstop=4
set softtabstop=4
set shiftwidth=4
set textwidth=79
set expandtab
set autoindent
set smartindent
set fileformat=unix

" Set indentation for yaml files
autocmd FileType yaml setlocal ts=2 sts=2 sw=2 expandtab
autocmd FileType yml setlocal ts=2 sts=2 sw=2 expandtab

" Folding
set foldmethod=indent
set foldlevelstart=10
