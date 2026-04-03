return {
  'xiyaowong/transparent.nvim',
  config = function()
    require('transparent').setup {
      enable = true, -- enable transparent background
      extra_groups = { -- additional groups to clear
        'NormalFloat', -- for floating windows
        'NvimTreeNormal', -- for NvimTree
      },
      exclude = {}, -- leave empty to apply transparency globally
    }
  end,
}
