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
					expr = '(builtins.getFlake ("git+file://" + "/home/choffmann/nixos-config")).nixosConfigurations.'
						.. vim.fn.hostname()
						.. ".options",
				},
			},
		},
	},
}
