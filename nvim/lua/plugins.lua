require('pluginpacker')
-- discord presence
use 'andweeb/presence.nvim'
-- lsp stuff
use 'neovim/nvim-lspconfig'
use({'williamboman/nvim-lsp-installer'}, true)
--autocomplete
use 'hrsh7th/nvim-cmp'
use('hrsh7th/cmp-nvim-lsp', true)
use('L3MON4D3/LuaSnip', true)
use('saadparwaiz1/cmp_luasnip', true)
use('onsails/lspkind-nvim', true)
-- syntax highlighting lol
use 'nvim-treesitter/nvim-treesitter'
use 'neovimhaskell/haskell-vim'
-- lualine
use {'nvim-lualine/lualine.nvim',requires = { 'kyazdani42/nvim-web-devicons', opt = true }}
-- telescope
use {'nvim-telescope/telescope.nvim', requires = { 'nvim-lua/plenary.nvim' }}
use({'nvim-telescope/telescope-fzf-native.nvim', run = 'make' }, true)
-- java
use('mfussenegger/nvim-jdtls', true)
-- git
use {'TimUntersberger/neogit', requires = 'nvim-lua/plenary.nvim' }
-- utils
use('Vonr/align.nvim', true)
use('tpope/vim-sensible', true)
use('kbenzie/vim-spirv', true)
use({ 'seblj/nvim-tabline', requires = { 'kyazdani42/nvim-web-devicons' } })
--color themes
use 'ellisonleao/gruvbox.nvim'
use 'Shatur/neovim-ayu'
use 'Mofiqul/vscode.nvim'
use 'marko-cerovac/material.nvim'
use('novakne/kosmikoa.nvim', true)
setup()
