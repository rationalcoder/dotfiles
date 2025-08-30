local vim = vim
-- local Plug = vim.fn['plug#']

--vim.call('plug#begin')
--  Plug('neovim/nvim-lspconfig') -- https://github.com/neovim/nvim-lspconfig
--  Plug('ziglang/zig.vim')       -- https://github.com/ziglang/zig.vim
--vim.call('plug#end')

-- don't show parse errors in a separate window
vim.g.zig_fmt_parse_errors = 0
-- disable format-on-save from `ziglang/zig.vim`
vim.g.zig_fmt_autosave = 1
-- enable  format-on-save from nvim-lspconfig + ZLS
--
-- Formatting with ZLS matches `zig fmt`.
-- The Zig FAQ answers some questions about `zig fmt`:
-- https://github.com/ziglang/zig/wiki/FAQ
vim.api.nvim_create_autocmd('BufWritePre',{
  pattern = {"*.zig", "*.zon"},
  callback = function(ev)
    vim.lsp.buf.format()
  end
})

local os = require('os')

local lspconfig = require('lspconfig')

lspconfig.zls.setup {
  -- Server-specific settings. See `:help lspconfig-setup`

  -- omit the following line if `zls` is in your PATH
  --cmd = { '/path/to/zls_executable' },
  --cmd = { '/c/projects/repos/zls/zig-out/bin/zls.exe' },
  cmd = { os.getenv('ZLSPATH') .. '/zls.exe' },
  -- There are two ways to set config options:
  --   - edit your `zls.json` that applies to any editor that uses ZLS
  --   - set in-editor config options with the `settings` field below.
  --
  -- Further information on how to configure ZLS:
  -- https://zigtools.org/zls/configure/
  settings = {
    zls = {
      -- Whether to enable build-on-save diagnostics
      --
      -- Further information about build-on save:
      -- https://zigtools.org/zls/guides/build-on-save/
      enable_build_on_save = false,

      -- omit the following line if `zig` is in your PATH
      --zig_exe_path = '/path/to/zig_executable'
    }
  }
}
