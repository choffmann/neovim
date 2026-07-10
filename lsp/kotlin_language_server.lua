return {
	init_options = {
		storagePath = vim.fn.stdpath("state") .. "/kotlin-language-server",
	},
	settings = {
		kotlin = {
			scripts = {
				enabled = true,
			},
		},
	},
}
