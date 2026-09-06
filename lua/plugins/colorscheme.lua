-- Transparency comes from the terminal, so every background stays NONE no
-- matter which colorscheme painted it. Re-applied on ColorScheme because DMS
-- hot-reloads its theme when the wallpaper changes.
local function transparency()
	vim.api.nvim_set_hl(0, "Normal", { bg = "NONE" })
	vim.api.nvim_set_hl(0, "NormalNC", { bg = "NONE" })
	vim.api.nvim_set_hl(0, "NormalFloat", { bg = "NONE" })
	vim.api.nvim_set_hl(0, "SignColumn", { bg = "NONE" })
	vim.api.nvim_set_hl(0, "EndOfBuffer", { bg = "NONE" })

	vim.api.nvim_set_hl(0, "CursorLineSign", { bg = "NONE" })
	vim.api.nvim_set_hl(0, "CursorLineFold", { bg = "NONE" })

	vim.api.nvim_set_hl(0, "GitSignsAdd", { bg = "NONE" })
	vim.api.nvim_set_hl(0, "GitSignsChange", { bg = "NONE" })
	vim.api.nvim_set_hl(0, "GitSignsDelete", { bg = "NONE" })
	vim.api.nvim_set_hl(0, "GitSignsUntracked", { bg = "NONE" })

	vim.api.nvim_set_hl(0, "DiagnosticSignError", { bg = "NONE" })
	vim.api.nvim_set_hl(0, "DiagnosticSignWarn", { bg = "NONE" })
	vim.api.nvim_set_hl(0, "DiagnosticSignInfo", { bg = "NONE" })
	vim.api.nvim_set_hl(0, "DiagnosticSignHint", { bg = "NONE" })

	vim.o.winblend = 30

	vim.api.nvim_set_hl(0, "Folded", { bg = "NONE" })
	vim.api.nvim_set_hl(0, "FoldColumn", { bg = "NONE" })
	vim.api.nvim_set_hl(0, "VertSplit", { bg = "NONE" })
	vim.api.nvim_set_hl(0, "StatusLine", { bg = "NONE" })
	vim.api.nvim_set_hl(0, "StatusLineNC", { bg = "NONE" })
	vim.api.nvim_set_hl(0, "WinSeparator", { bg = "NONE" })

	vim.api.nvim_set_hl(0, "DiagnosticVirtualTextError", { bg = "NONE" })
	vim.api.nvim_set_hl(0, "DiagnosticVirtualTextWarn", { bg = "NONE" })
	vim.api.nvim_set_hl(0, "DiagnosticVirtualTextInfo", { bg = "NONE" })
	vim.api.nvim_set_hl(0, "DiagnosticVirtualTextHint", { bg = "NONE" })

	vim.api.nvim_set_hl(0, "Pmenu", { bg = "NONE" })
	vim.api.nvim_set_hl(0, "PmenuSbar", { bg = "NONE" })
	vim.api.nvim_set_hl(0, "FloatBorder", { bg = "NONE" })
	vim.api.nvim_set_hl(0, "FloatTitle", { bg = "NONE" })

	vim.api.nvim_set_hl(0, "TabLine", { bg = "NONE" })
	vim.api.nvim_set_hl(0, "TabLineFill", { bg = "NONE" })
	vim.api.nvim_set_hl(0, "TabLineSel", { bg = "NONE" })
	vim.api.nvim_set_hl(0, "WinBar", { bg = "NONE" })
	vim.api.nvim_set_hl(0, "WinBarNC", { bg = "NONE" })
	vim.api.nvim_set_hl(0, "MsgArea", { bg = "NONE" })

	vim.api.nvim_set_hl(0, "FidgetNormal", { bg = "NONE" })
	vim.api.nvim_set_hl(0, "FidgetTitle", { bg = "NONE" })
end

-- Only for the stylix fallback: base46 ships its own integrations for these.
local function stylix_highlights(colors)
	vim.api.nvim_set_hl(0, "LineNrAbove", { fg = colors.base04, bg = "NONE" })
	vim.api.nvim_set_hl(0, "LineNrBelow", { fg = colors.base04, bg = "NONE" })

	vim.api.nvim_set_hl(0, "CursorLine", { bg = colors.base01 })
	vim.api.nvim_set_hl(0, "CursorLineNr", { fg = colors.base0B, bold = true, bg = "NONE" })
	vim.api.nvim_set_hl(0, "LineNr", { fg = colors.base04, bg = "NONE" })
	vim.api.nvim_set_hl(0, "Comment", { fg = colors.base06, italic = true })
	vim.api.nvim_set_hl(0, "Visual", { bg = colors.base02 })
	vim.api.nvim_set_hl(0, "PmenuThumb", { bg = colors.base02 })

	vim.api.nvim_set_hl(0, "WhichKey", { bg = colors.base01 })
	vim.api.nvim_set_hl(0, "WhichKeyNormal", { bg = colors.base01 })
	vim.api.nvim_set_hl(0, "WhichKeyBorder", { fg = colors.base04, bg = colors.base01 })
	vim.api.nvim_set_hl(0, "WhichKeyGroup", { fg = colors.base0D, bg = colors.base01 })
	vim.api.nvim_set_hl(0, "WhichKeyDesc", { bg = colors.base01 })
	vim.api.nvim_set_hl(0, "WhichKeyValue", { bg = colors.base01 })
	vim.api.nvim_set_hl(0, "WhichKeySeparator", { fg = colors.base04, bg = colors.base01 })
	vim.api.nvim_set_hl(0, "WhichKeyFloat", { bg = colors.base01 })

	vim.api.nvim_set_hl(0, "OilFloat", { bg = colors.base01 })
	vim.api.nvim_set_hl(0, "OilDir", { fg = colors.base0D, bg = colors.base01 })
	vim.api.nvim_set_hl(0, "OilFile", { bg = colors.base01 })
	vim.api.nvim_set_hl(0, "OilNormal", { bg = colors.base01 })
	vim.api.nvim_set_hl(0, "OilNormalNC", { bg = colors.base01 })
	vim.api.nvim_set_hl(0, "OilBorder", { fg = colors.base04, bg = colors.base01 })
	vim.api.nvim_set_hl(0, "OilTitle", { fg = colors.base0D, bg = colors.base01 })

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
end

return {
	-- colors/dms.lua is generated by DMS from the wallpaper via matugen and
	-- builds its theme table through this fork's API, so base46 has to be
	-- loaded before the colorscheme is set.
	{
		"AvengeMedia/base46",
		branch = "v3.0",
		lazy = false,
		priority = 1001,
		opts = {},
	},

	{
		"echasnovski/mini.nvim",
		lazy = false,
		priority = 1000,
		config = function()
			-- The static stylix palette stays as the fallback: colors/dms.lua
			-- only exists once DMS has run its matugen templates.
			if not pcall(vim.cmd.colorscheme, "dms") then
				local colors = require("stylix-colors")
				require("mini.base16").setup({
					palette = colors,
					use_cterm = true,
				})
				stylix_highlights(colors)
			end

			transparency()
			vim.api.nvim_create_autocmd("ColorScheme", { callback = transparency })

			require("mini.ai").setup({ n_lines = 500 })
		end,
	},
}
