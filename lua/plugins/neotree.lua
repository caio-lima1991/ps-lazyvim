return {
	"nvim-neo-tree/neo-tree.nvim",
	opts = {
		filesystem = { hijack_netrw_behavior = "open_default" },
		default_component_configs = {
			file_size = {
				enabled = false,
			},
			type = {
				enabled = false,
			},

			last_modified = {
				enabled = false,
			},
			created = {
				enabled = false,
			},
		},
	},
}
