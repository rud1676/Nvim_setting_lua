local status, autotag = pcall(require, 'nvim-ts-autotag')
if not status then
  print("fail ts-autotag load")
end

autotag.setup {}
