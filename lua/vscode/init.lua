local utils = require('vscode.utils')
local vscode = {}

vscode.set = function()
    utils.load()
end

vscode.change_style = function(style)
    vim.g.vscode_style = style
    vim.cmd([[colorscheme vscode]])
end

return vscode
