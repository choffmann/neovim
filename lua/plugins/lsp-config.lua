return {
	{
		"neovim/nvim-lspconfig",
		dependencies = {
			{ "j-hui/fidget.nvim", opts = {} },
			{ "towolf/vim-helm", ft = "helm" },
			{
				"folke/lazydev.nvim",
				ft = "lua", -- only load on lua files
				opts = {
					library = {
						-- See the configuration section for more details
						-- Load luvit types when the `vim.uv` word is found
						{ path = "${3rd}/luv/library", words = { "vim%.uv" } },
					},
				},
			},
			"hrsh7th/cmp-nvim-lsp",
		},
		config = function()
			vim.api.nvim_create_autocmd("LspAttach", {
				callback = function(event)
					local map = function(keys, func, desc)
						vim.keymap.set("n", keys, func, { buffer = event.buf, desc = "LSP: " .. desc })
					end

					map("gd", require("telescope.builtin").lsp_definitions, "[G]oto [D]efinition")
					map("gr", require("telescope.builtin").lsp_references, "[G]oto [R]eferences")
					map("gI", require("telescope.builtin").lsp_implementations, "[G]oto [I]mplementation")
					map("<leader>D", require("telescope.builtin").lsp_type_definitions, "Type [D]efinition")
					map("<leader>ds", require("telescope.builtin").lsp_document_symbols, "[D]ocument [S]ymbols")
					map(
						"<leader>ws",
						require("telescope.builtin").lsp_dynamic_workspace_symbols,
						"[W]orkspace [S]ymbols"
					)
					map("<leader>rn", vim.lsp.buf.rename, "[R]e[n]ame")
					map("<leader>ca", vim.lsp.buf.code_action, "[C]ode [A]ction")
					map("K", vim.lsp.buf.hover, "Hover Documentation")
					map("gD", vim.lsp.buf.declaration, "[G]oto [D]eclaration")
					map("<leader>td", vim.lsp.buf.type_definition, "Type [D]efinition")
					map("<leader>cR", vim.lsp.buf.code_action, "[C]ode [R]efactor")

					local client = vim.lsp.get_client_by_id(event.data.client_id)
					if client and client.server_capabilities.documentHighlightProvider then
						vim.api.nvim_create_autocmd({ "CursorHold", "CursorHoldI" }, {
							buffer = event.buf,
							callback = vim.lsp.buf.document_highlight,
						})

						vim.api.nvim_create_autocmd({ "CursorMoved", "CursorMovedI" }, {
							buffer = event.buf,
							callback = vim.lsp.buf.clear_references,
						})
					end

					if client and client.server_capabilities.inlayHintProvider and vim.lsp.inlay_hint then
						map("<leader>th", function()
							vim.lsp.inlay_hint.enable(not vim.lsp.inlay_hint.is_enabled())
						end, "[T]oggle Inlay [H]ints")
					end
				end,
			})
			local capabilities = vim.lsp.protocol.make_client_capabilities()
			capabilities = vim.tbl_deep_extend("force", capabilities, require("cmp_nvim_lsp").default_capabilities())

			local servers = {
				lua_ls = {
					-- cmd = { ... },
					filetypes = { "lua" },
					settings = {
						Lua = {
							completion = {
								callSnippet = "Replace",
							},
							-- You can toggle below to ignore Lua_LS's noisy `missing-fields` warnings
							-- diagnostics = { disable = { 'missing-fields' } },
						},
					},
				},
				ts_ls = {
					settings = {
						inlayHints = {
							includeInlayEnumMemberValueHints = true,
							includeInlayFunctionLikeReturnTypeHints = true,
							includeInlayParameterNameHints = "all",
							includeInlayParameterNameHintsWhenArgumentMatchesName = true,
							includeInlayPropertyDeclarationNameHints = true,
							includeInlayVariableTypeHints = true,
						},
					},
				},
				gopls = {
					settings = {
						filetypes = { "go", "gotempl", "gowork", "gomod" },
						gopls = {
							completeUnimported = true,
							usePlaceholders = false,
							analyses = {
								unusedparams = true,
								shadow = true,
								fillreturns = true,
							},
							["ui.inlayhint.hints"] = {
								compositeLiteralFields = true,
								constantValues = true,
								paramerterNames = true,
								rangeVariableTypes = true,
							},
						},
					},
				},
				rust_analyzer = {},
				zls = {},
				marksman = {},
				nixd = {
					cmd = { "nixd" },
					settings = {
						nixd = {
							nixpkgs = {
								expr = 'import (builtins.getFlake "github:choffmann/nixos-config").inputs.nixpkgs { }',
							},
							formatting = {
								command = { "alejandra" },
							},
							options = {
								nixos = {
									expr = "(builtins.getFlake (github:choffmann/nixos-config)).nixosConfigurations",
								},
								home_manager = {
									expr = "(builtins.getFlake (github:choffmann/nixos-config)).homeConfigurations",
								},
							},
						},
					},
				},
				tailwindcss = {
					init_options = {
						userLanguages = {
							elixir = "html-eex",
							eelixir = "html-eex",
							heex = "html-eex",
						},
					},
					settings = {
						tailwindCSS = {
							experimental = {
								classRegex = {
									'class[:]\\s*"([^"]*)"',
								},
							},
						},
					},
				},
				jsonls = {},
				yamlls = {
					settings = {
						yaml = {
							schemas = {
								["https://json.schemastore.org/github-workflow.json"] = "/.github/workflows/*",
								["https://raw.githubusercontent.com/instrumenta/kubernetes-json-schema/master/v1.18.0-standalone-strict/all.json"] = "/*.k8s.yaml",
							},
						},
					},
				},
			}

			for name, server in pairs(servers) do
				server.capabilities = capabilities
				require("lspconfig")[name].setup(server)
			end
		end,
	},
}
