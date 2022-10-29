vim.api.nvim_create_user_command(
  'CodeClub',
  function()
    vim.diagnostic.config({signs = false})
    vim.diagnostic.config({virtual_text = false})
    vim.diagnostic.config({underline = false})
    require('pluginconfigs/lualine').set(true)
  end,
  {bang = true}
)
