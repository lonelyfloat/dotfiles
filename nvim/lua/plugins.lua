local plugins = {
    -- discord presence
    {settings={'andweeb/presence.nvim'}},
    -- lsp stuff
    {settings={'neovim/nvim-lspconfig'}},
    {settings={'williamboman/nvim-lsp-installer'},['file']='nvim-lspconfig'},
    --autocomplete
    {settings={'hrsh7th/nvim-cmp'},        },
    {settings={'hrsh7th/cmp-nvim-lsp'},    file='nvim-cmp'},
    {settings={'L3MON4D3/LuaSnip'},        file='nvim-cmp'},
    {settings={'saadparwaiz1/cmp_luasnip'},file='nvim-cmp'},
    {settings={'onsails/lspkind-nvim'},    file='nvim-cmp'},
    -- syntax highlighting lol
    {settings={'nvim-treesitter/nvim-treesitter'}},
    {settings={'neovimhaskell/haskell-vim'}},
    --color themes
    --{['settings']={'ellisonleao/gruvbox.nvim'}},
    {settings={'Mofiqul/vscode.nvim'}},
    -- lualine
    {settings={'nvim-lualine/lualine.nvim',requires = { 'kyazdani42/nvim-web-devicons', opt = true }}},
    -- tree
    --{settings={'preservim/nerdtree'}},
    -- telescope
    {settings={'nvim-telescope/telescope.nvim', requires = { 'nvim-lua/plenary.nvim' } }},
    {settings={'nvim-telescope/telescope-fzf-native.nvim', run = 'make' }, file='telescope'},
    -- java
    {settings={'mfussenegger/nvim-jdtls'}, file='nvim-lspconfig'}
}

require('pluginpacker').setup(plugins)
