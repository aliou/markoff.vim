" markoff.vim - Open your files in Markoff.
" Maintainer:   Aliou Diallo <https://aliou.me>
" Version:      1.0
"
if exists('g:loaded_markoff') || &cp
  finish
endif
let g:loaded_markoff = 1

" Set the application path if it is not custom.
if !exists('g:markoff_application_path')
  let g:markoff_application_path = "/Applications/Markoff.app"
endif

function! s:Markoff(...)
  if a:0 < 1
    let file = "%"
  else
    let file = a:1
  endif

  execute "!open -a " g:markoff_application_path . " " . file
endfunction

command! -nargs=? -complete=file Markoff call s:Markoff(<f-args>)
