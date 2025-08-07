-- Remap for dealing with word wrap and adding jumps to the jumplist.
vim.keymap.set('n', 'j', [[(v:count > 1 ? 'm`' . v:count : 'g') . 'j']], { expr = true })
vim.keymap.set('n', 'k', [[(v:count > 1 ? 'm`' . v:count : 'g') . 'k']], { expr = true })

-- Keeping the cursor centered.
vim.keymap.set('n', '<C-d>', '<C-d>zz', { desc = 'Scroll downwards' })
vim.keymap.set('n', '<C-u>', '<C-u>zz', { desc = 'Scroll upwards' })

--  See `:help hlsearch`
vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')
-- Diagnostic keymaps
vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostic [Q]uickfix list' })

vim.keymap.set('t', '<Esc><Esc>', '<C-\\><C-n>', { desc = 'Exit terminal mode' })

--  See `:help wincmd` for a list of all window commands
vim.keymap.set('n', '<C-h>', '<C-w><C-h>', { desc = 'Move focus to the left window' })
vim.keymap.set('n', '<C-l>', '<C-w><C-l>', { desc = 'Move focus to the right window' })
vim.keymap.set('n', '<C-j>', '<C-w><C-j>', { desc = 'Move focus to the lower window' })
vim.keymap.set('n', '<C-k>', '<C-w><C-k>', { desc = 'Move focus to the upper window' })

local builtin = require 'telescope.builtin'
local teleorg = require('telescope').extensions.orgmode
-- vim.keymap.set('n', '<c-space', require('orgmode').action('org.todo'))
-- orgmode
vim.keymap.set('n', '<leader>to', '<cmd>Org indent_mode<cr><cmd>Org indent_mode<cr>', { desc = 'org [R]efile' })

vim.keymap.set('n', '<leader>oR', teleorg.refile_heading, { desc = 'org [R]efile' })

vim.keymap.set('n', '<leader>OO', function()
  teleorg.search_headings { mode = 'orgfiles' }
end, { desc = '[oo] org search headlines' })

vim.keymap.set('n', '<leader>oL', teleorg.insert_link)

-- Shortcut for searching orgmode files
vim.keymap.set('n', '<leader>sof', function()
  builtin.find_files { cwd = '~/org/' }
end, { desc = '[S]earch [o]rgmode [f]iles' })

-- grep orgmode files
vim.keymap.set('n', '<leader>sO', function()
  builtin.live_grep {
    cwd = '~/org/',
    prompt_title = 'Live Grep in orgmode files',
  }
end, { desc = '[S]earch [O] in Orgmode Files' })

vim.keymap.set('n', '<Leader>soh', function()
  teleorg.search_headings { only_current_file = true }
end, { desc = 'Find headlines in current file' })

-- Other Telescope (dir)
vim.keymap.set('n', '<leader>scg', '<cmd>Telescope dir live_grep<CR>', { desc = '[g] grep in dir', noremap = true, silent = true })

vim.keymap.set('n', '<leader>scf', '<cmd>Telescope dir find_files<CR>', { desc = '[f] Find in dir', noremap = true, silent = true })

-- BUFFER / FILECOMMANDS
vim.keymap.set('n', '<leader>pw', '<cmd>w<cr>', { desc = 'write buffer' })
vim.keymap.set('n', '<leader>pe', '<cmd>Ex<cr>', { desc = 'explore' })
vim.keymap.set('n', '<leader>pq', '<cmd>bd<cr>', { desc = 'delete buffer' })
vim.keymap.set('n', '<leader>pr', '<cmd>w | e<cr>', { desc = 'reload buffer' })
