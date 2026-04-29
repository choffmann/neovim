return {
	"nvim-treesitter/nvim-treesitter",
	branch = "main",
	lazy = false,
	build = ":TSUpdate",
	config = function()
		local parsers = {
			-- Core / editor
			"vim",
			"vimdoc",
			"lua",
			"luadoc",
			"query",
			"regex",
			"comment",
			"diff",

			-- Shell / scripting
			"bash",

			-- Languages
			"rust",
			"go",
			"gomod",
			"gosum",
			"gowork",
			"typescript",
			"tsx",
			"javascript",
			"kotlin",
			"java",
			"nix",

			-- Web / markup
			"html",
			"css",
			"scss",

			-- Data / config
			"json",
			"yaml",
			"toml",
			"sql",
			"xml",
			"ini",
			"csv",
			"editorconfig",

			-- Docs
			"markdown",
			"markdown_inline",

			-- DevOps
			"dockerfile",
			"terraform",
			"hcl",
			"helm",

			-- Git
			"gitignore",
			"gitcommit",
			"git_config",
			"git_rebase",
		}

		require("nvim-treesitter").install(parsers)

		vim.api.nvim_create_autocmd("FileType", {
			callback = function(args)
				pcall(vim.treesitter.start, args.buf)
			end,
		})
	end,
}
