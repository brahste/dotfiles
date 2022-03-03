require('packer').startup(function()

  use 'wbthomason/packer.nvim'
  use 'ellisonleao/gruvbox.nvim'   -- Classic gruvbox color theme
  use 'vimwiki/vimwiki'            -- Add more about the VIM Wiki!
  use 'tpope/vim-commentary'       -- Simple block commenting with `gcc` and `gc`
  use 'mhinz/vim-signify'          -- Annotates added, removed, and modified lines
  use 'feline-nvim/feline.nvim'    -- Statusline plugin (!needs configuration)
  use {
    'romgrk/barbar.nvim',
    requires = {'kyazdani42/nvim-web-devicons'}
  }
  use {
    'goolord/alpha-nvim',
    requires = { 'kyazdani42/nvim-web-devicons' },
    config = function ()
        local alpha = require'alpha'
        -- require'alpha'.setup(require'alpha.themes.startify'.config)
        local startify = require'alpha.themes.startify'
        -- startify.section.mru_cwd.val = { { type = "padding", val = 0 } }
        startify.section.bottom_buttons.val = {
          startify.button("e", "new file", ":ene <bar> startinsert <CR>"),
          startify.button("c", "neovim config", ":e ~/.config/nvim/init.lua<CR>"),
          startify.button("z", "zshrc config", ":e ~/.zshrc<CR>"),
          startify.button("g", "git config", ":e ~/.gitconfig<CR>"),
          startify.button("q", "quit", ":qa<CR>"),
	}
        alpha.setup(startify.config)
    end
  }

  -- IDE plugins
  use {
    'nvim-treesitter/nvim-treesitter',   -- Treesitter? What does it do exactly?
    run = ':TSUpdate',
  }
  use {
    'neovim/nvim-lspconfig',             -- Native neovim LSP support
    'williamboman/nvim-lsp-installer',   -- LSP installer (use :LspInstall <lang>)
  }
  use 'simrat39/rust-tools.nvim'
  use {
    'hrsh7th/cmp-nvim-lsp',              -- Variety of completion plugins
    'hrsh7th/cmp-buffer',
    'hrsh7th/cmp-path',
    'hrsh7th/cmp-cmdline',
    'hrsh7th/nvim-cmp',
  }
  use {
    'hrsh7th/cmp-vsnip',
    'hrsh7th/vim-vsnip',
  }
  use {
    'nvim-telescope/telescope.nvim',
    requires = { 'nvim-lua/plenary.nvim' }
  }
  use {
    'kyazdani42/nvim-tree.lua',
    requires = {
      'kyazdani42/nvim-web-devicons', -- optional, for file icon
    },
    config = function() require'nvim-tree'.setup {} end
  }
end)
