vim.g.mapleader = " "
vim.g.maplocalleader = " "
vim.opt.nu = true
vim.opt.relativenumber = true

vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true

vim.opt.smartindent = true

vim.opt.wrap = false

vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true

vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.termguicolors = true

vim.opt.scrolloff = 8
vim.opt.signcolumn = "yes"
vim.opt.isfname:append("@-@")

vim.opt.updatetime = 50

vim.opt.colorcolumn = "80"
vim.opt.clipboard = "unnamedplus"
vim.g.mkdp_browser = "firefox"
vim.g.livepreview_previewer = "zathura"
vim.g.livepreview_engine = "pdflatex"
vim.g.livepreview_use_biber = 1
vim.g.livepreview_cursorhold_recompile = 0
vim.g.tex_fold_enabled = 1
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")
vim.keymap.set("n", "J", "mzJ`z")
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")
vim.keymap.set("x", "<leader>p", [["_dP]])
-- Adjust split sizes
vim.keymap.set("n", "<C-left>", "<cmd>vertical res +3<CR>")
vim.keymap.set("n", "<C-right>", "<cmd>vertical res -3<CR>")
vim.keymap.set("n", "<C-up>", "<cmd>res +3<CR>")
vim.keymap.set("n", "<C-down>", "<cmd>res -3<CR>")
-- Remap for exiting Nvim terminal
vim.keymap.set("t", "<Esc>", "<C-\\><C-n>")
-- Remap for new tab
vim.keymap.set("n", "<C-t>", vim.cmd.tabnew)

vim.keymap.set("n", "<leader>gg", "<cmd>LazyGit<CR>")
vim.keymap.set("n", "<leader>ut", "<cmd>UndotreeToggle<CR>")
local highlight_group = vim.api.nvim_create_augroup("YankHighlight", { clear = true })
vim.api.nvim_create_autocmd("TextYankPost", {
	callback = function()
		vim.highlight.on_yank()
	end,
	group = highlight_group,
	pattern = "*",
})
vim.keymap.set("n", "<leader>fo", "<cmd>lua vim.lsp.buf.format()<CR>")
require("core.lazy")
