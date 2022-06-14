call plug#begin()
	Plug 'ray-x/go.nvim'
	Plug 'ray-x/guihua.lua' 

	Plug 'andweeb/presence.nvim'

  	Plug 'preservim/nerdtree'
	Plug 'kyazdani42/nvim-web-devicons'

	Plug 'neoclide/coc.nvim', {'branch': 'release'}

	Plug 'onsails/lspkind.nvim'
	Plug 'neovim/nvim-lspconfig'
	Plug 'ray-x/lsp_signature.nvim'
	Plug 'nvim-treesitter/nvim-treesitter'
	Plug 'williamboman/nvim-lsp-installer'

	Plug 'alexanderjeurissen/lumiere.vim'

	Plug 'nvim-lua/plenary.nvim'
	Plug 'nvim-telescope/telescope.nvim'

call plug#end()

colorscheme peachpuff

nnoremap <C-f> :NERDTreeToggle<CR>
nnoremap <C-n> :Telescope<CR>

lua << EOF
	require('nvim-lsp-installer').setup()
	require('lsp_signature').setup()
	require('go').setup()	
EOF

autocmd VimEnter * set mouse=a

