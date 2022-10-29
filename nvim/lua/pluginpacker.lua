local plugins = {}

function use (uses, no_file)
    table.insert(plugins, uses)
    if not no_file then
        if type(uses) == "string" then
            str = uses
        else 
            str = uses[1]
        end
        local _, find_pos = string.find(str, "/", 1)
        local s = string.sub(str, find_pos + 1)
        local _, find_nvim = string.find(s, ".nvim",1)
        if find_nvim ~= nil then
            s = string.gsub(s, ".nvim", "")
        end
        require ('pluginconfigs/' .. s)
    end
end

function setup()
    -- Check if packer is null:
    if packer == nil then packer = require('packer') end
    -- Add all packer.nvim plugins
    packer.startup (function (use)
        use { "wbthomason/packer.nvim" }
        for _, arg in pairs (plugins) do
            use(arg)
        end
    end)
end

