local inlay_hints = {
	includeInlayEnumMemberValueHints = true,
	includeInlayFunctionLikeReturnTypeHints = true,
	includeInlayParameterNameHints = "all",
	includeInlayParameterNameHintsWhenArgumentMatchesName = true,
	includeInlayPropertyDeclarationNameHints = true,
	includeInlayVariableTypeHints = true,
}

return {
	settings = {
		typescript = { inlayHints = inlay_hints },
		javascript = { inlayHints = inlay_hints },
	},
}
