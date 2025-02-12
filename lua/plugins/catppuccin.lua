return {
	"catppuccin/nvim",
	lazy = false,
	name = "catppuccin",
	priority = 1000,
	config = function()
		require("catppuccin").setup({
			transparent_background = false,
			integrations = {
				alpha = true,
				cmp = true,
				gitsigns = true,
				nvimtree = true,
				treesitter = true,
				harpoon = true,
				dadbod_ui = false,
			},
		})
		vim.cmd.colorscheme("catppuccin")
		vim.cmd.hi("Comment gui=none")
	end,
}
