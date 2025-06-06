return {
	{
		"olimorris/codecompanion.nvim",
		dependencies = {
			"nvim-lua/plenary.nvim",
			"MunifTanjim/nui.nvim",
		},
		cmd = { "CodeCompanion" },
		config = function()
			require("codecompanion").setup({
				adapters = {
					deepseek = function()
						return require("codecompanion.adapters").extend("ollama", {
							name = "deepseek",
							schema = {
								model = {
									default = "deepseek-coder",
								},
								url = {
									default = "http://localhost:11434",
								},
							},
						})
					end,
				},
				strategies = {
					chat = {
						adapter = "deepseek",
					},
					inline = {
						adapter = "deepseek",
					},
					agent = {
						adapter = "deepseek",
					},
				},
			})
		end,
	},
}
