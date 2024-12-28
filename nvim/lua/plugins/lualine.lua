return {
	{
		"nvim-lualine/lualine.nvim",
		opts = {
			options = {
				disabled_filetypes = { "NvimTree", "Trouble" },
				icons_enabled = false,
				component_separators = "|",
				section_separators = "",
			},
			sections = {
				lualine_x = {
					"filetype",
					"fileformat",
					"encoding",
				},
			},
		},
	},
}
