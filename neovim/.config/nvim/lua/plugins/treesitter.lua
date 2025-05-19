return {
	{
		-- Highlight, edit, and navigate code
		'nvim-treesitter/nvim-treesitter',
		dependencies = {
			'nvim-treesitter/nvim-treesitter-textobjects',
			'nvim-treesitter/nvim-treesitter-context'
		},
		build = function()
			require("nvim-treesitter.install").update({ with_sync = true })()
		end
	}
}
