local vscode = {}
local colors = {}

if vim.g.vscode_style == 'dark' then
    colors.bg = '#131313'
    colors.fg = '#ffffff'
    colors.red = '#f44747'
    colors.green = '#619955'
    colors.blue = '#0a7aca'
    colors.lightblue = '#5CB6F8'
    colors.yellow = '#ffaf00'
    colors.theme = "#ee8241"
    colors.pink = "#f7397d"
    colors.lightgreen = "#abd166"
    colors.grey = "#2d2d2d"
else
    colors.bg = '#E5EBF1'
    colors.fg = '#343434'
    colors.red = '#FF0000'
    colors.green = '#008000'
    colors.blue = '#AF00DB'
    colors.lightblue = '#0451A5'
    colors.yellow = '#ffaf00'
    colors.theme = "#ee8241"
    colors.pink = "#f7397d"
    colors.lightgreen = "#abd166"
    colors.grey = "#2d2d2d"
end

vscode.normal = {
    a = { fg = vim.g.vscode_style == "dark" and colors.bg or colors.fg, bg = colors.theme, gui = 'bold' },
    b = { fg = colors.fg, bg = colors.bg },
    c = { fg = colors.fg, bg = colors.bg },
    x = { fg = colors.fg, bg = colors.bg },
    y = { fg = colors.fg, bg = colors.bg },
    z = { fg = colors.fg, bg = colors.bg },
}

vscode.command = {
    a = { fg = vim.g.vscode_style == "dark" and colors.bg or colors.fg, bg = colors.lightblue, gui = 'bold' },
    b = { fg = colors.fg, bg = colors.bg },
    c = { fg = colors.fg, bg = colors.bg },
    x = { fg = colors.fg, bg = colors.bg },
    y = { fg = colors.fg, bg = colors.bg },
    z = { fg = colors.fg, bg = colors.bg },
}

vscode.visual = {
    a = { fg = colors.bg, bg = colors.lightgreen, gui = 'bold' },
    b = { fg = colors.fg, bg = colors.bg },
    c = { fg = colors.fg, bg = colors.bg },
    x = { fg = colors.fg, bg = colors.bg },
    y = { fg = colors.fg, bg = colors.bg },
    z = { fg = colors.fg, bg = colors.bg },
}

vscode.inactive = {
    a = { fg = colors.bg, bg = colors.bg},
    b = { fg = colors.bg, bg = colors.bg },
    c = { fg = colors.bg, bg = colors.bg },
    x = { fg = colors.bg, bg = colors.bg },
    y = { fg = colors.bg, bg = colors.bg },
    z = { fg = colors.bg, bg = colors.bg },
}

vscode.replace = {
    a = { fg = vim.g.vscode_style == 'dark' and colors.bg or colors.fg, bg = colors.yellow, gui = 'bold' },
    b = { fg = colors.fg, bg = colors.bg },
    c = { fg = colors.fg, bg = colors.bg },
    x = { fg = colors.fg, bg = colors.bg },
    y = { fg = colors.fg, bg = colors.bg },
    z = { fg = colors.fg, bg = colors.bg },
}

vscode.insert = {
    a = { fg = vim.g.vscode_style == 'dark' and colors.bg or colors.fg, bg = colors.pink, gui = 'bold' },
    b = { fg = colors.fg, bg = colors.bg },
    c = { fg = colors.fg, bg = colors.bg },
    x = { fg = colors.fg, bg = colors.bg },
    y = { fg = colors.fg, bg = colors.bg },
    z = { fg = colors.fg, bg = colors.bg },
}

return vscode
