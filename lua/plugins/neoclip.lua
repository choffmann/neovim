return {
	"AckslD/nvim-neoclip.lua",
	dependencies = {
		-- you'll need at least one of these
		{ "nvim-telescope/telescope.nvim" },
	},
	config = function()
		require("neoclip").setup()
		vim.keymap.set("n", "<leader>sc", "<cmd>Telescope neoclip<cr>", { desc = "[S]earch [C]lipboard" })
	end,
}
