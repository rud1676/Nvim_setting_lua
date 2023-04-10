vim.cmd('autocmd!')        -- remove auto cmd (after clear and start setting)
vim.scriptencoding = 'utf-8'
vim.opt.encoding = 'utf-8' -- user interface encoding
vim.opt.fileencoding = 'utf-8'

vim.wo.number = true                             -- display line num
vim.opt.title = true                             -- set title of ternimal window to file name
vim.opt.autoindent = true                        -- if you enter newline cursor automatically move indent level
vim.opt.hlsearch = true                          --  search highlighting
vim.opt.backup = false                           -- not use backup
vim.opt.showcmd = true                           -- display last cmd after exit command mode
vim.opt.cmdheight = 1                            -- display cmd line height
vim.opt.laststatus = 2                           -- 2 is alway show bottom status
vim.opt.expandtab = true                         -- change tab to sevral space
vim.opt.scrolloff = 10                           -- keep screen number below and above

vim.opt.backupskip = '/tmp/*,/private/tmp/*'     -- skip backup when file locate "/tmp/*" and "/private/tmp/*"
vim.opt.icm = 'split'                            -- method to enter Non ASCII character
vim.opt.ignorecase = true                        -- when search for text
vim.opt.smarttab = true                          -- when press tab-key , based on the existing indentation of the current line.
vim.opt.breakindent = true                       -- whether vim adds extra indentation to wrapped lines of text.
vim.opt.shiftwidth = 2                           -- '>>' '<<' press set line
vim.opt.tabstop = 2                              -- control tab the number of space
vim.opt.ai = true                                -- Auto indent when press 'enter'
vim.opt.si = true                                -- Smart indent based space lever like '{}'
vim.opt.wrap = true                              -- if text line is very long to fit within current monitor width, fit or not
vim.opt.mouse = ''                               -- set no use mouse in vim
vim.opt.backspace =
'start,eol,indent'                               --if press 'backspace' when position beginning-line, move to end of previous line ,cuntinue delete
vim.opt.path:append { '**' }                     -- Finding files - Search down into subfolders
vim.opt.wildignore:append { '*/node_modules/*' } -- ignore subfolders 'node_modules'

-- Turn off paste mode when leaving insert
-- nopaste is set pastemode off -> This will disable certain features like autoindenting and mappings, which can prevent unintended side effects while pasting.
vim.api.nvim_create_autocmd("InsertLeave", {
  pattern = '*',
  command = "set nopaste"
})

-- Add asterisks in block comments
-- create insert a closing bracket or quote
vim.opt.formatoptions:append { 'r' }
