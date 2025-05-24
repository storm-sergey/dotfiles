-- **Requirements**
-- sudo apt install xclip xsel

-- Install vim-plug (if not already installed)
local data_dir = vim.fn.stdpath('data')
local plug_path = data_dir .. '/site/autoload/plug.vim'

if vim.fn.filereadable(plug_path) == 0 then
  vim.fn.system({
    'curl', '-fLo', plug_path, '--create-dirs',
    'https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim '
  })
end

-- Initialize plugins
vim.cmd [[
  call plug#begin(stdpath('data') .. '/plugged')
  Plug 'neovim/nvim-lspconfig'
  Plug 'hrsh7th/nvim-cmp'
  Plug 'hrsh7th/cmp-nvim-lsp'
  Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && npm install' }
  Plug 'ojroques/vim-clipboard'
  call plug#end()
]]

-- Indentation settings
vim.opt.expandtab = true
vim.opt.shiftwidth = 2
vim.opt.softtabstop = 2
vim.opt.tabstop = 2

-- Enforce settings for all file types
vim.api.nvim_create_autocmd({ "FileType" }, {
  pattern = "*",
  command = "setlocal expandtab shiftwidth=2 softtabstop=2 tabstop=2"
})

-- Default options
vim.opt.paste = true
vim.opt.number = true

-- Setup LSP and completion
local lspconfig = require('lspconfig')
local cmp = require('cmp')

lspconfig.gopls.setup({})
lspconfig.pyright.setup({})

cmp.setup({
  sources = { { name = 'nvim_lsp' } },
  mapping = cmp.mapping.preset.insert({
    ['<C-Space>'] = cmp.mapping.complete(),
  }),
})

-- Automatic Markdown preview
vim.api.nvim_create_autocmd({ "BufEnter" }, {
  pattern = { "*.md", "*.markdown" },
  callback = function()
    vim.cmd("MarkdownPreview")
  end,
})

-- Keybindings for controlling the preview
vim.keymap.set("n", "<leader>mp", "<cmd>MarkdownPreview<CR>", { desc = "Markdown Preview" })
vim.keymap.set("n", "<leader>ms", "<cmd>MarkdownPreviewStop<CR>", { desc = "Stop Preview" })

-- Enable TrueColor support
vim.o.termguicolors = true

-- Clipboard configuration
vim.o.clipboard = "unnamedplus"  -- Uses system clipboard via tmux

-- Seamless navigation between tmux and Neovim
vim.keymap.set("n", "<C-h>", "<cmd> TmuxNavigateLeft<CR>")
vim.keymap.set("n", "<C-j>", "<cmd> TmuxNavigateDown<CR>")
vim.keymap.set("n", "<C-k>", "<cmd> TmuxNavigateUp<CR>")
vim.keymap.set("n", "<C-l>", "<cmd> TmuxNavigateRight<CR>")
