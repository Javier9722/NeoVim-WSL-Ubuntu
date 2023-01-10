local status, osc = pcall(require, "osc52")
local keymap = vim.keymap

if (not status) then return end

keymap.set('n', '<leader>c', osc.copy_operator, { expr = true })
keymap.set('n', '<leader>cc', '<leader>c_', { remap = true })
keymap.set('x', '<C-c>', osc.copy_visual)
