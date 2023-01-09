--vim.cmd [[packadd packer.nvim]]

vim.cmd.packadd('packer.nvim')

return require('packer').startup(function(use)
    use {
        "wbthomason/packer.nvim",
        opt = true,
    }

    use "nvim-lua/plenary.nvim"

    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.0',
        -- or                            , branch = '0.1.x',
        requires = { {'nvim-lua/plenary.nvim'} }
    }

    use({
        'rose-pine/neovim',
        as = 'rose-pine',
        config = function()
            vim.cmd('colorscheme rose-pine')
        end
    })

    use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})

    use ('nvim-treesitter/playground')
    use ('theprimeagen/harpoon')
    use ('mbbill/undotree')

    use {
        'VonHeikemen/lsp-zero.nvim',
        requires = {
            -- LSP Support
            {'neovim/nvim-lspconfig'},
            {'williamboman/mason.nvim'},
            {'williamboman/mason-lspconfig.nvim'},

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
    use {
        "folke/trouble.nvim",
        requires = "kyazdani42/nvim-web-devicons",
        config = function()
            require("trouble").setup {
                -- your configuration comes here
                -- or leave it empty to use the default settings
                -- refer to the configuration section below
            }
        end
    }

end)


--
--
-- automatically install packer by bootstrapping
--local fn = vim.fn
--local install_path = fn.stdpath "data" .. "/site/pack/packer/start/packer.nvim"
--
--if fn.empty(fn.glob(install_path)) > 0 then
--    PACKER_BOOTSTRAP = fn.system({
--        'git',
--        'clone',
--        '--depth',
--        '1',
--        'https://github.com/wbthomason/packer.nvim',
--        install_path,
--    })
--    print 'Installing packer close and reopen Neovim ...'
--end
--
----reloads nvim upon saving plugin.lua file
----vim.cmd[[packadd packer.nvim]]
--vim.cmd[[
--    augroup packer_user_config
--        autocmd!
--        autocmd BufWritePost plugins.lua source <afile> | PackerSync
--    augroup end
--]]
--
---- This file can be loaded by calling `lua require('plugins')` from your init.vim
----packer = require 'packer'
--local status_ok, packer = pcall(require, 'packer')
--if not status_ok then
--    print("status not ok, check config")
--    return 
--end
--
-- packer.init{                                                                   
--    opt_default = true,                                                        
--    display = {                                                                
--        open_fn = function()
--            return require('packer.util').float { border = "rounded" }
--        end,
--        show_all_info = true,                                                  
--        prompt_border = 'double',                                              
--    },                                                                   
--}                                                                              
--                                                                             
--local use = packer.use                                                         
--                                                                               
----packer.reset()                                                                 
--
--
--return packer.startup(function(use)
--  -- Packer can manage itself
--  use  {
--      "wbthomason/packer.nvim",
--      opt = true,
--  }
--
--  -- functionality -- 
--  --use 'nvim-lua/popup.nvim'
--  use "nvim-lua/plenary.nvim"
--  use "nvim-treesitter/nvim-treesitter"
--  use "nvim-treesitter/nvim-treesitter-refactor"
--  use {
--      "nvim-telescope/telescope-github.nvim", tag = "0.1.0",
--      requires = { { "nvim-lua/plenary.nvim"} } 
--  }
--  use "ray-x/guihua.lua"
--
--  -- rust specific --
--  use "simrat39/rust-tools.nvim"
--  --
--  -- go specific --
--  use "ray-x/go.nvim"
--  --
--    -- theming --
--  use "folke/tokyonight.nvim"
--  use "gruvbox-community/gruvbox"
--
--  if PACKER_BOOTSTRAP then
--      require("packer").sync()
--  end    
--end)
----  require("rust-tools").setup {
----  tools = {
----    inlay_hints = {
----      -- prefix for parameter hints
----      parameter_hints_prefix = " ",
----
----      -- prefix for all the other hints (type, chaining)
----      other_hints_prefix = " ",
----    },
----  },
----}
----
----  --enable rust_analyzer--
----nvim_lsp.rust_analyzer.setup {
----    capabilities = capabilities, 
----    settings = {
----        ["rust-analyzer"] = {
----            --cargo = { loadOutDirsFromCheck = true },
----            --procMacro = { enable = true },
----        },
----    },
----  }
