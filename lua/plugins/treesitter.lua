return {
	"nvim-treesitter/nvim-treesitter",
	branch = "main",
	lazy = false,
	build = ":TSUpdate",
	config = function()
		local nts = require("nvim-treesitter")

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

		nts.install(parsers)

		-- Auto-install on first encounter of an unknown filetype.
		local available = {}
		for _, p in ipairs(nts.get_available()) do
			available[p] = true
		end
		local tried = {}

		vim.api.nvim_create_autocmd("FileType", {
			callback = function(args)
				local ft = vim.bo[args.buf].filetype
				if ft == "" then
					return
				end

				local lang = vim.treesitter.language.get_lang(ft) or ft

				if pcall(vim.treesitter.start, args.buf, lang) then
					return
				end

				if tried[lang] or not available[lang] then
					return
				end
				tried[lang] = true

				nts.install(lang):await(function()
					vim.schedule(function()
						if vim.api.nvim_buf_is_valid(args.buf) then
							pcall(vim.treesitter.start, args.buf, lang)
						end
					end)
				end)
			end,
		})
	end,
}
