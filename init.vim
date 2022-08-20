" Plugins will be downloaded under the specified directory.
call plug#begin('$HOME/.config/nvim/plugged')

" Declare the list of plugins
Plug 'tpope/vim-sensible'  " vim defaults (intro vimrc)
Plug 'junegunn/seoul256.vim'  " colour scheme
Plug 'neoclide/coc.nvim', {'branch': 'release'}  " fast LSP
Plug 'rcarriga/nvim-notify'  " fancy notifications
Plug 'michaelb/sniprun', {'do': 'bash install.sh'}  " code snippet runner
Plug 'nvim-lua/plenary.nvim'  " general lua functions
Plug 'nvim-telescope/telescope.nvim', {'branch': '0.1.x'}  " fuzzy finder

" List ends here. Plugins become visible to Vim after this call.
call plug#end()
