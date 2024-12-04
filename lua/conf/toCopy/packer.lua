
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'


    --fuzzy finder for nvim
    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.0',
        requires = { {'nvim-lua/plenary.nvim'} }
    }

    use({
      "folke/trouble.nvim",
      config = function()
          require("trouble").setup {
              icons = false,
              -- your configuration comes here
              -- or leave it empty to use the default settings
              -- refer to the configuration section below
          }
      end
    })

    use({"nvim-treesitter/nvim-treesitter", run = ":TSUpdate"})
    use("nvim-treesitter/playground")
    use("theprimeagen/harpoon")
    use("theprimeagen/refactoring.nvim")
    use("mbbill/undotree")
    use("tpope/vim-fugitive")
    use("nvim-treesitter/nvim-treesitter-context");
    use { "catppuccin/nvim", as = "catppuccin" }
    use {
      'VonHeikemen/lsp-zero.nvim',
      branch = 'v1.x',
      requires = {
          -- LSP Support
          {'williamboman/mason.nvim'},
          {'williamboman/mason-lspconfig.nvim'},
          {'neovim/nvim-lspconfig'},

          -- Autocompletion
          {'hrsh7th/nvim-cmp'},
          {'hrsh7th/cmp-buffer'},
          {'hrsh7th/cmp-path'},
          {'saadparwaiz1/cmp_luasnip'},
          {'hrsh7th/cmp-nvim-lsp'},
          {'hrsh7th/cmp-nvim-lua'},

          -- Snippets
          {'L3MON4D3/LuaSnip'},
          {'rafamadriz/friendly-snippets'},
      }
    }
    use("vim-airline/vim-airline")
    use("vim-airline/vim-airline-themes")
    use("folke/zen-mode.nvim")
    use("eandrju/cellular-automaton.nvim")
    use("laytan/cloak.nvim")
    use {
        "windwp/nvim-autopairs",
        event = "InsertEnter",
        config = function()
            require("nvim-autopairs").setup {}
        end
    }
    use {
        'goolord/alpha-nvim',
        config = function ()
            require'alpha'.setup(require'alpha.themes.dashboard'.config)
        end
    }
    use {
        "nvim-telescope/telescope-file-browser.nvim",
        requires = { "nvim-telescope/telescope.nvim", "nvim-lua/plenary.nvim" }
    }
    use({
        "sidebar-nvim/sidebar.nvim",
        require("sidebar-nvim").setup({
            disable_default_keybindings = 0,
            bindings = nil,
            open = false,
            side = "left",
            initial_width = 35,
            hide_statusline = false,
            update_interval = 1000,
            sections = { "datetime",
						 "git",
						 "diagnostics",
						 "todos",
						 "buffers",
						 "files",
                     },
            section_separator = {"", "-----", ""},
            section_title_separator = {""},
            containers = {
                attach_shell = "/bin/sh", show_all = true, interval = 5000,
            },
            datetime = {
                icon = "",
                format = "%a %b %d | %H:%M:%S",
                clocks = {
                    { name = "local" }
                }
            },
            todos = {
                icon = "",
                ignored_paths = {'~'}, -- ignore certain paths, this will prevent huge folders like $HOME to hog Neovim with TODO searching
                initially_closed = false, -- whether the groups should be initially closed on start. You can manually open/close groups later.
            },
            buffers = {
                icon = "",
                ignored_buffers = {}, -- ignore buffers by regex
                sorting = "id", -- alternatively set it to "name" to sort by buffer name instead of buf id
                show_numbers = true, -- whether to also show the buffer numbers
                ignore_not_loaded = false, -- whether to ignore not loaded buffers
                ignore_terminal = true, -- whether to show terminal buffers in the list
            },
            files = {
                icon = "",
                show_hidden = false,
                ignored_paths = {"%.git$"}
            },
        })
})
end)
