require'nvim-treesitter.configs'.setup {
  -- A list of parser names, or "all" (the five listed parsers should always be installed)
  -- Add c and csharp
  ensure_installed = { "lua", "vim", "vimdoc", "query", "rust", "c", "c_sharp" },


  -- Automatically install missing parsers when entering buffer
  -- Recommendation: set to false if you don't have `tree-sitter` CLI installed locally
  auto_install = true,

  highlight = {
    enable = true,
    -- Setting this to true will run `:h syntax` and tree-sitter at the same time.
    -- Set this to `true` if you depend on 'syntax' being enabled (like for indentation).
    -- Using this option may slow down your editor, and you may see some duplicate highlights.
    -- Instead of true it can also be a list of languages
    additional_vim_regex_highlighting = false,
  },
}
vim.wo.foldmethod = 'expr'
vim.wo.foldexpr = 'nvim_treesitter#foldexpr()'
vim.wo.foldlevel = 99

-- zM to close all folds in the current buffer
-- zR to open all folds in the current buffer
-- zm to close one more level of folds
-- zr to open one more level of folds
-- zc to close the current fold
-- zo to open the current fold
-- za to toggle the current folds 

