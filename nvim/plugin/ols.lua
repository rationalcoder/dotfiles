
local lspconfig = require('lspconfig')

lspconfig.ols.setup {
    flags = {
        allow_incremental_sync = false,
        debounce_text_changes = 500,  -- In ms
    }
}

