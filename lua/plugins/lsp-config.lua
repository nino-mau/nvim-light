return {
	{
		"neovim/nvim-lspconfig",
		opts = {
			servers = {
				stylelint_lsp = {
					filetypes = { "css", "vue", "scss", "less", "sass" },
					settings = {
						stylelintplus = {
							autoFixOnSave = true,
							autoFixOnFormat = true,
						},
					},
				},
				vtsls = {
					-- Explicitly enable vtsls (LazyVim might default to tsserver/ts_ls otherwise)
					enabled = true,
					settings = {
						vtsls = {
							enableMoveToFileCodeAction = true,
							experimental = {
								completion = {
									enableServerSideFuzzyMatch = true,
								},
							},
						},
						typescript = {
							check = {
								-- Disable expensive checks
								npmIsInstalled = false,
							},
							tsserver = {
								-- CRITICAL: Increase memory limit to 8GB (8192MB)
								maxTsServerMemory = 8192,
								-- Disable plugins that slow down large repos
								pluginPaths = {},
							},
							preferences = {
								-- Reduce auto-import scanning cost
								includePackageJsonAutoImports = "off",
							},
						},
					},
				},
				biome = {
					enabled = true,
				},
				eslint = {
					enabled = false,
				},
				emmet_language_server = {
					filetypes = {
						"html",
						"css",
						"scss",
						"javascript",
						"javascriptreact",
						"typescript",
						"typescriptreact",
						"vue",
					},
				},
			},
		},
	},
}
