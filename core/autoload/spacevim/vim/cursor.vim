" Credit: ALE, Snippets from ALE
" Also see http://vim.wikia.com/wiki/Get_shortened_messages_from_using_echomsg
function! spacevim#vim#cursor#TruncatedEcho(msg) abort
  let l:msg = a:msg
  " Change tabs to spaces.
  let l:msg = substitute(l:msg, "\t", ' ', 'g')
  " Remove any newlines in the message.
  let l:msg = substitute(l:msg, "\n", '', 'g')
  " We need to remember the setting for shortmess and reset it again.
  let l:shortmess_options = &l:shortmess
  try
      let l:cursor_position = getcurpos()

      " The message is truncated and saved to the history.
      setlocal shortmess+=T
      exec "norm! :echomsg l:msg\n"

      " Reset the cursor position if we moved off the end of the line.
      " Using :norm and :echomsg can move the cursor off the end of the
      " line.
      if l:cursor_position != getcurpos()
          call setpos('.', l:cursor_position)
      endif
  finally
      let &l:shortmess = l:shortmess_options
  endtry
endfunction
