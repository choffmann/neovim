return {
	"echasnovski/mini.nvim",
	lazy = false,
	priority = 1000,
	config = function()
		local colors = require("stylix-colors")
		require("mini.base16").setup({
			palette = colors,
			use_cterm = true,
		})

		-- transparent background (transparency comes from terminal)
		vim.api.nvim_set_hl(0, "Normal", { bg = "NONE" })
		vim.api.nvim_set_hl(0, "NormalNC", { bg = "NONE" })
		vim.api.nvim_set_hl(0, "NormalFloat", { bg = "NONE" })
		vim.api.nvim_set_hl(0, "SignColumn", { bg = "NONE" })
		vim.api.nvim_set_hl(0, "EndOfBuffer", { bg = "NONE" })

		-- Line numbers and sign column
		vim.api.nvim_set_hl(0, "LineNrAbove", { fg = colors.base04, bg = "NONE" })
		vim.api.nvim_set_hl(0, "LineNrBelow", { fg = colors.base04, bg = "NONE" })
		vim.api.nvim_set_hl(0, "CursorLineSign", { bg = "NONE" })
		vim.api.nvim_set_hl(0, "CursorLineFold", { bg = "NONE" })

		-- Gitsigns
		vim.api.nvim_set_hl(0, "GitSignsAdd", { bg = "NONE" })
		vim.api.nvim_set_hl(0, "GitSignsChange", { bg = "NONE" })
		vim.api.nvim_set_hl(0, "GitSignsDelete", { bg = "NONE" })
		vim.api.nvim_set_hl(0, "GitSignsUntracked", { bg = "NONE" })

		-- Diagnostic signs
		vim.api.nvim_set_hl(0, "DiagnosticSignError", { bg = "NONE" })
		vim.api.nvim_set_hl(0, "DiagnosticSignWarn", { bg = "NONE" })
		vim.api.nvim_set_hl(0, "DiagnosticSignInfo", { bg = "NONE" })
		vim.api.nvim_set_hl(0, "DiagnosticSignHint", { bg = "NONE" })

		-- semi-transparent floating windows
		vim.o.winblend = 30

		-- better visibility with transparent bg
		vim.api.nvim_set_hl(0, "CursorLine", { bg = "#282838" })
		vim.api.nvim_set_hl(0, "CursorLineNr", { fg = colors.base0B, bold = true, bg = "NONE" })
		vim.api.nvim_set_hl(0, "LineNr", { fg = colors.base04, bg = "NONE" })
		vim.api.nvim_set_hl(0, "Comment", { fg = colors.base06, italic = true })
		vim.api.nvim_set_hl(0, "Visual", { bg = colors.base01 })
		vim.api.nvim_set_hl(0, "Folded", { bg = "NONE" })
		vim.api.nvim_set_hl(0, "FoldColumn", { bg = "NONE" })
		vim.api.nvim_set_hl(0, "VertSplit", { bg = "NONE" })
		vim.api.nvim_set_hl(0, "StatusLine", { bg = "NONE" })
		vim.api.nvim_set_hl(0, "StatusLineNC", { bg = "NONE" })
		vim.api.nvim_set_hl(0, "WinSeparator", { bg = "NONE" })

		-- LSP and diagnostics
		vim.api.nvim_set_hl(0, "DiagnosticVirtualTextError", { bg = "NONE" })
		vim.api.nvim_set_hl(0, "DiagnosticVirtualTextWarn", { bg = "NONE" })
		vim.api.nvim_set_hl(0, "DiagnosticVirtualTextInfo", { bg = "NONE" })
		vim.api.nvim_set_hl(0, "DiagnosticVirtualTextHint", { bg = "NONE" })

		-- Popup/Float menus
		vim.api.nvim_set_hl(0, "Pmenu", { bg = "NONE" })
		vim.api.nvim_set_hl(0, "PmenuSbar", { bg = "NONE" })
		vim.api.nvim_set_hl(0, "PmenuThumb", { bg = colors.base02 })
		vim.api.nvim_set_hl(0, "FloatBorder", { bg = "NONE" })
		vim.api.nvim_set_hl(0, "FloatTitle", { bg = "NONE" })

		-- Misc UI
		vim.api.nvim_set_hl(0, "TabLine", { bg = "NONE" })
		vim.api.nvim_set_hl(0, "TabLineFill", { bg = "NONE" })
		vim.api.nvim_set_hl(0, "TabLineSel", { bg = "NONE" })
		vim.api.nvim_set_hl(0, "WinBar", { bg = "NONE" })
		vim.api.nvim_set_hl(0, "WinBarNC", { bg = "NONE" })
		vim.api.nvim_set_hl(0, "MsgArea", { bg = "NONE" })

		-- Fidget (LSP progress)
		vim.api.nvim_set_hl(0, "FidgetNormal", { bg = "NONE" })
		vim.api.nvim_set_hl(0, "FidgetTitle", { bg = "NONE" })

		-- Which-key
		vim.api.nvim_set_hl(0, "WhichKey", { bg = colors.base01 })
		vim.api.nvim_set_hl(0, "WhichKeyNormal", { bg = colors.base01 })
		vim.api.nvim_set_hl(0, "WhichKeyBorder", { fg = colors.base04, bg = colors.base01 })
		vim.api.nvim_set_hl(0, "WhichKeyGroup", { fg = colors.base0D, bg = colors.base01 })
		vim.api.nvim_set_hl(0, "WhichKeyDesc", { bg = colors.base01 })
		vim.api.nvim_set_hl(0, "WhichKeyValue", { bg = colors.base01 })
		vim.api.nvim_set_hl(0, "WhichKeySeparator", { fg = colors.base04, bg = colors.base01 })
		vim.api.nvim_set_hl(0, "WhichKeyFloat", { bg = colors.base01 })

		-- Oil
		vim.api.nvim_set_hl(0, "OilFloat", { bg = colors.base01 })
		vim.api.nvim_set_hl(0, "OilDir", { fg = colors.base0D, bg = colors.base01 })
		vim.api.nvim_set_hl(0, "OilFile", { bg = colors.base01 })
		vim.api.nvim_set_hl(0, "OilNormal", { bg = colors.base01 })
		vim.api.nvim_set_hl(0, "OilNormalNC", { bg = colors.base01 })
		vim.api.nvim_set_hl(0, "OilBorder", { fg = colors.base04, bg = colors.base01 })
		vim.api.nvim_set_hl(0, "OilTitle", { fg = colors.base0D, bg = colors.base01 })

		-- Telescope
		vim.api.nvim_set_hl(0, "TelescopeNormal", { bg = colors.base01 })
		vim.api.nvim_set_hl(0, "TelescopeBorder", { fg = colors.base04, bg = colors.base01 })
		vim.api.nvim_set_hl(0, "TelescopePromptNormal", { bg = colors.base01 })
		vim.api.nvim_set_hl(0, "TelescopePromptBorder", { fg = colors.base04, bg = colors.base01 })
		vim.api.nvim_set_hl(0, "TelescopePromptTitle", { fg = colors.base0B, bg = colors.base01 })
		vim.api.nvim_set_hl(0, "TelescopeResultsNormal", { bg = colors.base01 })
		vim.api.nvim_set_hl(0, "TelescopeResultsBorder", { fg = colors.base04, bg = colors.base01 })
		vim.api.nvim_set_hl(0, "TelescopeResultsTitle", { fg = colors.base0D, bg = colors.base01 })
		vim.api.nvim_set_hl(0, "TelescopePreviewNormal", { bg = colors.base01 })
		vim.api.nvim_set_hl(0, "TelescopePreviewBorder", { fg = colors.base04, bg = colors.base01 })
		vim.api.nvim_set_hl(0, "TelescopePreviewTitle", { fg = colors.base0E, bg = colors.base01 })
		vim.api.nvim_set_hl(0, "TelescopeSelection", { bg = colors.base02 })

		-- mini.ai and mini.surround
		require("mini.ai").setup({ n_lines = 500 })
		require("mini.surround").setup()

		local statusline = require("mini.statusline")
		statusline.setup({ use_icons = vim.g.have_nerd_font })
		statusline.section_location = function()
			return "%2l:%-2v"
		end
	end,
}
