require("config.lazy")

vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1
vim.opt.termguicolors = true
vim.opt.nu = true
vim.opt.expandtab = true
vim.opt.shiftwidth = 2
vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.autoindent = true
vim.opt.clipboard = "unnamedplus"
vim.g.mapleader = " "
vim.o.completeopt = "menuone,noselect"
vim.cmd([[colorscheme tokyonight]])

-- save on ctrl + s
vim.keymap.set({ "n", "i" }, "<C-s>", function()
	if vim.bo.modifiable then
		vim.cmd("write")
	end
end, { silent = true })

-- explorer on ctrl + b
vim.keymap.set({ "n" }, "<C-b>", function()
	vim.cmd("NvimTreeToggle")
end, { silent = true })

-- terminal on ctrl + j
require("luxterm").setup({
	manager_width = 0.8,
	manager_height = 0.8,
	preview_enabled = true,
	auto_hide = true,
	keymaps = {
		toggle_manager = "<C-j>",
	},
})

-- autocomplete
-- next on tab
-- prev on shift + tab
-- accept on enter
vim.api.nvim_set_keymap("i", "<Tab>", 'coc#pum#visible() ? coc#pum#next(1) : "<Tab>"', { expr = true, silent = true })
vim.api.nvim_set_keymap(
	"i",
	"<S-Tab>",
	'coc#pum#visible() ? coc#pum#prev(1) : "<S-Tab>"',
	{ expr = true, silent = true }
)
vim.api.nvim_set_keymap(
	"i",
	"<CR>",
	[[coc#pum#visible() ? coc#pum#confirm() : "\<CR>"]],
	{ expr = true, silent = true }
)

-- stats on space + t + p
require("triforce").setup({
	keymap = {
		show_profile = "<leader>tp",
	},
})

-- lualine config
require("lualine").setup({
	options = { theme = "tokyonight" },
	sections = {
		lualine_a = { "mode" },
		lualine_b = {},
		lualine_c = { "filename" },
		lualine_x = {},
		lualine_y = {
			function()
				return "  " .. os.date("%I:%M %p")
			end,
		},
		lualine_z = { "location" },
	},
})

-- nvim-tree config
require("nvim-tree").setup({
	view = {
		width = 15,
	},
})
