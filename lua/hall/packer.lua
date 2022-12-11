-- This file can be loaded by calling `lua require('plugins')` from your init.vim
packer = require 'packer'
                                                                                
packer.init{                                                                   
    opt_default = true,                                                        
    display = {                                                                
        open_fn = require('packer.util').float,                                
        show_all_info = true,                                                  
        prompt_border = 'double',                                              
    }                                                                          
}                                                                              
                                                                             
local use = packer.use                                                         
                                                                               
packer.reset()                                                                 
                                                                               
-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use {
      'wbthomason/packer.nvim',
      opt = false
  }

  -- functionality -- 
  use 'nvim-lua/popup.nvim'
  use 'nvim-lua/plenary.nvim'
  use 'nvim-treesitter/nvim-treesitter'
  use 'nvim-treesitter/nvim-treesitter-refactor'
  use 'nvim-telescope/telescope-github.nvim'
  use 'ray-x/go.nvim'
  use 'ray-x/guihua.lua'
  -- rust specific --
  use 'simrat39/rust-tools.nvim'
  --
    -- theming --
  use 'folke/tokyonight.nvim'
  use 'gruvbox-community/gruvbox'

end)
--  require("rust-tools").setup {
--  tools = {
--    inlay_hints = {
--      -- prefix for parameter hints
--      parameter_hints_prefix = " ",
--
--      -- prefix for all the other hints (type, chaining)
--      other_hints_prefix = " ",
--    },
--  },
--}
--
--  --enable rust_analyzer--
--nvim_lsp.rust_analyzer.setup {
--    capabilities = capabilities, 
--    settings = {
--        ["rust-analyzer"] = {
--            --cargo = { loadOutDirsFromCheck = true },
--            --procMacro = { enable = true },
--        },
--    },
--  }
