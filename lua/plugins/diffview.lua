return {
	"sindrets/diffview.nvim",
	cmd = { "DiffviewOpen", "DiffviewFileHistory" },
	keys = {
		{ "<leader>gd", "<cmd>DiffviewOpen<cr>", desc = "Git Diffview" },
		{ "<leader>gh", "<cmd>DiffviewFileHistory %<cr>", desc = "File History" },
	},
	opts = {},
}
