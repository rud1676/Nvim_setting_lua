require('base')       --load base config
require('highlights') -- load hightlight setting
require('maps')       -- load keymap
require('plugins')    -- load plugin

local has = function(x)
  return vim.fn.has(x) == 1
end

local is_mac = has "macunix"
local is_win = has "win32"

-- load os config for my os
if is_mac then
  require('macos')
end
if is_win then
  require('windows')
end
