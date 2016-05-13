let s:save_cpo = &cpo
set cpo&vim


function! plug_preset#init()
	command! -nargs=1 PresetPlug call plug_preset#plug(<args>)
endfunction

function! plug_preset#options(repository)
	let package = plug_preset#data#get(a:repository)
	return empty(package) ? {} : package
endfunction

function! plug_preset#plug(repository)
	let opts = plug_preset#options(a:repository)
	let args = ['''' . a:repository . '''']
	if !empty(opts)
		call add(args, string(opts))
	endif

	execute printf('Plug %s', join(args, ', '))
endfunction


let &cpo = s:save_cpo
