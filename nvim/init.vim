call plug#begin()

  	Plug 'preservim/nerdtree'
	Plug 'kyazdani42/nvim-web-devicons'

        Plug 'ellisonleao/gruvbox.nvim'

	Plug 'onsails/lspkind.nvim'
	Plug 'neovim/nvim-lspconfig'
	Plug 'ray-x/lsp_signature.nvim'
	Plug 'nvim-treesitter/nvim-treesitter'
	Plug 'williamboman/nvim-lsp-installer'

	Plug 'nvim-lua/plenary.nvim'
	Plug 'nvim-telescope/telescope.nvim'

call plug#end()

colorscheme gruvbox

nnoremap <C-f> :NERDTreeToggle<CR>
nnoremap <C-n> :Telescope<CR>

lua << EOF
	require('nvim-lsp-installer').setup()
	require('lsp_signature').setup()
EOF

autocmd VimEnter * set mouse=a
