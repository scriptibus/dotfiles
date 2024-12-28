return {
	"catppuccin/nvim",
	name = "catppuccin",
	priority = 1000,
	config = function()
		require("catppuccin").setup({
			transparent_background = true,
			flavour = "mocha",
			custom_highlights = {
				LineNr = { fg = "#A6ACCD" }, -- Brighter line number color (use a hex value or choose from Catppuccin's palette)
				CursorLineNr = { fg = "#C6A0F6", style = { "bold" } }, -- Highlight for the current line number
			},
		})
	end,
}
