local status, autopairs = pcall(require, 'nvim-autopairs')
if not status then
  print("autopair load fail!")
end

autopairs.setup {
  disable_filetype = { 'TelescopePrompt', 'vim' }
}
