-- vim.api.nvim_create_autocmd('FileType', {
--   pattern = 'org',
--   callback = function()
--     vim.api.nvim_set_hl(0, 'Folded', {})
--     vim.api.nvim_set_hl(0, '@org.agenda.scheduled', { fg = '#c0caf5' })
--   end,
-- })
-- , guifg = '#e6bd83'

vim.api.nvim_set_hl(0, 'Folded', {})
vim.api.nvim_set_hl(0, '@org.agenda.scheduled', { fg = '#c0caf5' })
vim.api.nvim_set_hl(0, '@org.drawer', { fg = '#565f89' })
vim.api.nvim_set_hl(0, '@org.directive', { fg = '#2ac3de' })
--   pattern = '*',
--   group = 'orgmode_nvim',
--   callback = function()
--     vim.api.nvim_set_hl(0, 'Folded', {})
--     vim.api.nvim_set_hl(0, '@org.agenda.scheduled', { fg = '#c0caf5' })
--   end,
-- })
