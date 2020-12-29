function! chit#Setup()
  let CHIT_VIM_BEFORE = system('chit get-theme-variable CHIT_VIM_BEFORE')[:-2]
  let CHIT_VIM_COLORSCHEME = system('chit get-theme-variable CHIT_VIM_COLORSCHEME')[:-2]

  " Remove extra quotes
  let CHIT_VIM_BEFORE = Chomp(CHIT_VIM_BEFORE)
  " Then execute with string concatenation
  execute '' . CHIT_VIM_BEFORE
  execute 'colorscheme ' . CHIT_VIM_COLORSCHEME
endfunction


function! chit#SetTheme(theme_name)
  let out = system('chit set-theme ' . a:theme_name . ' 2>&1 /dev/null')
  call chit#Setup()
endfunction


function! chit#ThemeComplete(base, ...) abort
  return split(system('chit list-themes'))
endfunction

function! Chomp(string)
  " Chomp the string:
  "   Remove single quote from the beginning and end
  let s = a:string
  let s = substitute(s, "'$", '', '')
  let s = substitute(s, "^'", '', '')
  return s
endfunction
