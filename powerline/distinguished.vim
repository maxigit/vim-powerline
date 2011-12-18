function! Stl_GetMode() " {{{
	let ret = mode()

	let ret = substitute(ret, '', '^V', 'g')

	return ret
endfunction " }}}
function! Stl_GetBranch(branch_symbol) " {{{
	let ret = fugitive#statusline()

	let ret = substitute(ret, 'GIT(\([a-z0-9\-_\./:]\+\))', ' '. a:branch_symbol .' \1 ', 'gi')

	return ret
endfunction " }}}
function! Stl_GetSyntaxErrors(line_symbol) " {{{
	if ! exists('g:syntastic_stl_format')
		" Syntastic hasn't been loaded yet
		return ''
	endif

	" Temporarily change syntastic output format
	let old_stl_format = g:syntastic_stl_format
	let g:syntastic_stl_format = '╱╱╱%E{ ERRORS (%e) '. a:line_symbol .' %fe }%W{ WARNINGS (%w) '. a:line_symbol .' %fw }╱╱╱'

	let ret = SyntasticStatuslineFlag()

	let g:syntastic_stl_format = old_stl_format

	return ret
endfunction " }}}
function! Stl_GetCurrentFunction() " {{{
	return cfi#format(' %s', '')
endfunction " }}}
function! Stl_GetCommandTLine() " {{{
	let line = getline('.')

	" Trim whitespace from current line
	let line = substitute(line, '\v^\>\s+|\s+$', '', 'g')

	return line
endfunction " }}}

function Stl_GetGitName()
  if exists("b:git_dir")
    return substitute(b:git_dir, '.\{-}\([^/]\+\)/\.git$', '\1', '')
  else
    return ""
  end
endfunction
function Stl_GetRelativeDir()
    let bufname = expand('%:p:h')
    let curdir = glob(getcwd())
  if exists("b:git_dir")
    let git_dir = Stl_GetGitName()
    let bufname = substitute(bufname, git_dir, '['.git_dir.']','') 
    let curdir2 = substitute(curdir, git_dir.".*", '\\['.git_dir.'\\]','') 
    if curdir2 != curdir
      " current directory include git directory
    let bufname = substitute(bufname, "^".curdir2, '['.git_dir.']','') 
  end
  end
    "suppress current dir
    let bufname = substitute(bufname, "^".curdir, './','') 
    "suppress git root
    return simplify(substitute(bufname, '^'.$HOME, '~', ""))

endfunction
