return {
  'nvim-tree/nvim-tree.lua',
  version = '*',
  lazy = false,
  dependencies = {
    'nvim-tree/nvim-web-devicons',
  },
  config = function()
    require('nvim-tree').setup {
      sort = {
        sorter = 'case_sensitive',
      },
      view = {
        width = 25,
        side = 'right',
      },
      renderer = {
        group_empty = true,
      },
      filters = {
        dotfiles = true,
      },
    }
    vim.api.nvim_set_hl(0, 'NvimTreeNormal', { bg = 'none', ctermbg = 'none' })
    vim.api.nvim_set_hl(0, 'NvimTreeNormalNC', { bg = 'none', ctermbg = 'none' })
  end,
}
