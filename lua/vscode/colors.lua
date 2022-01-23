local generate = function()
    local colors = {}
    colors = {
        theme = '#ee8241',
        functionFg = '#abd166',
        commentFg = '#c99677',
        typeFg = '#ee8241',
        keywordFg = '#9cdcfe',
        opFg = '#9cdcfe',
        condFg = '#f7397d',
        repeatFg = '#f7397d',
        importFg = '#f7397d',
        paraFg = '#fa9f50',
        numFg = '#b5cea8',

        vscNone = 'NONE',
        vscFront = '#EEFFFF',
        vscBack = '#131313',

        vscTabCurrent = '#131313',
        vscTabOther = '#2D2D2D',
        vscTabOutside = '#191919',

        vscLeftDark = '#191919',
        vscLeftMid = '#373737',
        vscLeftLight = '#636369',

        vscPopupFront = '#ee8241',
        vscPopupBack = '#272727',
        vscPopupHighlightBlue = '#004b72',
        vscPopupHighlightGray = '#343B41',

        vscSplitLight = '#898989',
        vscSplitDark = '#444444',
        vscSplitThumb = '#424242',

        vscCursorDarkDark = '#222222',
        vscCursorDark = '#51504F',
        vscCursorLight = '#AEAFAD',
        vscSelection = '#264F78',
        vscLineNumber = '#474440',

        vscDiffRedDark = '#4B1818',
        vscDiffRedLight = '#6F1313',
        vscDiffRedLightLight = '#FB0101',
        vscDiffGreenDark = '#373D29',
        vscDiffGreenLight = '#4B5632',
        vscSearchCurrent = '#4B5632',
        vscSearch = '#264F78',

        -- Syntax colors
        vscGray = '#808080',
        vscViolet = '#646695',
        vscBlue = '#569CD6',
        vscDarkBlue = '#223E55',
        vscMediumBlue = '#18a2fe',
        vscLightBlue = '#9CDCFE',
        vscGreen = '#6A9955',
        vscBlueGreen = '#4EC9B0',
        vscLightGreen = '#B5CEA8',
        vscRed = '#F44747',
        vscOrange = '#CE9178',
        vscLightRed = '#D16969',
        vscYellowOrange = '#D7BA7D',
        vscYellow = '#DCDCAA',
        vscPink = '#f7397d',
    }

    if vim.g.vscode_transparent then
        colors.vscBack = 'NONE'
    end

    -- Other ui specific colors
    colors.vscUiBlue = '#084671'
    colors.vscUiOrange = '#f28b25'

    return colors
end

return { generate = generate }
