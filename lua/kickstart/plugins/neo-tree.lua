-- Neo-tree is a Neovim plugin to browse the file system
-- https://github.com/nvim-neo-tree/neo-tree.nvim

return {
  'nvim-neo-tree/neo-tree.nvim',
  version = '*',
  dependencies = {
    'nvim-lua/plenary.nvim',
    'nvim-tree/nvim-web-devicons', -- not strictly required, but recommended
    'MunifTanjim/nui.nvim',
  },
  cmd = 'Neotree',
  keys = {
    { '\\', ':Neotree reveal<CR>', desc = 'NeoTree reveal', silent = true },
  },
  opts = {
    filesystem = {
      filtered_items = {
        visible = true,
        hide_dotfiles = false,
        hide_by_name = {
          'node_modules',
          'venv',
          '__pycache__',
          '.pytest_cache',
        },
      },
      window = {
        mappings_options = {
          noremap = true,
          nowait = true,
        },
        mappings = {
          ['\\'] = 'close_window',
          ['j'] = 'noop',
          ['k'] = 'noop',
          ['l'] = 'noop',
          ['m'] = 'open',
        },
      },
    },
  },
}
