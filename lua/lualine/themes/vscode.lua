local vscode = {}
local colors = {}

colors.bg = '#131313'
colors.fg = '#ffffff'
colors.lightblue = '#5CB6F8'
colors.yellow = '#ffaf00'
colors.theme = '#ee8241'
colors.pink = '#f7397d'
colors.lightgreen = '#abd166'

vscode.normal = {
    a = { fg = colors.bg, bg = colors.theme },
    b = { fg = colors.fg, bg = colors.bg },
    c = { fg = colors.fg, bg = colors.bg },
    x = { fg = colors.fg, bg = colors.bg },
    y = { fg = colors.fg, bg = colors.bg },
    z = { fg = colors.fg, bg = colors.bg },
}

vscode.command = {
    a = { fg = colors.bg, bg = colors.lightblue },
    b = { fg = colors.fg, bg = colors.bg },
    c = { fg = colors.fg, bg = colors.bg },
    x = { fg = colors.fg, bg = colors.bg },
    y = { fg = colors.fg, bg = colors.bg },
    z = { fg = colors.fg, bg = colors.bg },
}

vscode.visual = {
    a = { fg = colors.bg, bg = colors.lightgreen },
    b = { fg = colors.fg, bg = colors.bg },
    c = { fg = colors.fg, bg = colors.bg },
    x = { fg = colors.fg, bg = colors.bg },
    y = { fg = colors.fg, bg = colors.bg },
    z = { fg = colors.fg, bg = colors.bg },
}

vscode.inactive = {
    a = { fg = colors.bg, bg = colors.bg },
    b = { fg = colors.bg, bg = colors.bg },
    c = { fg = colors.bg, bg = colors.bg },
    x = { fg = colors.bg, bg = colors.bg },
    y = { fg = colors.bg, bg = colors.bg },
    z = { fg = colors.bg, bg = colors.bg },
}

vscode.replace = {
    a = { fg = colors.bg, bg = colors.yellow },
    b = { fg = colors.fg, bg = colors.bg },
    c = { fg = colors.fg, bg = colors.bg },
    x = { fg = colors.fg, bg = colors.bg },
    y = { fg = colors.fg, bg = colors.bg },
    z = { fg = colors.fg, bg = colors.bg },
}

vscode.insert = {
    a = { fg = colors.bg, bg = colors.pink },
    b = { fg = colors.fg, bg = colors.bg },
    c = { fg = colors.fg, bg = colors.bg },
    x = { fg = colors.fg, bg = colors.bg },
    y = { fg = colors.fg, bg = colors.bg },
    z = { fg = colors.fg, bg = colors.bg },
}

return vscode
