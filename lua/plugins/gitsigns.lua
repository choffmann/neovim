return {
	"lewis6991/gitsigns.nvim",
	config = function()
		require("gitsigns").setup({})
		local gitsigns = require("gitsigns")
		vim.keymap.set("n", "]c", function()
			if vim.wo.diff then
				vim.cmd.normal({ "]c", bang = true })
			else
				gitsigns.nav_hunk("next")
			end
		end, { desc = "Jump to next git [C]hange" })

		vim.keymap.set("n", "[c", function()
			if vim.wo.diff then
				vim.cmd.normal({ "[c", bang = true })
			else
				gitsigns.nav_hunk("prev")
			end
		end, { desc = "Jump to previous git [C]hange" })

		vim.keymap.set("v", "<leader>hs", function()
			gitsigns.stage_hunk({ vim.fn.line("."), vim.fn.line("v") })
		end, { desc = "stage git hunk" })

		vim.keymap.set("v", "<leader>hr", function()
			gitsigns.reset_hunk({ vim.fn.line("."), vim.fn.line("v") })
		end, { desc = "reset git hunk" })

		vim.keymap.set("n", "<leader>hs", function()
			gitsigns.stage_hunk()
		end, { desc = "git [s]tage hunk" })

		vim.keymap.set("n", "<leader>hr", function()
			gitsigns.reset_hunk()
		end, { desc = "git [r]eset hunk" })

		vim.keymap.set("n", "<leader>hS", function()
			gitsigns.stage_buffer()
		end, { desc = "git [S]tage buffer" })

		vim.keymap.set("n", "<leader>hR", function()
			gitsigns.reset_buffer()
		end, { desc = "git [R]eset buffer" })

		vim.keymap.set("n", "<leader>hp", function()
			gitsigns.preview_hunk()
		end, { desc = "git [p]review hunk" })

		vim.keymap.set("n", "<leader>hb", function()
			gitsigns.blame_line()
		end, { desc = "git [b]lame line" })

		vim.keymap.set("n", "<leader>hd", function()
			gitsigns.diffthis()
		end, { desc = "git [d]iff against index" })

		vim.keymap.set("n", "<leader>hD", function()
			gitsigns.diffthis("@")
		end, { desc = "git [d]iff against last commit" })

		vim.keymap.set("n", "<leader>tb", function()
			gitsigns.toggle_current_line_blame()
		end, { desc = "[T]oggle git show [b]lame line" })

		vim.keymap.set("n", "<leader>tD", function()
			gitsigns.toggle_deleted()
		end, { desc = "[T]oggle git show [D]eleted" })
	end,
}
