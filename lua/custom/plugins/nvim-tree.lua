-- Nvim-tree is a Neovim plugin to browse the file system
-- https://github.com/nvim-tree/nvim-tree.lua

return {
  'nvim-tree/nvim-tree.lua',
  dependencies = {
    'nvim-tree/nvim-web-devicons',
  },
  keys = {
    { '\\', '<cmd>NvimTreeFindFileToggle<CR>', desc = 'NvimTree toggle', silent = true },
  },
  config = function()
    require('nvim-tree').setup {
      hijack_netrw = true,
      view = {
        width = 35,
      },
      renderer = {
        group_empty = true,
        highlight_git = true,
        icons = {
          show = {
            folder = true,
            file = true,
            git = true,
          },
        },
      },
      filters = {
        dotfiles = false,
      },
    }
  end,
}
