local go = require('go')

go.setup({
  fillstruct = 'gopls', -- can be nil (use fillstruct, slower) and gopls
  gofmt = 'gofumpt', -- gofmt cmd,
  max_line_len = 120, -- max line length in goline format
  icons = { breakpoint = '🧘', currentpos = '🏃' }, -- setup to `false` to disable icons setup
  lsp_diag_virtual_text = { space = 0, prefix = '🦊' },
  dap_debug_gui = true, -- set to true to enable dap gui, highly recommand
  dap_debug_vt = true, -- set to true to enable dap virtual text
  textobjects = true, -- enable default text jobects through treesittter-text-objects
  test_runner = 'richgo', -- richgo, go test, richgo, dlv, ginkgo
  run_in_floaterm = true, -- set to true to run in float window.
})
