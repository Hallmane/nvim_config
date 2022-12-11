-- automatically install packer by bootstrapping
local fn = vim.fn
local install_path = fn.stdpath "data" .. "/site/pack/packer/start/packer.nvim"

if fn.empty(fn.glob(install_path)) > 0 then
    PACKER_BOOTSTRAP = fn.system({
        'git',
        'clone',
        '--depth',
        '1',
        'https://github.com/wbthomason/packer.nvim',
        install_path,
    })
    print 'Installing packer close and reopen Neovim ...'
end

--reloads nvim upon saving plugin.lua file
--vim.cmd[[packadd packer.nvim]]
vim.cmd[[
    augroup packer_user_config
        autocmd!
        autocmd BufWritePost plugins.lua source <afile> | PackerSync
    augroup end
]]

-- This file can be loaded by calling `lua require('plugins')` from your init.vim
--packer = require 'packer'
local status_ok, packer = pcall(require, 'packer')
if not status_ok then
    print("status not ok, check config")
    return 
end

packer.init{                                                                   
    opt_default = true,                                                        
    display = {                                                                
        open_fn = function()
            return require('packer.util').float { border = "rounded" }
        end,
        show_all_info = true,                                                  
        prompt_border = 'double',                                              
    },                                                                   
}                                                                              
                                                                             
local use = packer.use                                                         
                                                                               
--packer.reset()                                                                 


return packer.startup(function(use)
  -- Packer can manage itself
  use  {
      "wbthomason/packer.nvim",
      opt = true,
  }

  -- functionality -- 
  --use 'nvim-lua/popup.nvim'
  use "nvim-lua/plenary.nvim"
  use "nvim-treesitter/nvim-treesitter"
  use "nvim-treesitter/nvim-treesitter-refactor"
  use "nvim-telescope/telescope-github.nvim"
  use "ray-x/guihua.lua"

  -- rust specific --
  use "simrat39/rust-tools.nvim"
  --
  -- go specific --
  use "ray-x/go.nvim"
  --
    -- theming --
  use "folke/tokyonight.nvim"
  use "gruvbox-community/gruvbox"

  if PACKER_BOOTSTRAP then
      require("packer").sync()
  end    
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
