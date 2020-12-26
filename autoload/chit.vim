function! chit#Setup()
  let current_theme = system('chit get-current-theme')[:-2]
  let CHIT_VIM_BEFORE = system('chit get-theme-variable ' . current_theme . ' vim_before')[:-2]
  let CHIT_VIM_COLORSCHEME = system('chit get-theme-variable ' . current_theme . ' vim_colorscheme')[:-2]

  execute CHIT_VIM_BEFORE
  execute 'colorscheme ' . CHIT_VIM_COLORSCHEME
endfunction

function! chit#SetTheme(theme_name)
  silent execute "!chit set-theme" . a:theme_name
  call chit#Setup()
endfunction
