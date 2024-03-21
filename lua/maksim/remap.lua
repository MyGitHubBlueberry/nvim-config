vim.g.mapleader = " "

-- modes
local n_v = { "n", "v" };
local n = "n";
local v = "v";
local i = "i";

local function map(mode, lhs, rhs, opts)
    local options = { noremap = true, silent = true }
    if opts then
        options = vim.tbl_extend('force', options, opts)
    end
    vim.keymap.set(mode, lhs, rhs, options)
end

-- toggles file tree
map(n_v, "<leader>e", function()
    if vim.api.nvim_buf_get_option(0, "filetype") == "netrw" then
        vim.api.nvim_exec(":bd", false); -- opens previous buffer
    else
        vim.api.nvim_exec(":Ex", false); -- opens explorer
    end
end)

-- moves lines of codes with automatic indenting in visual mode
map(v, "J", ":m '>+1<CR>gv=gv")
map(v, "K", ":m '<-2<CR>gv=gv")

-- J and K used for half-page down and up + cursor maintains in the center
map(n, "J", "<C-d>zz")
map(n, "K", "<C-u>zz")

-- cursor in the center when use n or N in search mode
map(n, "n", "nzzzv")
map(n, "N", "Nzzzv")

-- pastes from clipboard register
map("x", "<leader>p", [["_dP]])

-- yanks in clipboard register
map(n_v, "<leader>y", [["+y]])
map(n_v, "<leader>Y", [["+Y]])

-- deletes in blank register
map(n_v, "<leader>d", [["_d]])

-- for those who use <C-c> like <Esc>
map(i, "<C-c>", "<Esc>")

map(n, "<C-k>", "<cmd>cnext<CR>zz")
map(n, "<C-j>", "<cmd>cprev<CR>zz")
map(n, "<leader>k", "<cmd>lnext<CR>zz")
map(n, "<leader>j", "<cmd>lprev<CR>zz")

-- to change word under cursor
vim.keymap.set(n_v, "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

-- This code inserts a pair of quotes, brackets, or braces and moves the cursor inside them
-- It also inserts a new line and indents it when pressing Enter inside braces

-- now following line handles wise-delimiters plugin
-- map(i, "'", "''<left>")
-- map(i, '(', '()<left>')
-- map(i, '[', '[]<left>')
-- map(i, '{', '{}<left>')
-- map(i, '{<CR>', '{<CR>}<ESC>O')
-- toggles code folding under cursor
map(n_v, '<leader><leader>', 'za')

--finally!!! normal <Tab> behaviour!!!
map(i, '<Tab>', function()
    local line = vim.fn.getline('.');
    local col = vim.fn.col('.')
    local next_char = line:sub(col, col)

    if next_char:match('[%])}"\'`]') then
        print(1)
        return '<right>'
    else
        print(2)
        return '<Tab>'
    end
end, { expr = true })


-- #Optional
-- append line (i don't like it)
-- vim.keymap.set("n", "J", "mzJ`z")
--
-- makes file executable (in linux)
-- map("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })
--
-- if this is uncommented, comment cold folding remap
-- map("n", "<leader><leader>", function()
--     vim.cmd("so")
-- end)
--
--
-- Uncomment bottom lines to use not fullscreen Explorer
-- Yeah, vscode lover, it's for you
--
-- map(n_v, "<leader>e", function()
--     if (vim.api.nvim_buf_get_option(0, "filetype") == "netrw") then
--         vim.api.nvim_exec("close", false)
--     else
--         vim.api.nvim_exec(":Vexplore", false)
--     end
-- end)
