local status, icons = pcall(require, 'nvim-web-devicons')
if not status then
  print('fail web devicons load')
  return
end

icons.setup {
  override = {},
  default = true
}
