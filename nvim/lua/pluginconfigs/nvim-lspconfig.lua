local lsp_installer = require("nvim-lsp-installer")
local lspconfig = require("lspconfig")
lsp_installer.setup {}
local root_pattern = lspconfig.util.root_pattern
local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities = require('cmp_nvim_lsp').update_capabilities(capabilities)

-- 3. Loop through all of the installed servers and set it up via lspconfig
for _, server in ipairs(lsp_installer.get_installed_servers()) do
    if server.name ~= 'jdtls' then
        lspconfig[server.name].setup {}
    else
    end
end

--lspconfig.java_language_server.setup{
--cmd = {
--'/home/lonelyfloat/java-language-server/dist/lang_server_linux.sh'
--},
--root_dir = ()
--}
