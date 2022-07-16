local function highlight(group_name, group_settings)
    vim.api.nvim_set_hl(0, group_name, group_settings)
end

-- base settings table for each base color group
local settings = {
   ['Normal']      = {fg='#F7F4C8',bg='#161f17'},
   ['Identifier']  = {fg='#5dddb7'},
   ['Comment']     = {fg='#44664b', italic=true},
   ['Statement']   = {fg='#d7e650', bold=true},
   ['Constant']    = {fg='#ace183'},
   ['Type']        = {fg='#ff5d47'},
   ['PreProc']     = {fg='#df4dc6'},
   ['Special']     = {fg='#f37b33'}
}

for group,setting in pairs(settings) do
    highlight(group, setting)
end

local function get_modified(base, changes)
    local modified = {}
    local m = base
    for k,v in pairs(changes) do
        if base[k] == nil then
            m.k = v
        end
    end
    for k, _ in pairs(m) do
        if changes[k] ~= nil then
           modified[k] = changes[k]
        else
            modified[k] = base[k]
        end
    end
    return modified
end

highlight('Operator', get_modified( settings['Statement'], {bold=false} ) )

highlight('Delimiter', {fg='#609649'})
highlight('Structure', settings['Special'] )

highlight('Pmenu', {bg='#486141', fg='#ace183'} )
highlight('PmenuSel', {bg='#F7F4C8', fg='#161f17'} )
