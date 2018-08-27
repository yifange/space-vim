let g:ycm_global_ycm_extra_conf = fnamemodify(expand('<sfile>'), ':h') . '/global_conf.py'
let g:ycm_filetype_blacklist = {'cpp': 1, 'c': 1}

Glug youcompleteme-google

nnoremap <leader>jd :YcmCompleter GoToDefinition<CR>
if !exists("g:ycm_semantic_triggers")
   let g:ycm_semantic_triggers = {}
endif
let g:ycm_semantic_triggers['typescript'] = ['.']
