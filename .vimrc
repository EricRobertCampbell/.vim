" Automatic installation of vim-plug
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
      \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

"vim-plug configuration
call plug#begin('~/.vim/bundle')

"Plugins
Plug 'ycm-core/YouCompleteMe'

Plug 'vim-airline/vim-airline'
Plug 'SirVer/ultisnips'
Plug 'ervandew/supertab'
Plug 'wellle/targets.vim' "better text objects
Plug 'tpope/vim-surround'
Plug 'wincent/terminus'
Plug 'vimwiki/vimwiki'
Plug 'jiangmiao/auto-pairs'
Plug 'tpope/vim-commentary'
Plug 'preservim/nerdtree'

call plug#end()
"End vim-plug stuff



"Make YCM compatible with UltiSnips (using supertab)
"Source: https://stackoverflow.com/questions/14896327/ultisnips-and-youcompleteme
let g:ycm_key_list_select_completion = ['<C-n>', '<Down>']
let g:ycm_key_list_previous_completion = ['<C-p>', '<Up>']
let g:SuperTabDefaultCompletionType = '<C-n>'

" better key bindings for UltiSnipsExpandTrigger
let g:UltiSnipsExpandTrigger = "<tab>"
let g:UltiSnipsJumpForwardTrigger = "<tab>"
let g:UltiSnipsJumpBackwardTrigger = "<s-tab>"

"More configuration options
let g:UltiSnipsSnippetsDir='~/.vim/mysnippets'
let g:UltiSnipsSnippetDirectories=["mysnippets"]

"Options for NERDTree
map <C-n> :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif 


" Non-package configurations
"
set background=dark
set splitright

set number
"Hotkey to toggle relative line numbering
nmap <C-L><C-L> :set invrelativenumber<CR>


""Tabs
set tabstop=4
set shiftwidth=4"
