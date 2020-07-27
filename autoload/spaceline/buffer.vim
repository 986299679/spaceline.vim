" =============================================================================
" Filename: spaceline.vim
" Author: taigacute
" URL: https://github.com/taigacute/spaceline.vim
" License: MIT License
" =============================================================================

function! spaceline#buffer#buffer() abort
    return spaceline#utils#line_is_lean() || spaceline#utils#line_is_plain() ? toupper(&filetype) : s:buffer_number()
endfunction

function! s:buffer_number()
  let bfnumber = s:get_buffer_number()
  let numberlist = [ ' ',' ',' ',' ', ' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ' ]
  if bfnumber == 0
    return ''
  endif
  return join([' ',numberlist[bfnumber]])
endfunction

function! s:get_buffer_number()
  let i = 0
  for nr in filter(range(1, bufnr('$')), 'bufexists(v:val) && buflisted(v:val)')
    let i += 1
    if nr == bufnr('')
      return i
    endif
  endfor
  return ''
endfunction

