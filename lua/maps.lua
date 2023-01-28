local keymap = vim.keymap

keymap.set('n', 'x', '"_x')

-- Increment/decrement
keymap.set('n', '+', '<C-a>')
keymap.set('n', '-', '<C-x>')

-- Delete a word backwards
keymap.set('n', 'dw', 'vb"_d')

-- Select all
keymap.set('n', '<C-a>', 'gg<S-v>G')

-- Save with root permission (not working for now)
--vim.api.nvim_create_user_command('W', 'w !sudo tee > /dev/null %', {})

-- New tab
keymap.set('n', 'te', ':tabedit')
-- Split window
keymap.set('n', 'sa', ':split<Return><C-w>w')
keymap.set('n', 'sd', ':vsplit<Return><C-w>w')
-- Move window
keymap.set('n', '<Space>', '<C-w>w')
keymap.set('', 'sh', '<C-w>h')
keymap.set('', 'sk', '<C-w>k')
keymap.set('', 'sj', '<C-w>j')
keymap.set('', 'sl', '<C-w>l')

-- Resize window
keymap.set('n', '<C-w><left>', '<C-w><')
keymap.set('n', '<C-w><right>', '<C-w>>')
keymap.set('n', '<C-w><up>', '<C-w>+')
keymap.set('n', '<C-w><down>', '<C-w>-')

------------------------------------------------------------
------------------------ by Rigel---------------------------
-- Select line by rigel :v
keymap.set('n', '<C-s>', '<Home>v<End>')

-- Duplicate line by rigel :v
keymap.set('n', '<A-down>', ':t.<CR>')
keymap.set('i', '<A-down>', '<Esc>:t.<CR>')

--ident line by rigel :v

--keymap.set('i', '<M-.>', '<Home><Tab>') -- obsoleto pero funciona xd
--keymap.set('i', '<M-,>', '<Home><C-d>') -- obsoleto pero funciona xd
--el por defecto funcionan de otra forma y con multilinea
-- pero en el modo normal
-- >> = para identar a la derecha (>5> - identa 5 lineas de la ubicacion para abajo a la derecha)
-- << = identa a la izquierda (<5< - identa 5 lineas de la ubicacion para abajo a la izquierda)

-- move line
keymap.set('i', '<A-j>', '<Esc>:m .+1<CR>==gi') -- move down
keymap.set('i', '<A-k>', '<Esc>:m .-2<CR>==gi') -- move up
keymap.set('n', '<A-j>', ':m .+1<CR>') -- move down
keymap.set('n', '<A-k>', ':m .-2<CR>') -- move up

-- open terminal
keymap.set('n', 'tr', ':terminal<CR>')
keymap.set('t', '<Esc>', '<C-Bslash><C-N>')

-- emmet keymap
vim.g.user_emmet_leader_key = '?'

-----more keymap by rigel in plugins docs------
-- lspsaga
-- lspconfig
