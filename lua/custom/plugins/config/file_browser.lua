--
-- See the kickstart.nvim README for more information
--
-- You don't need to set any of these options.
-- IMPORTANT!: this is only a showcase of how you can set default options!
local fb_actions = require 'telescope._extensions.file_browser.actions'
require('telescope').setup {
  extensions = {
    file_browser = {
      mappings = {
        ['i'] = {
          ['<C-h>'] = fb_actions.goto_home_dir,
          ['<C-x>'] = function()
            print 'test'
          end,
        },
      },
    },
    theme = 'ivy',
    -- disables netrw and use telescope-file-browser in its place
    hijack_netrw = true,
  },
}

-- To get telescope-file-browser loaded and working with telescope,
-- you need to call load_extension, somewhere after setup function:
require('telescope').load_extension 'file_browser'
