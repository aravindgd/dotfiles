return {
	-- Fuzzy Finder (files, lsp, etc)
  {
    'nvim-telescope/telescope.nvim',
    dependencies = {
      'nvim-lua/plenary.nvim',
      -- fuzzy finder algorithm
      { 'nvim-telescope/telescope-fzf-native.nvim', build = 'make' },
      -- It enables passing arguments to the grep command, useful for searching by a particular folder
      { 'nvim-telescope/telescope-live-grep-args.nvim' },

      -- longer history of search terms that is context sensitive to cwd
      {
        'nvim-telescope/telescope-smart-history.nvim',
        dependencies = {
          { "tami5/sqlite.lua" }
        },
      },
    },
  }
}
