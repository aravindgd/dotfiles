return {
  {
    'chomosuke/typst-preview.nvim',
    lazy = false,
    version = '1.*',
    build = function() require 'typst-preview'.update() end,
  }
}
