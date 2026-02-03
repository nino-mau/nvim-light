-- Disable mini.ai textobjects conflicting with mini.surround
-- or configure mini.surround with explicit keymaps
return {
	{
		"nvim-mini/mini.surround",
		opts = {
			mappings = {
				add = "gsa", -- Add surrounding in Normal and Visual modes
				delete = "gsd", -- Delete surrounding
				find = "gsf", -- Find surrounding (to the right)
				find_left = "gsF", -- Find surrounding (to the left)
				highlight = "gsh", -- Highlight surrounding
				replace = "gsr", -- Replace surrounding
				update_n_lines = "gsn", -- Update `n_lines`
			},
		},
	},
	-- Disable mini.ai for surround operations
	{
		"nvim-mini/mini.ai",
		opts = function(_, opts)
			-- Don't use mini.ai for single character surrounds
			opts.custom_textobjects = opts.custom_textobjects or {}
			-- You can also completely disable mini.ai if not needed:
			-- return { enabled = false }
		end,
	},
}
