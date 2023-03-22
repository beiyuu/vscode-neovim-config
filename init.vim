let g:mapleader = ","

imap jj <esc>

nmap <leader>c <c-w>c
nmap <leader>t gt
nmap <leader>r gT
nmap <leader><space> :w<cr>

if system('uname -a | egrep [Mm]icrosoft') != ''
  vmap <leader>y :call VSCodeNotify('editor.action.clipboardCopyAction')<CR>
  nmap <leader>p :call VSCodeNotify('editor.action.clipboardPasteAction')<CR>
else
  vmap <leader>y "+y
  nmap <leader>p "+p
endif

nnoremap <leader>e :call VSCodeNotify('workbench.view.explorer')<CR>


"" Folding
nnoremap zc :call VSCodeNotify('editor.fold')<CR>
nnoremap zo :call VSCodeNotify('editor.unfold')<CR>
nnoremap zO :call VSCodeNotify('editor.unfoldAll')<CR>
nnoremap z1 <Cmd>call VSCodeNotify('editor.foldLevel1')<CR>
nnoremap z2 <Cmd>call VSCodeNotify('editor.foldLevel2')<CR>
nnoremap z3 <Cmd>call VSCodeNotify('editor.foldLevel3')<CR>

function! MoveCursor(direction) abort
	if(reg_recording() == '' && reg_executing() == '')
		return 'g'.a:direction
	else
		return a:direction
	endif
endfunction

nmap <expr> j MoveCursor('j')
nmap <expr> k MoveCursor('k')

call plug#begin('~/.config/nvim/plugged')
  Plug 'ggandor/leap.nvim'
call plug#end()

lua require('leap').add_default_mappings()

"" enable key repeating in vscode of MacOS
"" defaults write com.microsoft.VSCode ApplePressAndHoldEnabled -bool true
