" =============================================================================
" Filename: spaceline.vim
" Author: taigacute
" URL: https://github.com/taigacute/spaceline.vim
" License: MIT License
" =============================================================================

function! spaceline#vimode#vim_mode()
  let l:mode=mode()
  if l:mode==#"n"
    return "N "
  elseif l:mode==?"v"
    return "V "
  elseif l:mode==#"i"
    return "I "
  elseif l:mode==#"R"
    return "R "
  elseif l:mode==?"s"
    return "S "
  elseif l:mode==#"t"
    return "T "
  elseif l:mode==#"c"
    return "C "
  elseif l:mode==#"!"
    return "SE"
  endif
endfunction
