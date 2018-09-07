function! spacevim#vim#plug#download(plug_path) abort
  echo '==> Downloading vim-plug ......'
  execute '!curl -fLo' a:plug_path '--create-dirs'
        \   'https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
endfunction

" https://github.com/junegunn/vim-plug/wiki/extra#automatically-install-missing-plugins-on-startup
function! spacevim#vim#plug#check(...) abort
  let l:msg = '[space-vim] Some layers need to install the missing plugins.'
  if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
    if a:0 == 1
      if s:ask(l:msg)
        silent PlugInstall --sync | q
      endif
    else
      echom l:msg
      PlugInstall --sync | q
    endif
  endif
endfunction

function! s:ask(message) abort
  call inputsave()
  echohl WarningMsg
  let answer = input(a:message.(' (y/N): '))
  echohl None
  call inputrestore()
  echo "\r"
  return (answer =~? '^y') ? 1 : 0
endfunction
