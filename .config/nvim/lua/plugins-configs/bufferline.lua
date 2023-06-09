require('bufferline').setup({
  options = {
    close_command = "bdelete! %d",       -- can be a string | function, see "Mouse actions"
    right_mouse_command = "bdelete! %d", -- can be a string | function, see "Mouse actions"
    tab_size = 30,
    diagnostics = 'nvim_lsp',
    diagnostics_indicator = function(count, level, diagnostics_dict)
      local s = " "
      for e, n in pairs(diagnostics_dict) do
        local sym = e == "error" and "  "
          or (e == "warning" and "  " or "  " )
        s = s .. n .. sym
      end
      return s
    end,
    offsets = {{ filetype = "NvimTree", text = "", separator = true }},
    separator_style = 'thick',
  }
})
