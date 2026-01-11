require('lazy').setup({
  'NMAC427/guess-indent.nvim',
  require 'plugins.gitsign',
  require 'plugins.whichkey',
  require 'plugins.telescope',
  {
    'folke/lazydev.nvim',
    ft = 'lua',
    opts = {
      library = {
        { path = '${3rd}/luv/library', words = { 'vim%.uv' } },
      },
    },
  },
  require 'plugins.lspconfig',
  require 'plugins.autoformat',
  require 'plugins.autocomplete',
  require 'plugins.theme',
  { 'folke/todo-comments.nvim', event = 'VimEnter', dependencies = { 'nvim-lua/plenary.nvim' }, opts = { signs = false } },
  require 'plugins.mini',
  require 'plugins.treesitter',
  require 'plugins.neotree',
  require 'plugins.flutter',
  require 'plugins.terminal',
  {
    'windwp/nvim-autopairs',
    event = 'InsertEnter',
    opts = {},
  },
  {
    'xeluxee/competitest.nvim',
    dependencies = 'MunifTanjim/nui.nvim',
    config = function()
      require('competitest').setup()
    end,
  },
}, {
  ui = {
    icons = vim.g.have_nerd_font and {} or {
      cmd = '⌘',
      config = '🛠',
      event = '📅',
      ft = '📂',
      init = '⚙',
      keys = '🗝',
      plugin = '🔌',
      runtime = '💻',
      require = '🌙',
      source = '📄',
      start = '🚀',
      task = '📌',
      lazy = '💤 ',
    },
  },
})
