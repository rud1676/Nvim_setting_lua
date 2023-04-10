local status, prettier = pcall(require, 'prettier')

if not status then
  print('prettier nvim fail load!!')
  return
end

prettier.setup {
  bin = 'prettierd',
  filetypes = {
    'css',
    'javascript',
    'javascriptreact',
    'typescript',
    'typescriptreact',
    'json',
    'sass',
    'less'
  }
}
