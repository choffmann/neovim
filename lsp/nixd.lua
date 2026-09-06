local flake = vim.env.NH_FLAKE or (vim.env.HOME .. "/nixos-config")

return {
	settings = {
		nixd = {
			nixpkgs = {
				expr = "import <nixpkgs> { }",
			},
			formatting = {
				command = { "nixfmt" },
			},
			options = {
				nixos = {
					expr = '(builtins.getFlake "git+file://'
						.. flake
						.. '").nixosConfigurations.'
						.. vim.fn.hostname()
						.. ".options",
				},
			},
		},
	},
}
