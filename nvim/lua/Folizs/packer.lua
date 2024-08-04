-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]
return require('packer').startup(function(use)
  -- Packer can manage itself
  use("tpope/vim-dadbod")
  use("kristijanhusak/vim-dadbod-completion")
  use("kristijanhusak/vim-dadbod-ui")
  use("ray-x/lsp_signature.nvim")
  use('nvim-tree/nvim-web-devicons')
  use('sho-87/kanagawa-paper.nvim')
  use('rose-pine/neovim')
  use('folke/tokyonight.nvim')
  use('terryma/vim-multiple-cursors')
  use('ThePrimeagen/vim-be-good')
  use('mbbill/undotree')
  use { "catppuccin/nvim", as = "catppuccin" }
  use('jiangmiao/auto-pairs')
  use('tpope/vim-fugitive')
  use('preservim/nerdtree')
  use('preservim/nerdcommenter')
  use('mattn/emmet-vim')
  use('rstacruz/vim-closer')
  use {'neoclide/coc.nvim', branch = 'release'}
  use('ThePrimeagen/harpoon')
  use ('wbthomason/packer.nvim')
  use {'akinsho/bufferline.nvim', tag = "*", requires = 'nvim-tree/nvim-web-devicons'}
  use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
  use 'neovim/nvim-lspconfig'
  use('hrsh7th/nvim-cmp')
  use {
  'nvim-lualine/lualine.nvim',
  requires = { 'nvim-tree/nvim-web-devicons', opt = true }
}

  -- Lua
    use {
      "folke/which-key.nvim",
      config = function()
        vim.o.timeout = true
        vim.o.timeoutlen = 300
        require("which-key").setup {
          -- your configuration comes here
          -- or leave it empty to use the default settings
          -- refer to the configuration section below
        }
      end
    }
  use {
  'nvimdev/dashboard-nvim',
  event = 'VimEnter',
  config = function()
    require('dashboard').setup {
      -- config
config = {
  center = {
    {
      icon = '',
      icon_hl = 'group',
      desc = 'description',
      desc_hl = 'group',
      key = 'shortcut key in dashboard buffer not keymap !!',
      key_hl = 'group',
      key_format = ' [%s]', -- `%s` will be substituted with value of `key`
      action = '',
    },
  },
  footer = {},
}
    }
  end,
  requires = {'nvim-tree/nvim-web-devicons'}
}
  use {
  "pmizio/typescript-tools.nvim",
  requires = { "nvim-lua/plenary.nvim", "neovim/nvim-lspconfig" },
  config = function()
    require("typescript-tools").setup {}
  end,
}
  use({
    "kylechui/nvim-surround",
    tag = "*", -- Use for stability; omit to use `main` branch for the latest features
    config = function()
        require("nvim-surround").setup({
            -- Configuration here, or leave empty to use defaults
        })
    end
})
  use {
    'nvim-telescope/telescope.nvim', tag = '0.1.6',
  -- or                            , branch = '0.1.x',
    requires = { {'nvim-lua/plenary.nvim'} }
  }
use {
  "rcarriga/nvim-notify",
  config = function()
    require("notify").setup({
      stages = "static",
      timeout = 3000,
      max_height = function()
        return math.floor(vim.o.lines * 0.75)
      end,
      max_width = function()
        return math.floor(vim.o.columns * 0.75)
      end,
      on_open = function(win)
        vim.api.nvim_win_set_config(win, { zindex = 100 })
      end,
    })

    -- Set up notify as the default notification handler
    vim.notify = require("notify")

    -- Key mapping for dismissing notifications
    vim.api.nvim_set_keymap(
      'n', '<leader>un',
      [[<cmd>lua require('notify').dismiss({ silent = true, pending = true })<CR>]],
      { noremap = true, silent = true, desc = "Dismiss All Notifications" }
    )
  end
}

end)
