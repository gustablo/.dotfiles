local builtin = require('telescope.builtin')
local actions = require('telescope.actions')

-- searching all
vim.keymap.set('n', '<leader>fF', builtin.find_files, {})
vim.keymap.set('n', '<leader>fG', builtin.live_grep, {})

-- ignoring specific files
vim.keymap.set('n', '<leader>ff',function()
    builtin.find_files({
        file_ignore_patterns = {"_spec", "%.yml"},
    })
end, {})
 
vim.keymap.set("n", "<leader>fg", function()
    builtin.live_grep({
        file_ignore_patterns = {"_spec", "%.yml"},
    })
end, {})

vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
vim.keymap.set('n', '<leader>fx', builtin.resume, {})
require('telescope').setup{
  defaults = {
    -- Default configuration for telescope goes here:
    -- config_key = value,
    mappings = {
      n = {
    	  ['<leader>d'] = require('telescope.actions').delete_buffer
      }, -- n
      i = {
        ["<C-h>"] = "which_key",
        ['<leader>d'] = require('telescope.actions').delete_buffer
      } -- i
    } -- mappings
  }, -- defaults
...
} -- telescope setup
