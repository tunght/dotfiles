return {
  {
  'nvim-telescope/telescope.nvim', tag = '0.1.8',
  -- or                              , branch = '0.1.x',
  dependencies = { 'nvim-lua/plenary.nvim' },
  config = function()
    local builtin = require('telescope.builtin')
    vim.keymap.set('n', '<C-p>', builtin.find_files, { desc = 'Telescope find files' })
    vim.keymap.set('n', '<leader>gf', builtin.git_files, { desc = 'Telescope find files' })
    vim.keymap.set('n', '<C-s>', function()
      builtin.grep_string({ search = vim.fn.input("Grep > ") });
    end)
  end
},
  {

    'nvim-telescope/telescope-ui-select.nvim',
    config = function()
      -- This is your opts table
      require("telescope").setup {
        extensions = {
          ["ui-select"] = {
            require("telescope.themes").get_dropdown {
              -- even more opts
            }
          }
        }
      }
      -- To get ui-select loaded and working with telescope, you need to call
      -- load_extension, somewhere after setup function:
      require("telescope").load_extension("ui-select")
    end
  }
}

