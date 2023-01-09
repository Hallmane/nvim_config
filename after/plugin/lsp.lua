local lsp = require('lsp-zero')

lsp.preset('recommended')

lsp.ensure_installed({
    'tsserver',
    'eslint',
    'sumneko_lua',
    'gopls',
})
-- vim undefined global variable fix
lsp.configure('sumneko_lua', {
    settings = {
        Lua = {
            diagnostics = {
                globals = { 'vim' }
            }
        }
    }
})

lsp.configure('gopls', {
    flags = {
        debounce_text_changes = 150,
    },
    on_attach = function()
        print('lsp server (gopls) attached')
    end
})

lsp.set_preferences({
    suggest_lsp_servers = true,
    sign_icons = {
        error = 'E',
        warn = 'W',
        hint = 'H',
        info = 'I',
    }
})

lsp.nvim_workspace()

lsp.setup()

-- configure this a bit more(
vim.diagnostic.config({
    virtual_text = true,
})
