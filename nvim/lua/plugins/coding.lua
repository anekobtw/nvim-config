return {
	{
		"nvim-treesitter/nvim-treesitter",
		lazy = false,
		build = ":TSUpdate",
	},
	{
		"windwp/nvim-autopairs",
		event = "InsertEnter",
		config = true,
	},
	{
		"neoclide/coc.nvim",
		branch = "release",
	},
	{
		"lewis6991/gitsigns.nvim",
	},
	{
		"windwp/nvim-ts-autotag",
	},
}
