return {
	"goolord/alpha-nvim",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	config = function()
		local theta = require("alpha.themes.theta")
		local dashboard = require("alpha.themes.dashboard")
		theta.file_icons.provider = "devicons"
		theta.header.val = {
			[[                                                    ]],
			[[ ███╗   ██╗███████╗ ██████╗ ██╗   ██╗██╗███╗   ███╗ ]],
			[[ ████╗  ██║██╔════╝██╔═══██╗██║   ██║██║████╗ ████║ ]],
			[[ ██╔██╗ ██║█████╗  ██║   ██║██║   ██║██║██╔████╔██║ ]],
			[[ ██║╚██╗██║██╔══╝  ██║   ██║╚██╗ ██╔╝██║██║╚██╔╝██║ ]],
			[[ ██║ ╚████║███████╗╚██████╔╝ ╚████╔╝ ██║██║ ╚═╝ ██║ ]],
			[[ ╚═╝  ╚═══╝╚══════╝ ╚═════╝   ╚═══╝  ╚═╝╚═╝     ╚═╝ ]],
			[[                                                    ]],
		}

		theta.buttons.val = {
			{ type = "text", val = "Quick links", opts = { hl = "SpecialComment", position = "center" } },
			{ type = "padding", val = 1 },
			dashboard.button("e", "  New file", "<cmd>ene<CR>"),
			dashboard.button("r", "  Recent", ":Telescope oldfiles<CR>"),
			dashboard.button("SPC s f", "󰈞  Find file"),
			dashboard.button("SPC s g", "󰊄  Live grep"),
			dashboard.button("c", "  Configuration", "<cmd>FindConfig<CR>"),
			dashboard.button("u", "  Update plugins", "<cmd>Lazy sync<CR>"),
			dashboard.button("q", "󰅚  Quit", "<cmd>qa<CR>"),
		}

		require("alpha").setup(theta.config)
	end,
}
