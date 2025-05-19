return {
	-- Autocompletion
	'hrsh7th/nvim-cmp',
	dependencies = {
		-- Snippet Engine & its associated nvim-cmp source
		'L3MON4D3/LuaSnip',
		'saadparwaiz1/cmp_luasnip',

		-- Adds LSP completion capabilities
		'hrsh7th/cmp-nvim-lsp',
		'hrsh7th/cmp-path',

    -- For suggestion from the same buffer
    "hrsh7th/cmp-buffer",

    -- Add spellcheck to cmp
    "f3fora/cmp-spell",

		-- Adds a number of user-friendly snippets
		'rafamadriz/friendly-snippets',

		-- Copilot
		{ "zbirenbaum/copilot.lua", opts = {} },
		{ "zbirenbaum/copilot-cmp", opts = {} }
	},
}
