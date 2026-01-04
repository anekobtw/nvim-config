return {
	{
		"folke/tokyonight.nvim",
		lazy = false,
		priority = 1000,
	},
	{
		"nvim-tree/nvim-web-devicons",
	},
	{
		"nvim-lualine/lualine.nvim",
		lazy = false,
		requires = { "nvim-tree/nvim-web-devicons", opt = true },
	},
	{
		"folke/todo-comments.nvim",
	},
	{
		"akinsho/bufferline.nvim",
	},
	{
		"numToStr/Comment.nvim",
	},
	{
		"nvim-tree/nvim-tree.lua",
	},
	{
		"folke/which-key.nvim",
	},
	{
		"luxvim/nvim-luxterm",
	},
	{
		"gisketch/triforce.nvim",
		dependencies = { "nvzone/volt" },
	},
}
