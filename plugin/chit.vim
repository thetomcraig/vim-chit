call chit#Setup()


if exists(':ChitSetTheme') != 2
  exe 'command! -bar -bang -range=-1 -nargs=1 -complete=customlist,chit#ThemeComplete ChitSetTheme exe chit#SetTheme(<q-args>)'
endif


function! ChitSetTheme(theme_name) abort
  return call('chit#SetTheme', a:theme_name)
endfunction
