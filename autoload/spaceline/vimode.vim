" =============================================================================
" Filename: spaceline.vim
" Author: taigacute
" URL: https://github.com/taigacute/spaceline.vim
" License: MIT License
" =============================================================================

function! spaceline#vimode#vim_mode()
  let l:mode=mode()
  if l:mode==#"n"
    return " "
  elseif l:mode==?"v"
    return " "
  elseif l:mode==#"i"
    return " "
  elseif l:mode==#"R"
    return "גּ "
  elseif l:mode==?"s"
    return " "
  elseif l:mode==#"t"
    return "ﭨ "
  elseif l:mode==#"c"
    return "鬒 "
  elseif l:mode==#"!"
    return "SE"
  endif
endfunction
