" Automatic installation of vim-plug
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
      \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

"vim-plug configuration
call plug#begin('~/vim/bundle')

"Plugins
Plug 'lervag/vimtex'
Plug 'vim-airline/vim-airline'
Plug 'SirVer/ultisnips'
Plug 'wellle/targets.vim' "better text objects
Plug 'pangloss/vim-javascript'
Plug 'neoclide/coc.nvim', {'branch': 'release'}

call plug#end()
"End vim-plug stuff


"Setting sumatra pdf as the viewer
let g:vimtex_view_general_viewer = 'SumatraPDF'
let g:vimtex_view_general_options = '-reuse-instance -forward-search @tex @line @pdf'
let g:vimtex_view_general_options_latexmk = '-reuse-instance'
set conceallevel=1 
let g:tex_conceal='abdmg'

"Set folding with vimtex "Not enabled because it is super slow
"let g:vimtex_fold_enabled = 1
"let g:vimtex_fold_types = "<preamble>"

"remove the warning about needing clientserver
let g:vimtex_compiler_latexmk = {'callback':0}

"options for airline
"Show names of open buffers
let g:airline#extensions#tabline#enabled = 1
"Show buffer numbers
let g:airline#extensions#tabline#buffer_nr_show = 1


"Options for ultisnips
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<s-tab>"
let g:UltiSnipsSnippetsDir='/home/ecampbell/.vim/mysnippets'
let g:UltiSnipsSnippetDirectories=["mysnippets"]

set background=dark

"Spelling stuff
set spelllang=en_ca
"set spell "Not set because it is SUPER ANNOYING


"Hotkey to toggle relative line numbering
nmap <C-L><C-L> :set invrelativenumber<CR>




