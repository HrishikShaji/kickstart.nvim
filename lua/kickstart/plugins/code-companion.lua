return {
  'olimorris/codecompanion.nvim',
  dependencies = {
    { 'nvim-treesitter/nvim-treesitter', build = ':TSUpdate' },
    { 'nvim-lua/plenary.nvim' },
  },
  opts = {
    strategies = {
      chat = {
        adapter = 'openai_compatible',
      },
      inline = {
        adapter = 'openai_compatible',
      },
    },
    adapters = {},
  },
  config = function(_, opts)
    opts.adapters.openai_compatible = function()
      return require('codecompanion.adapters').extend('openai_compatible', {
        env = {
          url = 'https://openrouter.ai/api',
          chat_url = '/v1/chat/completions',
        },
        schema = {
          model = {
            default = 'anthropic/claude-3.7-sonnet',
          },
        },
      })
    end
    require('codecompanion').setup(opts)
  end,
}
