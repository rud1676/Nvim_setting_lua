local status, packer = pcall(require, 'packer')

if (not status) then
  print("Packer is not installed")
  return
end

vim.cmd [[packadd packer.nvim]]

packer.startup(function(use)
  use 'wbthomason/packer.nvim' -- Package manager for lua
  use 'nvim-lua/plenary.nvim'  -- Common utillity for Using lua Plugin
  use 'neovim/nvim-lspconfig'  -- LSP
  use {
    'svrana/neosolarized.nvim',
    requires = { 'tjdevries/colorbuddy.nvim' }
  }
  -- Theme
  use 'kyazdani42/nvim-web-devicons' -- File icons
  use 'L3MON4D3/LuaSnip'             -- Snippet
  use 'hoob3rt/lualine.nvim'         -- StatusLine
  use 'onsails/lspkind-nvim'         -- vscode-like pictograms
  use 'hrsh7th/cmp-buffer'           -- nvim-cmp source for buffer words
  use 'hrsh7th/cmp-nvim-lsp'         -- nvim-cmp source for neovim's built-in LSP
  use 'hrsh7th/nvim-cmp'             -- Completion

  use {
    'nvim-treesitter/nvim-treesitter',
    run = ':TSUpdate'
  }
  -- Explain: TSUpdate command to update the syntax parsers for supported languages.

  use 'windwp/nvim-autopairs'
  -- Explain:Neovim that enables automatic closing of quotes, parentheses, brackets, and other pairs while typing in insert mode.
  use 'windwp/nvim-ts-autotag'
  -- Explain:plugin is an autopairing plugin for HTML, JSX, and TSX files in Neovim.

  use 'glepnir/lspsaga.nvim' -- plugin/lspsaga.rc.lua
  -- Explain: enhances the LSP (Language Server Protocol) experience by providing better visual feedback and UI components
  -- CHEETSHEET
  -- <Ctrl+j> : next diagnostics
  -- gd :  find Ref, Def
  -- gp :  find Def
  -- gr :  rename

  use 'jose-elias-alvarez/null-ls.nvim' -- after/null-ls.rc.lua
  -- Explain:Use Neovim as a language server to inject LSP diagnostics, code actions, and more via Lua
  -- for example, Some LSP is not provide For 'formater'. null-ls provide basic stuff
  -- So, Usally this work with Pretter
  use 'MunifTanjim/prettier.nvim' -- after/prettier.rc.lua
  -- Explain:Prettier plugin for neovim's built-in
  -- Now: js,ts,css,json

  use 'nvim-telescope/telescope.nvim'
  use 'nvim-telescope/telescope-file-browser.nvim' -- after/telescope.rc.lua
  -- Explain:fuzzy finder plugin for Neovim that allows users to search for files, buffers, and more.
  -- CHEETSHEET
  -- 'Normal:;f' => open file_browser -> input value find file_name
  -- 'Normal:;r' => open file_browser -> input value work 'Grep'
  -- 'Normal:;t' => open tag_help
  -- 'Normal:;d' => open diagnostics list in project
  -- 'Normal:sf' => open file_browser
  -- 'Normal:;;' => open last_window
  -- 'Normal:\\' => open buffer -> history of openfile or tag
  -- 'InWindow:<Ctrl+w>' => input_value clear
  -- 'InWindow:<N>' => Create new file in current dir
  -- 'InWindow:<D>' => Remove selected file
  -- 'InWindow(open with 'sf'):<h>' => go to parrent dir
  -- 'InWindow(open with 'sf'):</>' => search mode

  use 'lewis6991/gitsigns.nvim' -- after/gitsigns.rc.lua
  -- Explain: displays Git information in the sign column, which is the space to the left of the text area.

  use 'akinsho/nvim-bufferline.lua' -- after/bufferline.rc.lua
  -- Explain: provide buffer status for displaying open buffers
  -- Integrated telescope plugin
  -- CHEETSHETT
  -- '<Tab>' => change next buffer
  -- '<Shift +Tab>' => change previous buffer

  use 'dinhhuy258/git.nvim' -- after/git.rc.lua
  -- Explain: ckeck git blame and repos
  -- CHEETSHETT
  -- '\gb' => show blame current file line by line
  -- '\go' => open browser and go to git repostory
end)
