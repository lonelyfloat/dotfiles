local set = vim.opt
set.expandtab = true
set.shiftwidth = 4
set.softtabstop = 4
set.background = 'dark'
set.termguicolors = true

-- TODO: Replace this with something less bad
vim.cmd [[
    autocmd TermOpen * startinsert
    autocmd BufLeave term://* stopinsert
]]
