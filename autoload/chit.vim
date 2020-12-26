function! chit#Setup()
  let current_theme = system('chit get-current-theme')[:-2]
  let CHIT_VIM_BEFORE = system('chit get-theme-variable ' . current_theme . ' CHIT_VIM_BEFORE')[:-2]
  let CHIT_VIM_COLORSCHEME = system('chit get-theme-variable ' . current_theme . ' CHIT_VIM_COLORSCHEME')[:-2]

  execute CHIT_VIM_BEFORE
  execute 'colorscheme ' . CHIT_VIM_COLORSCHEME
endfunction


function! chit#SetTheme(theme_name)
  let out = system('chit set-theme ' . a:theme_name . ' &')
  call chit#Setup()
endfunction


function! chit#ThemeComplete(base, ...) abort
  return split(system('chit list-themes'))
endfunction
