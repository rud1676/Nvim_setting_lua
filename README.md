## JKJ's NVIM Setting

tab은 space로 바꾸고 기존 4칸에서 2칸.

## Setting log

04.10 => for typescript, react, javascript setting

## keymapping

```lua
keymap.set('n','<C-a>', 'gg<S-v>G')

-- New tab
keymap.set('n', 'te', ':tabedit<Return>', {silent=true})
-- Split window
keymap.set('n','ss',':split<Return><C-w>w', {silent=true})
keymap.set('n','sv',':vsplit<Return><C-w>w', {silent=true})

-- Move window
keymap.set('n', '<Space>', '<C-w>w')
keymap.set('','sh','<C-w>h')
keymap.set('','sk','<C-w>k')
keymap.set('','sj','<C-w>j')
keymap.set('','sl','<C-w>l')
```

ss: split 세로
sv: split 가로 
te: new tab
\<Space\>: 분활 화면 이동


## Plugin CheetSheet

어떤 플러그인의 키맵핑인지는 plugin.lua를 참고
|Mapping|Action|
|--|--|
|<Ctrl+j>|next diagnostics|
|gd|find Ref, Def|
|gp|find Def|
|gr|rename tags|
|Normal:;f|open file_browser -> input value find file_name|
|Normal:;r|open file_browser -> input value work 'Grep'|
|Normal:;t|open tag_help|
|Normal:;d|open diagnostics list in project|
|Normal:sf|open file_browser|
|Normal:;;|open last_window|
|Normal:\\\\|open buffer -> history of openfile or tag|
|InWindow:<Ctrl+w>|input_value clear|
|InWindow:<N>|Create new file in current dir|
|InWindow:<D>|Remove selected file|
|InWindow(open with 'sf'):<h>|go to parrent dir|
|InWindow(open with 'sf'):</>|search mode|
|<Tab>|change next buffer|
|<Shift +Tab>|change previous buffer|
|\gb|show blame current file line by line|
|\go|open browser and go to git repostory|
