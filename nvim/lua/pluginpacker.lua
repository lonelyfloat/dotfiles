local t = {}

function t.setup(plugins)
    -- Check if packer is null:
    if packer == nil then packer = require('packer') end
    -- Add all packer.nvim plugins
    packer.startup (function (use)
        use { "wbthomason/packer.nvim" }
        for _, arg in pairs (plugins) do
            use (arg.settings)
        end
    end)
    -- Loop through each plugin and do some string manipulation to get the package name out, then require the corresponding pluginconfigs/*.lua file.
    for _, arg in pairs (plugins) do
        local _, find_pos = string.find(arg.settings[1], "/", 1)
        local s = string.sub(arg.settings[1], find_pos + 1)
        local _, find_nvim = string.find(s, ".nvim",1)
        if find_nvim ~= nil then
            s = string.gsub(s, ".nvim", "")
        end
        if arg.file == nil then
            require ('pluginconfigs/' .. s)
        end
    end
end

return t
