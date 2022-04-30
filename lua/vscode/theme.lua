local colors = require('vscode.colors')
local theme = {}

theme.load_syntax = function()
    local c = colors.generate()
    local isItalic = vim.g.vscode_italic_comment == 1
    local syntax = {
        -- GROUP, FOREGROUND, BACKGROUND, ATTRIBUTE, SPECIAL
        Normal = { c.vscFront, c.vscBack, 'none', nil },
        NormalFloat = { c.vscFront, nil, 'none', nil },
        FloatBorder = { c.theme, nil, 'none', nil }, -- border of float window
        ColorColumn = { nil, c.vscCursorDarkDark, 'none', nil },
        Cursor = { c.vscCursorDark, c.vscCursorLight, 'none', nil },
        CursorLine = { nil, c.vscPopupBack, 'none', nil },
        CursorColumn = { nil, c.vscCursorDarkDark, 'none', nil },
        Directory = { c.vscBlue, c.vscBack, 'none', nil },
        DiffAdd = { nil, c.vscDiffGreenLight, 'none', nil },
        DiffChange = { nil, c.vscDiffRedDark, 'none', nil },
        DiffDelete = { nil, c.vscDiffRedLight, 'none', nil },
        DiffText = { nil, c.vscDiffRedLight, 'none', nil },
        EndOfBuffer = { c.vscBack, nil, 'none', nil },
        ErrorMsg = { c.vscRed, c.vscBack, 'none', nil },
        VertSplit = { c.vscSplitDark, c.vscBack, 'none', nil },
        Folded = { c.vscLeftLight, c.vscLeftDark, 'underline', nil },
        FoldColumn = { c.vscLineNumber, c.vscBack, 'none', nil },
        SignColumn = { nil, c.vscBack, 'none', nil },
        IncSearch = { c.vscNone, c.vscSearchCurrent, 'none', nil },
        LineNr = { c.vscLineNumber, c.vscBack, 'none', nil },
        CursorLineNr = { c.vscPopupFront, c.vscBack, 'none', nil },
        MatchParen = { c.vscNone, c.vscCursorDark, 'none', nil },
        ModeMsg = { c.vscFront, c.vscLeftDark, 'none', nil },
        MoreMsg = { c.vscFront, c.vscLeftDark, 'none', nil },
        NonText = { c.vscLeftLight, nil, 'none', nil }, -- git blame text
        Pmenu = { c.vscPopupFront, c.vscPopupBack, 'none', nil },
        PmenuSel = {
            c.vscPopupFront,
            c.vscPopupHighlightBlue,
            'none',
            nil,
        },
        PmenuSbar = { nil, c.vscPopupHighlightGray, 'none', nil },
        PmenuThumb = { nil, c.vscPopupFront, 'none', nil },
        Question = { c.vscBlue, c.vscBack, 'none', nil },
        Search = { c.vscNone, c.vscSearch, 'none', nil },
        SpecialKey = { c.vscBlue, c.vscNone, 'none', nil },
        StatusLine = { c.vscFront, c.vscBack, 'none', nil },
        StatusLineNC = { c.vscFront, c.vscBack, 'none', nil },
        TabLine = { c.vscFront, c.vscTabOther, 'none', nil },
        TabLineFill = { c.vscFront, c.vscTabOutside, 'none', nil },
        TabLineSel = { c.vscFront, c.vscTabCurrent, 'none', nil },
        Title = { c.vscNone, c.vscNone, 'bold', nil },
        Visual = { c.vscNone, c.vscSelection, 'none', nil },
        VisualNOS = { c.vscNone, c.vscSelection, 'none', nil },
        WarningMsg = { c.vscRed, c.vscBack, 'bold', nil },
        WildMenu = { c.vscNone, c.vscSelection, 'none', nil },

        Comment = { c.themeBrown, nil, isItalic and 'italic' or 'none', nil },
        Constant = { c.vscBlue, nil, 'none', nil },
        String = { c.themeBrown, nil, 'none', nil },
        Character = { c.themeBrown, nil, 'none', nil },
        Number = { c.numFg, nil, 'none', nil },
        Boolean = { c.numFg, nil, 'none', nil },
        Float = { c.numFg, nil, 'none', nil },
        Identifier = { c.vscFront, nil, 'none', nil },
        Function = { c.themeGreen, nil, 'none', nil },
        Statement = { c.vscPink, nil, 'none', nil },
        Conditional = { c.themeRed, nil, 'none', nil },
        Repeat = { c.themeRed, nil, 'none', nil },
        Label = { c.vscPink, nil, 'none', nil },
        Operator = { c.vscFront, nil, 'none', nil },
        Keyword = { c.themeRed, nil, 'none', nil },
        Exception = { c.vscPink, nil, 'none', nil },
        PreProc = { c.vscPink, nil, 'none', nil },
        Include = { c.themeRed, nil, 'none', nil },
        Define = { c.themeRed, nil, 'none', nil },
        Macro = { c.vscPink, nil, 'none', nil },
        Type = { c.vscBlue, nil, 'none', nil },
        StorageClass = { c.vscBlue, nil, 'none', nil },
        Structure = { c.vscBlue, nil, 'none', nil },
        Typedef = { c.themeRed, nil, 'none', nil },
        Special = { c.themeRed, nil, 'none', nil },
        SpecialChar = { c.vscFront, nil, 'none', nil },
        Tag = { c.vscFront, nil, 'none', nil },
        Delimiter = { c.vscFront, nil, 'none', nil },
        SpecialComment = { c.vscGreen, nil, 'none', nil },
        Debug = { c.vscFront, nil, 'none', nil },
        Underlined = { c.vscNone, nil, 'underline', nil },
        Conceal = { c.vscFront, c.vscBack, 'none', nil },
        Ignore = { c.vscFront, nil, 'none', nil },
        Error = { c.vscRed, c.vscBack, 'undercurl', c.vscRed },
        Todo = { c.vscYellowOrange, c.vscBack, 'bold', nil },
        SpellBad = { c.vscRed, c.vscBack, 'undercurl', c.vscRed },
        SpellCap = { c.vscRed, c.vscBack, 'undercurl', c.vscRed },
        SpellRare = { c.vscRed, c.vscBack, 'undercurl', c.vscRed },
        SpellLocal = { c.vscRed, c.vscBack, 'undercurl', c.vscRed },
        Whitespace = { c.vscLineNumber, nil, 'none', nil },

        -- Treesitter
        TSError = { c.vscRed, nil, 'none', nil },
        TSPunctBracket = { c.vscFront, nil, 'none', nil }, TSPunctSpecial = { c.vscFront, nil, 'none', nil },
        markdownTSPunctSpecial = { c.vscBlue, nil, 'bold', nil },
        TSConstant = { c.vscYellow, nil, 'none', nil },
        TSConstBuiltin = { c.theme, nil, 'none', nil },
        TSConstMacro = { c.vscBlueGreen, nil, 'none', nil },
        TSStringRegex = { c.vscOrange, nil, 'none', nil },
        TSString = { c.themeBrown, nil, 'none', nil },
        TSCharacter = { c.themeBrown, nil, 'none', nil },
        TSNumber = { c.numFg, nil, 'none', nil },
        TSBoolean = { c.numFg, nil, 'none', nil },
        TSFloat = { c.numFg, nil, 'none', nil },
        TSAnnotation = { c.themeBrown, nil, 'none', nil },
        TSAttribute = { c.vscFront, nil, 'none', nil },
        TSNamespace = { c.vscBlueGreen, nil, 'none', nil },
        TSFuncBuiltin = { c.themeGreen, nil, 'none', nil },
        TSFunction = { c.themeGreen, nil, 'none', nil },
        TSFuncMacro = { c.vscYellow, nil, 'none', nil },
        TSParameter = { c.paraFg, nil, 'italic', nil },
        TSParameterReference = { c.paraFg, nil, 'italic', nil },
        TSMethod = { c.themeGreen, nil, 'none', nil },
        TSField = { c.vscFront, nil, 'none', nil },
        TSProperty = { c.vscFront, nil, 'none', nil },
        TSConstructor = { c.themeGreen, nil, 'none', nil },
        TSConditional = { c.themeRed, nil, 'none', nil },
        TSRepeat = { c.themeRed, nil, 'none', nil },
        TSLabel = { c.vscLightBlue, nil, 'none', nil },
        TSKeyword = { c.themeRed, nil, 'none', nil },
        TSKeywordFunction = { c.themeBlue, nil, 'italic', nil },
        TSKeywordOperator = { c.themeBlue, nil, 'none', nil },
        TSOperator = { c.themeBlue, nil, 'none', nil },
        TSException = { c.vscPink, nil, 'none', nil },
        TSType = { c.theme, nil, 'none', nil },
        TSTypeBuiltin = { c.vscBlue, nil, 'none', nil },
        TSStructure = { c.vscLightBlue, nil, 'none', nil },
        TSInclude = { c.themeRed, nil, 'none', nil },
        TSVariable = { c.vscFront, nil, 'none', nil },
        TSVariableBuiltin = { c.vscLightBlue, nil, 'none', nil },
        TSText = { c.vscYellowOrange, nil, 'none', nil },
        TSUnderline = { c.vscYellowOrange, nil, 'none', nil },
        TSTag = { c.vscBlue, nil, 'none', nil },
        TSTagDelimiter = { c.vscGray, nil, 'none', nil },

        TSTitle = { c.vscBlue, nil, 'bold', nil },
        TSLiteral = { c.vscFront, 'none', nil },
        TSEmphasis = { c.vscFront, nil, 'italic', nil },
        TSStrong = { c.vscBlue, nil, 'bold', nil },
        TSURI = { c.vscFront, nil, 'none', nil },
        TSTextReference = { c.vscOrange, nil, 'none', nil },
        TSPunctDelimiter = { c.vscFront, nil, 'none', nil },
        TSStringEscape = { c.vscOrange, nil, 'bold', nil },

        TSNote = { c.vscBlueGreen, nil, 'bold', nil },
        TSWarning = { c.vscYellowOrange, nil, 'bold', nil },
        TSDanger = { c.vscRed, nil, 'bold', nil },

        -- Markdown
        markdownBold = { c.vscBlue, nil, 'bold', nil },
        markdownCode = { c.vscOrange, nil, 'none', nil },
        markdownRule = { c.vscBlue, nil, 'bold', nil },
        markdownCodeDelimiter = { c.vscFront, nil, 'none', nil },
        markdownHeadingDelimiter = {
            c.vscBlue,
            nil,
            'none',
            nil,
        },
        markdownFootnote = { c.vscOrange, nil, 'none', nil },
        markdownFootnoteDefinition = {
            c.vscOrange,
            nil,
            'none',
            nil,
        },
        markdownUrl = { c.vscFront, nil, 'underline', nil },
        markdownLinkText = { c.vscOrange, nil, 'none', nil },
        markdownEscape = { c.vscOrange, nil, 'none', nil },

        -- JSON
        jsonKeyword = { c.vscLightBlue, nil, 'none', nil },
        jsonEscape = { c.vscYellowOrange, nil, 'none', nil },
        jsonNull = { c.vscBlue, nil, 'none', nil },
        jsonBoolean = { c.vscBlue, nil, 'none', nil },

        -- HTML
        htmlTag = { c.vscGray, nil, 'none', nil },
        htmlEndTag = { c.vscGray, nil, 'none', nil },
        htmlTagName = { c.vscBlue, nil, 'none', nil },
        htmlSpecialTagName = { c.vscBlue, nil, 'none', nil },
        htmlArg = { c.vscLightBlue, nil, 'none', nil },

        -- CSS
        cssBraces = { c.vscFront, nil, 'none', nil },
        cssInclude = { c.vscPink, nil, 'none', nil },
        cssTagName = { c.vscYellowOrange, nil, 'none', nil },
        cssClassName = { c.vscYellowOrange, nil, 'none', nil },
        cssPseudoClass = { c.vscYellowOrange, nil, 'none', nil },
        cssPseudoClassId = { c.vscYellowOrange, nil, 'none', nil },
        cssPseudoClassLang = { c.vscYellowOrange, nil, 'none', nil },
        cssIdentifier = { c.vscYellowOrange, nil, 'none', nil },
        cssProp = { c.vscLightBlue, nil, 'none', nil },
        cssDefinition = { c.vscLightBlue, nil, 'none', nil },
        cssAttr = { c.vscOrange, nil, 'none', nil },
        cssAttrRegion = { c.vscOrange, nil, 'none', nil },
        cssColor = { c.vscOrange, nil, 'none', nil },
        cssFunction = { c.vscOrange, nil, 'none', nil },
        cssFunctionName = { c.vscOrange, nil, 'none', nil },
        cssVendor = { c.vscOrange, nil, 'none', nil },
        cssValueNumber = { c.vscOrange, nil, 'none', nil },
        cssValueLength = { c.vscOrange, nil, 'none', nil },
        cssUnitDecorators = { c.vscOrange, nil, 'none', nil },
        cssStyle = { c.vscLightBlue, nil, 'none', nil },
        cssImportant = { c.vscBlue, nil, 'none', nil },

        -- JavaScript
        jsVariableDef = { c.vscLightBlue, nil, 'none', nil },
        jsFuncArgs = { c.vscLightBlue, nil, 'none', nil },
        jsFuncBlock = { c.vscLightBlue, nil, 'none', nil },
        jsRegexpString = { c.vscLightRed, nil, 'none', nil },
        jsThis = { c.vscBlue, nil, 'none', nil },
        jsOperatorKeyword = { c.vscBlue, nil, 'none', nil },
        jsDestructuringBlock = { c.vscLightBlue, nil, 'none', nil },
        jsObjectKey = { c.vscLightBlue, nil, 'none', nil },
        jsGlobalObjects = { c.vscBlueGreen, nil, 'none', nil },
        jsModuleKeyword = { c.vscLightBlue, nil, 'none', nil },
        jsClassDefinition = { c.vscBlueGreen, nil, 'none', nil },
        jsClassKeyword = { c.vscBlue, nil, 'none', nil },
        jsExtendsKeyword = { c.vscBlue, nil, 'none', nil },
        jsExportDefault = { c.vscPink, nil, 'none', nil },
        jsFuncCall = { c.vscYellow, nil, 'none', nil },
        jsObjectValue = { c.vscLightBlue, nil, 'none', nil },
        jsParen = { c.vscLightBlue, nil, 'none', nil },
        jsObjectProp = { c.vscLightBlue, nil, 'none', nil },
        jsIfElseBlock = { c.vscLightBlue, nil, 'none', nil },
        jsParenIfElse = { c.vscLightBlue, nil, 'none', nil },
        jsSpreadOperator = { c.vscLightBlue, nil, 'none', nil },
        jsSpreadExpression = { c.vscLightBlue, nil, 'none', nil },

        -- XML
        xmlTag = { c.vscBlueGreen, nil, 'none', nil },
        xmlTagName = { c.vscBlueGreen, nil, 'none', nil },
        xmlEndTag = { c.vscBlueGreen, nil, 'none', nil },

        -- Python
        pythonStatement = { c.vscBlue, nil, 'none', nil },
        pythonOperator = { c.vscBlue, nil, 'none', nil },
        pythonException = { c.vscPink, nil, 'none', nil },
        pythonExClass = { c.vscBlueGreen, nil, 'none', nil },
        pythonBuiltinObj = { c.vscLightBlue, nil, 'none', nil },
        pythonBuiltinType = { c.vscBlueGreen, nil, 'none', nil },
        pythonBoolean = { c.vscBlue, nil, 'none', nil },
        pythonNone = { c.vscBlue, nil, 'none', nil },
        pythonTodo = { c.vscBlue, nil, 'none', nil },
        pythonClassVar = { c.vscBlue, nil, 'none', nil },
        pythonClassDef = { c.vscBlueGreen, nil, 'none', nil },

        -- TeX
        texStatement = { c.vscBlue, nil, 'none', nil },
        texBeginEnd = { c.vscYellow, nil, 'none', nil },
        texBeginEndName = { c.vscLightBlue, nil, 'none', nil },
        texOption = { c.vscLightBlue, nil, 'none', nil },
        texBeginEndModifier = { c.vscLightBlue, nil, 'none', nil },
        texDocType = { c.vscPink, nil, 'none', nil },
        texDocTypeArgs = { c.vscLightBlue, nil, 'none', nil },

        -- Git
        gitcommitHeader = { c.vscGray, nil, 'none', nil },
        gitcommitOnBranch = { c.vscGray, nil, 'none', nil },
        gitcommitBranch = { c.vscPink, nil, 'none', nil },
        gitcommitComment = { c.vscGray, nil, 'none', nil },
        gitcommitSelectedType = { c.vscGreen, nil, 'none', nil },
        gitcommitSelectedFile = { c.vscGreen, nil, 'none', nil },
        gitcommitDiscardedType = { c.vscRed, nil, 'none', nil },
        gitcommitDiscardedFile = { c.vscRed, nil, 'none', nil },
        gitcommitOverflow = { c.vscRed, nil, 'none', nil },
        gitcommitSummary = { c.vscPink, nil, 'none', nil },
        gitcommitBlank = { c.vscPink, nil, 'none', nil },

        -- Lua
        luaFuncCall = { c.themeGreen, nil, 'none', nil },
        luaFuncArgName = { c.vscLightBlue, nil, 'none', nil },
        luaFuncKeyword = { c.vscPink, nil, 'none', nil },
        luaLocal = { c.vscPink, nil, 'none', nil },
        luaBuiltIn = { c.vscBlue, nil, 'none', nil },

        -- SH
        shDeref = { c.vscLightBlue, nil, 'none', nil },
        shVariable = { c.vscLightBlue, nil, 'none', nil },

        -- YAML
        yamlKey = { c.vscBlue, nil, 'none', nil },
        yamlConstant = { c.vscBlue, nil, 'none', nil },

        -- Git Signs
        GitSignsAdd = { c.vscGreen, nil, 'none', nil },
        GitSignsChange = { c.vscYellow, nil, 'none', nil },
        GitSignsDelete = { c.vscRed, nil, 'none', nil },
        GitSignsAddLn = { c.vscBack, c.vscGreen, 'none', nil },
        GitSignsChangeLn = { c.vscBack, c.vscYellow, 'none', nil },
        GitSignsDeleteLn = { c.vscBack, c.vscRed, 'none', nil },

        -- bqf
        BqfPreviewBorder = { c.theme, nil, 'none', nil },
        -- BqfPreviewFloat = { c.vscPink, nil, 'none', nil },
        -- BqfPreviewCursor = { c.vscLightBlue, nil, 'none', nil },
        -- BqfPreviewRange = { c.vscGreen, nil, 'none', nil },

        -- Signature
        LspSignatureActiveParameter = { c.themeBlue, nil, 'none', nil },

        -- NeoTree
        NeoTreeDirectoryIcon = { c.theme, nil, 'none', nil },
        NeoTreeDirectoryName = { c.vscFront, nil, 'none', nil },
        NeoTreeTitleBar = { c.vscBack, c.theme, 'none', nil },
        NeoTreeFloatBorder = { c.theme, c.vscBack, 'none', nil },
        NeoTreeNormal = { c.vscFront, c.vscBack, 'none', nil },

        -- ScrollView
        ScrollView = { c.theme, c.theme, 'none', nil },

        -- nvim-cmp
        CmpItemAbbr = { c.vscFront, nil, 'none', nil },
        CmpItemAbbrMatch = { c.theme, nil, 'none', nil },
        CmpItemAbbrMatchFuzzy = { c.theme, nil, 'none', nil },
        CmpCompletionBorder = { c.theme, nil, 'none', nil },

        -- vim-floaterm
        FloatermBorder = { c.theme, c.vscBack, 'none', nil },

        -- Bufferline cannot set by this

        -- IndentBlankLine
        IndentBlanklineContextChar = { c.theme, nil, 'nocombine', nil },
        IndentBlanklineContextStart = { c.theme, nil, 'nocombine', nil },
        IndentBlanklineChar = {
            c.vscLineNumber,
            nil,
            'nocombine',
            nil,
        },
        IndentBlanklineSpaceChar = {
            c.themeBlue,
            nil,
            'nocombine',
            nil,
        },
        IndentBlanklineSpaceCharBlankline = {
            c.vscLineNumber,
            nil,
            'nocombine',
            nil,
        },

        -- diffview
        DiffviewFolderName = { c.theme, nil, 'none', nil},

        -- LSP
        DiagnosticError = { c.vscRed, nil, 'none', nil },
        DiagnosticWarn = { c.vscYellow, nil, 'none', nil },
        DiagnosticInfo = { c.vscBlue, nil, 'none', nil },
        DiagnosticHint = { c.vscBlue, nil, 'none', nil },
        DiagnosticUnderlineError = { nil, nil, 'undercurl', c.vscRed },
        DiagnosticUnderlineWarn = { nil, nil, 'undercurl', c.vscYellow },
        DiagnosticUnderlineInfo = { nil, nil, 'undercurl', c.vscBlue },
        DiagnosticUnderlineHint = { nil, nil, 'undercurl', c.vscBlue },
        LspReferenceText = { nil, c.vscPopupHighlightGray, 'none', nil },
        LspReferenceRead = { nil, c.vscPopupHighlightGray, 'none', nil },
        LspReferenceWrite = { nil, c.vscPopupHighlightGray, 'none', nil },

        -- telescope
        TelescopePromptBorder = { c.theme, nil, 'none', nil },
        TelescopeResultsBorder = { c.theme, nil, 'none', nil },
        TelescopePreviewBorder = { c.theme, nil, 'none', nil },
        TelescopeNormal = { c.vscFront, nil, 'none', nil },
        TelescopeSelection = { c.vscFront, c.vscPopupHighlightBlue, 'none', nil },
        TelescopeMultiSelection = { c.vscFront, c.vscPopupHighlightBlue, 'none', nil },
        TelescopeMatching = { c.vscMediumBlue, nil, 'bold', nil },
        TelescopePromptPrefix = { c.vscFront, nil, 'none', nil },
        TelescopeResultsLineNr = { c.vscFront, nil, 'none', nil },
        TelescopeResultsStruct = { c.theme, nil, 'none', nil },

        -- symbols-outline
        -- white fg and lualine blue bg
        FocusedSymbol = { '#ffffff', c.vscUiBlue, 'none', nil },
        SymbolsOutlineConnector = { c.vscLineNumber, nil, 'none', nil }
    }

    return syntax
end

return theme
