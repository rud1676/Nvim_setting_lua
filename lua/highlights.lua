vim.opt.cursorline = true    --show current cursor line
vim.opt.termguicolors = true --use true color -> true color is wide color of standard 257 color in vim
vim.opt.winblend = 0         -- option controls the transparency of floating windows.(like lsp command gp window)

-- when you're typing file names or directory paths in Vim's command-line.
-- p - Show the preview window when multiple matches are found
-- u - Auto-insert characters that can complete the match
-- m - Show matches in a pop-up menu
vim.opt.wildoptions = 'pum'
-- set transparency popup
vim.opt.pumblend = 3
vim.opt.background = 'dark'
