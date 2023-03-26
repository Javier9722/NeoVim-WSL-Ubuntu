local status, bufferline = pcall(require, "bufferline")
if (not status) then return end

bufferline.setup({
  options = {
    mode = "tabs",
    separator_style = 'slant',
    always_show_bufferline = false,
    show_buffer_close_icons = false,
    show_close_icon = false,
    color_icons = true
  },
  highlights = {
    separator = {
      fg = '#002b36',
      bg = '#002b36',
    },
    separator_selected = {
      fg = '#002b36',
      bg = '#073642'
    },
    duplicate = {
      bg = '#002b36',
    },
    duplicate_selected = {
      bg = '#073642',
    },
    modified = {
      bg = '#002b36',
    },
    modified_selected = {
      bg = '#073642',
    },
    background = {
      fg = '#657b83',
      bg = '#002b36'
    },
    buffer_selected = {
      fg = '#fdf6e3',
      bold = true,
      bg = '#073642'
    },
    fill = {
      bg = '#002b36'
    }
  },
})

vim.keymap.set('n', '<Tab>', '<Cmd>BufferLineCycleNext<CR>', {})
vim.keymap.set('n', '<S-Tab>', '<Cmd>BufferLineCyclePrev<CR>', {})
