let s:save_cpo = &cpo
set cpo&vim


let s:data = {}


function! s:repository_name(repository)
	return fnamemodify(a:repository, ':t')
endfunction

function! plug_preset#data#get(repository)
  let name = s:repository_name(a:repository)
	return get(s:data, name, {})
endfunction


" J {{{
let s:data['jedi-vim'] = {
			\ 	'for': 'python'
			\ }
" }}}
" P {{{
let s:data['previm'] = {
			\ 	'on': 'PrevimOpen'
			\ }
" }}}
" R {{{
let s:data['restart.vim'] = {
			\ 	'on': 'Restart'
			\ }
" }}}
" T {{{
let s:data['thumbnail.vim'] = {
			\ 	'on': 'Thumbnail'
			\ }
" }}}
" V {{{
let s:data['vimproc'] = {
			\ 	'do': 'make'
			\ }
let s:data['vim-qfreplace'] = {
			\ 	'for': ['qf', 'unite']
			\ }
let s:data['vim-ref'] = {
			\ 	'on': 'Ref'
			\ }
" }}}
" W {{{
let s:data['w3m.vim'] = {
			\ 	'on': ['W3m', 'W3mTab', 'W3mSplit', 'W3mVSplit']
			\ }
" }}}


let &cpo = s:save_cpo
