return {
	"nvim-lualine/lualine.nvim",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	config = function()
		local colors = require("stylix-colors")

		local transparent_theme = {
			normal = {
				a = { fg = colors.base00, bg = colors.base0B, gui = "bold" },
				b = { fg = colors.base05, bg = "NONE" },
				c = { fg = colors.base04, bg = "NONE" },
			},
			insert = {
				a = { fg = colors.base00, bg = colors.base0D, gui = "bold" },
			},
			visual = {
				a = { fg = colors.base00, bg = colors.base0E, gui = "bold" },
			},
			replace = {
				a = { fg = colors.base00, bg = colors.base08, gui = "bold" },
			},
			command = {
				a = { fg = colors.base00, bg = colors.base09, gui = "bold" },
			},
			inactive = {
				a = { fg = colors.base04, bg = "NONE" },
				b = { fg = colors.base04, bg = "NONE" },
				c = { fg = colors.base04, bg = "NONE" },
			},
		}

		require("lualine").setup({
			options = {
				theme = transparent_theme,
				component_separators = { left = "", right = "" },
				section_separators = { left = "", right = "" },
			},
			sections = {
				lualine_a = { "mode" },
				lualine_b = { "branch", "diff", "diagnostics" },
				lualine_c = { "buffers" },
				lualine_x = { "encoding", "fileformat", "filetype" },
				lualine_y = { "progress" },
				lualine_z = { "location" },
			},
		})
	end,
}
