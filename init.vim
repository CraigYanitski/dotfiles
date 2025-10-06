" Plugins will be downloaded under the specified directory.
call plug#begin('$HOME/.config/nvim/plugged')

" Declare the list of plugins
" Plug 'tjdevries/train.nvim'  " train vim movements
Plug 'tpope/vim-sensible'  " vim defaults (intro vimrc)
Plug 'romainl/Apprentice'  " colour scheme
Plug 'DryLabRebel/Squire'  " colour scheme
Plug 'junegunn/seoul256.vim'  " colour scheme
Plug 'bluz71/vim-moonfly-colors'  " colour scheme
Plug 'catppuccin/nvim', { 'as': 'catppuccin' }  "  colour scheme
Plug 'folke/tokyonight.nvim', { 'branch': 'main' }  " colour scheme
Plug 'miyakogi/conoline.vim'  " highlight current line
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}  " treesitter highlighting
Plug 'neoclide/coc.nvim', {'branch': 'release'}  " fast LSP
Plug 'rcarriga/nvim-notify'  " fancy notifications
" Plug 'michaelb/sniprun', {'do': 'bash install.sh'}  " code snippet runner
Plug 'nvim-lua/plenary.nvim'  " general lua functions
Plug 'nvim-telescope/telescope.nvim', {'tag': '0.1.0'}  " fuzzy finder
Plug 'seandewar/killersheep.nvim'  " game
" Plug 'seandewwar/nvimesweeper'  " game
" Plug 'alec-gibson/nvim-tetris'  " game
Plug 'knubie/vim-kitty-navigator', {'do': 'cp ./*.py ~/.config/kitty/'}

" List ends here. Plugins become visible to Vim after this call.
call plug#end()

set foldmethod=indent
set foldenable

set expandtab
set tabstop=4
set shiftwidth=4

setlocal spell spelllang=en_gb

au ColorScheme slate hi Normal ctermbg=None
colorscheme slate

lua require('catppuccin').setup({transparent_background = true, term_colors = true,})
colorscheme catppuccin-macchiato

autocmd FileType python set colorcolumn=81

inoremap <expr> <cr> coc#pum#visible() ? coc#pum#confirm() : "\<CR>"
inoremap <silent><expr> <cr> coc#pum#visible() ? coc#_select_confirm() : "\<C-g>u\<CR>"

" Custom vim commands
command GoTableTest :.read ~/.local/bin/gotabletest.txt

" use <tab> to trigger completion and navigate to the next complete item
" function! CheckBackspace() abort
"   let col = col('.') - 1
"   return !col || getline('.')[col - 1]  =~# '\s'
" endfunction
" 
" inoremap <silent><expr> <Tab>
"       \ coc#pum#visible() ? coc#pum#next(1) :
"       \ CheckBackspace() ? "\<Tab>" :
"       \ coc#refresh()

