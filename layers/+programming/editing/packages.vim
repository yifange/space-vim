MP 'tpope/vim-surround'
MP 'pelodelfuego/vim-swoop'
MP 'terryma/vim-multiple-cursors'

MP 'scrooloose/nerdcommenter',        { 'on': '<Plug>NERDCommenterToggle' }

" <CR> mapping not working
" MP 'jiangmiao/auto-pairs', { 'on': [] }

" augroup spacevimAutoPairs
  " autocmd!
  " autocmd CursorHold,CursorHoldI,InsertEnter * call plug#load('auto-pairs') | call AutoPairsTryInit() | autocmd! spacevimAutoPairs
" augroup END
