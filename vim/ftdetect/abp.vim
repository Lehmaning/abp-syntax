function! s:DetectABP()
  if getline(1) =~ '\c^\s*\[\s*adblock\s*\(plus\s*\(\d\+\(\.\d\+\)*\s*\)\?\)\?]\s*$'
    set filetype=abp
  elseif getline(1) =~ '\c^\s*\[\s*auto\s*\(proxy\s*\(\d\+\(\.\d\+\)*\s*\)\?\)\?]\s*$'
    set filetype=abp
  endif
endfunction
au BufNewFile,BufRead *.txt call s:DetectABP()
