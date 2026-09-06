return {
	"folke/flash.nvim",
	event = "VeryLazy",
	opts = {},
	keys = {
		-- `s` stays free for the `sen`/`sde` k8s mappings in keymaps.lua
		{
			"<leader>j",
			mode = { "n", "x", "o" },
			function()
				require("flash").jump()
			end,
			desc = "Flash [J]ump",
		},
		{
			"<leader>J",
			mode = { "n", "x", "o" },
			function()
				require("flash").treesitter()
			end,
			desc = "Flash Treesitter",
		},
	},
}
