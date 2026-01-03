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

require("nvim-tree").setup({
	view = {
		width = 15,
	},
})
