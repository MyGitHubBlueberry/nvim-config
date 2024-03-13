local M = {}
function SetTransparentBackground(transparentFloat)
    transparentFloat = transparentFloat or false
    vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
    if transparentFloat then
        vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
    end
end

M.ApplyColorScheme = function(colorScheme, transparent, whiteLineNumberColor)
    colorScheme = colorScheme or "gruvbox-material"
    transparent = transparent or true
    whiteLineNumberColor = whiteLineNumberColor or true

    vim.cmd.colorscheme(colorScheme)

    if transparent then
        SetTransparentBackground()
    end
    if whiteLineNumberColor then
        vim.api.nvim_set_hl(0, 'LineNr', { fg = "white" })
    end
end

function ApplyColorScheme(colorscheme, transparent, whiteLineNumberColor)
    M.ApplyColorScheme(colorscheme, transparent, whiteLineNumberColor)
end

M.ApplyColorScheme()
return M
