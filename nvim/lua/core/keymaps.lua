vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

vim.opt.backspace = '2'
vim.opt.showcmd = true
vim.opt.laststatus = 2
vim.opt.autowrite = true
vim.opt.cursorline = false 
vim.opt.autoread = true


vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.shiftround = true
vim.opt.expandtab = true

vim.keymap.set('n','<leader>h',':nohlsearch<CR>')
vim.keymap.set('n','<leader>wv',':vsplit<Return><C-w>w',{silent=true})
vim.keymap.set('n','<leader>ws',':split<Return><C-w>w',{silent=true})
vim.keymap.set('n','<leader>wl','<C-w>l',{silent=true})
vim.keymap.set('n','<leader>wh','<C-w>h',{silent=true})
vim.keymap.set('n','<leader>wk','<C-w>k',{silent=true})
vim.keymap.set('n','<leader>wj','<C-w>j',{silent=true})
vim.keymap.set('n','<leader>wc','<C-w>c',{silent=true})

