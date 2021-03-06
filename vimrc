" Plugins will be downloaded under the specified directory.
call plug#begin('~/.vim/plugged')

" Declare the list of plugins.
Plug 'snakemake/snakemake', {'rtp': 'misc/vim'}
Plug 'broadinstitute/vim-wdl'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'scrooloose/syntastic'
Plug 'nvie/vim-flake8'
Plug 'tpope/vim-fugitive'
Plug 'pearofducks/ansible-vim'
" List ends here. Plugins become visible to Vim after this call.
call plug#end()

" Set spellcheck in commit messages
autocmd FileType gitcommit setlocal spell

" Set snakemake syntax on snakemake files
au BufNewFile,BufRead Snakefile set filetype=snakemake
au BufNewFile,BufRead *.smk set filetype=snakemake

" Set ruby syntax on vagrant files
au BufNewFile,BufRead Vagrantfile set filetype=ruby

" Recommended syntastic settings
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
"let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" Set status message for each split
" [buffer number] followed by filename:
set statusline=[%n]\ %t
" for Syntastic messages:
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
" show line#:column# on the right hand side
set statusline+=%=%l:%c

" Set indentattion
"" Default indentatino
set tabstop=4
set softtabstop=4
set shiftwidth=4
set textwidth=79
set expandtab
set nosmartindent
set cindent
set cinkeys-=0#
set indentkeys-=0#
set fileformat=unix

"" Set indentation for yaml files
autocmd FileType yaml setlocal ts=2 sts=2 sw=2 expandtab
autocmd FileType yml setlocal ts=2 sts=2 sw=2 expandtab

"" Set indentation for ruby (Vagrant) files
autocmd FileType ruby setlocal ts=2 sts=2 sw=2 expandtab

"" Set indentation for wdl files
autocmd FileType wdl setlocal ts=4 sts=4 sw=4 expandtab

" Folding
set foldmethod=indent
set foldlevelstart=10

" Don't put vim cache files in the current folder
set backupdir=.backup/,~/.backup/,/tmp//
set directory=.swp/,~/.swp/,/tmp//
set undodir=.undo/,~/.undo/,/tmp//
