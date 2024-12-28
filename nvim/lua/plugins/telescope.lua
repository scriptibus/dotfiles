return {
	{
		"nvim-telescope/telescope.nvim",
		tag = "0.1.8",
		dependencies = { "nvim-lua/plenary.nvim" },
		config = function()
			local builtin = require("telescope.builtin")
			vim.keymap.set("n", "<leader>ff", builtin.find_files, {})
			vim.keymap.set("n", "<leader>fg", builtin.live_grep, {})
			vim.keymap.set("n", "<leader>fb", builtin.buffers, {})
		end,
	},
	{
		"nvim-telescope/telescope-ui-select.nvim",
		config = function()
			require("telescope").setup({
				extensions = {
					["ui-select"] = {
						require("telescope.themes").get_dropdown({}),
					},
				},
				defaults = {
					file_ignore_patterns = { "^.git/" },
				},
				pickers = {
					find_files = {
						hidden = true,
					},
				},
			})
			require("telescope").load_extension("ui-select")
			require("telescope").load_extension("recent_files")
		end,
	},
	{
		"smartpde/telescope-recent-files",
		config = function()
			require("telescope").setup({
				extensions = {
					recent_files = {
						only_cwd = true,
					},
				},
			})
			vim.api.nvim_set_keymap(
				"n",
				"<Leader><Leader>",
				[[<cmd>lua require('telescope').extensions.recent_files.pick()<CR>]],
				{ noremap = true, silent = true }
			)
		end,
	},
	{
		"glepnir/template.nvim",
		cmd = { "Template", "TemProject" },
		config = function()
			require("template").setup({
				temp_dir = "~/.config/nvim/templates",
			})
			require("template").register("{{_path_}}", function()
				vim.fn.expand("%")
			end)
			require("telescope").load_extension("find_template")
		end,
	},
}
