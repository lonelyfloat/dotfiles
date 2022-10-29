local function map(mode, lhs, rhs, opts)
    local options = { noremap = true }
    if opts then
        options = vim.tbl_extend("force", options, opts)
    end
    vim.keymap.set(mode, lhs, rhs, options)
end

map('n', "<C-W>t", "<cmd>tabnew | terminal<CR>")
map('n', 'gs', "<cmd>Neogit<CR>")

-- Telescope maps
map('n', 'ff', "<cmd>Telescope find_files<CR>")
map('n', 'fg', "<cmd>Telescope live_grep<CR>")
map('n', 'fb', "<cmd>Telescope buffers<CR>")
map('n', 'fh', "<cmd>Telescope help_tags<CR>")

-- LSP Maps
local opts = { noremap = true, silent = true }
map('n', 'gD', '<cmd>lua vim.lsp.buf.declaration()<CR>', opts)
map('n', 'gd', '<cmd>lua vim.lsp.buf.definition()<CR>', opts)
map('n', 'K', '<cmd>lua vim.lsp.buf.hover()<CR>', opts)
map('n', 'gi', '<cmd>lua vim.lsp.buf.implementation()<CR>', opts)
map('n', '<C-k>', '<cmd>lua vim.lsp.buf.signature_help()<CR>', opts)
map('n', '<space>wa', '<cmd>lua vim.lsp.buf.add_workspace_folder()<CR>', opts)
map('n', '<space>wr', '<cmd>lua vim.lsp.buf.remove_workspace_folder()<CR>', opts)
map('n', '<space>wl', '<cmd>lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<CR>', opts)
map('n', '<space>D', '<cmd>lua vim.lsp.buf.type_definition()<CR>', opts)
map('n', '<space>rn', '<cmd>lua vim.lsp.buf.rename()<CR>', opts)
map('n', '<space>ca', '<cmd>lua vim.lsp.buf.code_action()<CR>', opts)
map('n', 'gr', '<cmd>lua vim.lsp.buf.references()<CR>', opts)
map('n', '<space>e', '<cmd>lua vim.diagnostic.open_float()<CR>', opts)
map('n', '[d', '<cmd>lua vim.lsp.diagnostic.goto_prev()<CR>', opts)
map('n', ']d', '<cmd>lua vim.lsp.diagnostic.goto_next()<CR>', opts)
map('n', '<space>q', '<cmd>lua vim.lsp.diagnostic.set_loclist()<CR>', opts)
map('n', '<space>f', '<cmd>lua vim.lsp.buf.format {async = true} <CR>', opts)

--align
map('x', '<space>aa', function() require 'align'.align_to_char(1, true) end) -- Aligns to 1 character, looking left
map('x', '<space>as', function() require 'align'.align_to_char(2, true, true) end) -- Aligns to 2 characters, looking left and with previews
map('x', '<space>aw', function() require 'align'.align_to_string(false, true, true) end) -- Aligns to a string, looking left and with previews
map('x', '<space>ar', function() require 'align'.align_to_string(true, true, true) end) -- Aligns to a Lua pattern, looking left and with previews
