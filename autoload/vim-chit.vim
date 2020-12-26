function! chit#Setup()
  let current_theme=system('chit get-current-theme')
  let $CHIT_VIM_BEFORE = system("chit get-theme-variable " . current_theme . " vim_before")
  let $CHIT_VIM_COLORSCHEME = system("chit get-theme-variable " . current_theme . " vim_colorscheme")

  execute $CHIT_VIM_BEFORE
  execute "colorscheme " . $CHIT_VIM_COLORSCHEME
endfunction

function! chit#SetTheme(theme_name)
  silent execute "!chit set-theme" . a:theme_name
  call chit#Setup()
endfunction
