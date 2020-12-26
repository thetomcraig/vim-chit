call chit#Setup()

function! ChitSetTheme(theme_name) abort
  return call('chit#SetTheme', a:theme_name)
endfunction
