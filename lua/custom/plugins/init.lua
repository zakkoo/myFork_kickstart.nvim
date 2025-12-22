-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information

-- custom/plugins/init.lua  (or whatever file you opened that returns a table)
return {
    {
      "nvim-tree/nvim-tree.lua",
      dependencies = { "nvim-tree/nvim-web-devicons" },
  
      -- map first so hitting <leader>e auto-loads plugin
      keys = {
        { "<leader>e", "<cmd>NvimTreeToggle<cr>", desc = "File Explorer" },
        { "<leader>E", "<cmd>NvimTreeFindFile<cr>", desc = "Reveal in Explorer" },
      },
  
      -- disable netrw to avoid conflicts
      init = function()
        vim.g.loaded_netrw = 1
        vim.g.loaded_netrwPlugin = 1
      end,
  
      config = function()
        require("nvim-tree").setup({})
      end,
    },
  }
  
