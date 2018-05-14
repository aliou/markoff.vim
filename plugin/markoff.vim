" markoff.vim - Open your files in Markoff.
" Maintainer:   Aliou Diallo <https://aliou.me>
" Version:      1.0
"
if exists('g:loaded_markoff') || &compatible
  finish
endif
let g:loaded_markoff = 1

" Set the application path if it is not custom.
if !exists('g:markoff_application_path')
  let g:markoff_application_path = '/Applications/Markoff.app'
endif

function! s:check_application()
  if !isdirectory(g:markoff_application_path) || empty(g:markoff_application_path)
    throw 'markoff.vim: Application path is wrong or empty. Is Markoff installed?'
  endif
endfunction

function! s:run(filepath)
  let l:command = 'open -a ' . g:markoff_application_path . ' ' . a:filepath
  if has('job')
    call system(l:command)
  else
    call job_start(['/bin/sh', '-c', l:command])
  endif
endfunction

function! s:open(...)
  let l:err = s:check_application()
  let l:file = get(a:000, 1, expand('%'))

  call s:run(l:file)
endfunction

command! -nargs=? -complete=file Markoff call s:open(<f-args>)
