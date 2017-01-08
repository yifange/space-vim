if LayerLoaded('leader-guide')

    call Source(g:spacevim_dir . g:spacevim_core_dir . '/core_keybindings.vim')
    call leaderGuide#register_prefix_descriptions(g:mapleader, 'g:lmap')
    nnoremap <silent> <leader> :<c-u>LeaderGuide g:mapleader<CR>
    vnoremap <silent> <leader> :<c-u>LeaderGuideVisual g:mapleader<CR>
endif
