-- autocommands
--- This function is taken from https://github.com/norcalli/nvim_utils
local api = vim.api
local function nvim_create_augroups(definitions)
  for group_name, definition in pairs(definitions) do
    api.nvim_command('augroup '..group_name)
    api.nvim_command('autocmd!')
    for _, def in ipairs(definition) do
      local command = table.concat(vim.tbl_flatten{'autocmd', def}, ' ')
      api.nvim_command(command)
    end
    api.nvim_command('augroup END')
  end
end

local autocmds = {
   buf = {
       { "BufLeave", "term://*", "stopinsert" };
   };
   terminal_job = {
        { "TermOpen", "*", [[tnoremap <buffer> <Esc> <c-\><c-n>]] };
        { "TermOpen", "*", "startinsert" };
    };
}

nvim_create_augroups(autocmds)
-- autocommands END
