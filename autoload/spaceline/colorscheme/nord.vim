" =============================================================================
" Filename: spaceline.vim
" Author: GenmZy_
" URL: https://github.com/taigacute/spaceline.vim
" License: MIT License
" =============================================================================
function! spaceline#colorscheme#nord#nord()
  let s:slc={}
  let s:slc.yellow = ['88C0D0', 214]
  let s:slc.navy = ['3B4252', 237]
  let s:slc.lightgray= ['D8DEE9', 188]
  let s:slc.purple = ['616E88', 261]
  let s:slc.orange  = ['ff8800', 208]
  let s:slc.red = ['ec5f67', 203]
  let s:slc.blue = ['36a3d9', 32]
  let s:slc.lightblue = ['a8a8bf', 225]
  let s:slc.teal = ['434C5E', 6]
  let s:slc.green = ['A3BE8C', 148]
  let s:slc.gray = ['3c3836', 237]
  let s:slc.darknavy=[]

  call spaceline#colors#match_background_color(s:slc.darknavy)

  let l:mode=mode()
  if g:seperate_style  == 'slant'
      call spaceline#colors#spaceline_hl('HomeMode', s:slc, 'teal', 'yellow')
      call spaceline#colors#spaceline_hl('HomeModeRight',s:slc,  'yellow', 'purple')
      call spaceline#colors#spaceline_hl('FileNameRight',s:slc, 'navy','purple')
      call spaceline#colors#spaceline_hl('FileSizeRight',s:slc, 'purple','navy')
      call spaceline#colors#spaceline_hl('GitLeft',s:slc,  'purple',  'navy')
      call spaceline#colors#spaceline_hl('GitRight',s:slc,  'purple',  'darknavy')
      call spaceline#colors#spaceline_hl('InActiveHomeRight', s:slc, 'yellow', 'navy')
      call spaceline#colors#spaceline_hl('ShortRight', s:slc, 'yellow', 'navy')
  elseif g:seperate_style  == 'slant-cons'
    if l:mode==#"n"
      call spaceline#colors#spaceline_hl('HomeMode', s:slc, 'teal', 'yellow')
      call spaceline#colors#spaceline_hl('HomeModeRight',s:slc,  'yellow', 'purple')
    elseif l:mode==#"i"
      call spaceline#colors#spaceline_hl('HomeMode', s:slc, 'navy', 'green')
      call spaceline#colors#spaceline_hl('HomeModeRight',s:slc,  'green', 'purple')
    endif

    call spaceline#colors#spaceline_hl('FileNameRight',s:slc, 'purple','navy')
    call spaceline#colors#spaceline_hl('FileSizeRight',s:slc, 'purple','navy')
    call spaceline#colors#spaceline_hl('GitLeft',s:slc,  'navy',  'purple')
    call spaceline#colors#spaceline_hl('GitRight',s:slc,  'purple',  'darknavy')
    call spaceline#colors#spaceline_hl('InActiveHomeRight', s:slc, 'yellow', 'navy')
    call spaceline#colors#spaceline_hl('ShortRight', s:slc, 'yellow', 'navy')
  elseif g:seperate_style  == 'slant-fade'
    call spaceline#colors#spaceline_hl('HomeMode', s:slc, 'teal', 'yellow')
    call spaceline#colors#spaceline_hl('HomeModeRight',s:slc,  'yellow', 'purple')
    call spaceline#colors#spaceline_hl('FileNameRight',s:slc, 'navy','purple')
    call spaceline#colors#spaceline_hl('FileSizeRight',s:slc, 'purple','navy')
    call spaceline#colors#spaceline_hl('GitLeft',s:slc,  'navy',  'purple')
    call spaceline#colors#spaceline_hl('GitRight',s:slc,  'purple','darknavy')
    call spaceline#colors#spaceline_hl('InActiveHomeRight', s:slc, 'yellow', 'navy')
    call spaceline#colors#spaceline_hl('ShortRight', s:slc, 'yellow', 'navy')
  elseif g:seperate_style  == 'arrow-fade'
    call spaceline#colors#spaceline_hl('HomeMode', s:slc, 'teal', 'yellow')
    call spaceline#colors#spaceline_hl('HomeModeRight',s:slc,  'yellow', 'purple')
    call spaceline#colors#spaceline_hl('FileNameRight',s:slc, 'purple','navy')
    call spaceline#colors#spaceline_hl('FileSizeRight',s:slc, 'purple','navy')
    call spaceline#colors#spaceline_hl('GitLeft',s:slc,  'navy',  'purple')
    call spaceline#colors#spaceline_hl('GitRight',s:slc,  'purple',  'darknavy')
    call spaceline#colors#spaceline_hl('InActiveHomeRight', s:slc, 'yellow', 'navy')
    call spaceline#colors#spaceline_hl('ShortRight', s:slc, 'yellow', 'navy')
  elseif g:seperate_style  == 'curve'
    call spaceline#colors#spaceline_hl('HomeMode', s:slc, 'teal', 'yellow')
    call spaceline#colors#spaceline_hl('HomeModeRight',s:slc,  'purple', 'yellow')
    call spaceline#colors#spaceline_hl('FileNameRight',s:slc, 'purple','navy')
    call spaceline#colors#spaceline_hl('FileSizeRight',s:slc, 'navy','purple')
    call spaceline#colors#spaceline_hl('GitLeft',s:slc,  'navy',  'purple')
    call spaceline#colors#spaceline_hl('GitRight',s:slc,  'purple',  'darknavy')
    call spaceline#colors#spaceline_hl('InActiveHomeRight', s:slc, 'navy', 'yellow')
    call spaceline#colors#spaceline_hl('ShortRight', s:slc, 'navy', 'yellow')
  else
    call spaceline#colors#spaceline_hl('HomeMode', s:slc, 'teal', 'yellow')
    call spaceline#colors#spaceline_hl('HomeModeRight',s:slc,  'purple', 'yellow')
    call spaceline#colors#spaceline_hl('FileNameRight',s:slc, 'purple','navy')
    call spaceline#colors#spaceline_hl('FileSizeRight',s:slc, 'navy','purple')
    call spaceline#colors#spaceline_hl('GitLeft',s:slc,  'navy',  'purple')
    call spaceline#colors#spaceline_hl('GitRight',s:slc,  'navy',  'purple')
    call spaceline#colors#spaceline_hl('InActiveHomeRight', s:slc, 'navy', 'yellow')
    call spaceline#colors#spaceline_hl('ShortRight', s:slc, 'navy', 'yellow')
  endif

  call spaceline#colors#spaceline_hl('InActiveFilename', s:slc, 'lightgray', 'navy')
  call spaceline#colors#spaceline_hl('FileName', s:slc, 'lightgray', 'purple')
  call spaceline#colors#spaceline_hl('Filesize', s:slc, 'green', 'navy')
  call spaceline#colors#spaceline_hl('HeartSymbol', s:slc, 'orange',  'navy')
  call spaceline#colors#spaceline_hl('CocError',s:slc,  'red',  'navy')
  call spaceline#colors#spaceline_hl('CocWarn',s:slc,  'blue',  'navy')
  call spaceline#colors#spaceline_hl('GitInfo',s:slc,  'lightgray',  'purple')
  call spaceline#colors#spaceline_hl('GitAdd',s:slc,  'green',  'purple')
  call spaceline#colors#spaceline_hl('GitRemove',s:slc,  'red',  'purple')
  call spaceline#colors#spaceline_hl('GitModified',s:slc,  'orange',  'purple')
  call spaceline#colors#spaceline_hl('CocBar',s:slc,  'teal',  'darknavy')
  call spaceline#colors#spaceline_hl('VistaNearest',s:slc,  'teal',  'darknavy')
  call spaceline#colors#spaceline_hl('LineInfoLeft',s:slc,  'purple',  'darknavy')
  if g:seperate_style  ==? 'slant' || g:seperate_style ==? 'arrow' || g:seperate_style ==? 'curve'
    call spaceline#colors#spaceline_hl('LineFormatRight',s:slc,  'purple',  'navy')
  else
    call spaceline#colors#spaceline_hl('LineFormatRight',s:slc,  'navy',  'purple')
  endif
  call spaceline#colors#spaceline_hl('StatusEncod',s:slc,  'lightgray',  'purple')
  call spaceline#colors#spaceline_hl('StatusFileFormat',s:slc,  'lightgray',  'purple')
  call spaceline#colors#spaceline_hl('StatusLineinfo',s:slc,  'lightblue',  'navy')
  call spaceline#colors#spaceline_hl('EndSeperate',s:slc,  'yellow',  'purple')
  call spaceline#colors#spaceline_hl('emptySeperate1',s:slc,  'navy',  'darknavy')
endfunction
