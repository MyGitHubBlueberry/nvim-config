--gruvbox_material_background
    if vim.fn.has('termguicolors') == 1 then
        vim.o.termguicolors = true
    end

    vim.g.gruvbox_material_background = 'medium'           -- medium, soft, hard
    vim.g.gruvbox_material_foreground = 'material'         -- mix, material, original
    vim.g.gruvbox_material_disable_italic_comment = 0      -- default 0 = enabled; 1 = disabled
    vim.g.gruvbox_material_lightline_disable_bold = 0
    vim.g.gruvbox_material_enable_bold = 1                 --NW 1 = endabled 0 = disabled
    vim.g.gruvbox_material_enable_italic = 1               --NW 1 = endabled 0 = disabled For fonts with cursive italic
    vim.g.gruvbox_material_cursor = 'auto'                                                 --NW(works in gui clients) Available values:   `'auto'`, `'red'`, `'orange'`, `'yellow'`, `'green'`, `'aqua'`, `'blue'`, `'purple'`
    vim.g.gruvbox_material_transparent_background = 1      -- have options 0, 1, 2, where 2 is full transparent
    vim.g.gruvbox_material_dim_inactive_windows = 0        -- helps to focus (no result visible)
    vim.g.gruvbox_material_visual = 'grey background'                                      --Available values:   `'grey background'`, `'green background'`, `'blue background'`, `'red background'`, `'reverse'` --Visual mode color
    vim.g.gruvbox_material_menu_selection_background = 'grey'                                                 --`'grey'`, `'red'`, `'orange'`, `'yellow'`, `'green'`,`'aqua'`, `'blue'`, `'purple'` lsp cmp selected bg
    vim.g.gruvbox_material_sign_column_background = 'grey' -- can't see it while trunsparent background
    vim.g.gruvbox_material_spell_foreground = 'colored'    -- use `:set spell` to enable spelling warinngs
    vim.g.gruvbox_material_ui_contrast = 'high'                                                 -- 'high' and 'low' options (with trunsparent bg with 'high' opt line numbers are more visible)
    vim.g.gruvbox_material_show_eob = 1                    --default option - 1
    vim.g.gruvbox_material_float_style = 'bright'          --bright and dim options availiable
    -- no supported plugins installed
    --vim.g.gruvbox_material_diagnostic_text_highlight -- no supported plugins installed
    --vim.g.gruvbox_material_diagnostic_line_highlight = 1
    --g:gruvbox_material_diagnostic_virtual_text
    --g:gruvbox_material_current_word
    vim.g.gruvbox_material_statusline_style = 'default'

    vim.cmd.colorscheme('gruvbox-material')

vim.cmd('lua ApplyColorScheme()')
