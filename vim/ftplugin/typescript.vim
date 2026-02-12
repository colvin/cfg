setlocal ts=2 sts=2 sw=2 expandtab
let g:ale_fix_on_save=1
let g:ale_fixers = {'typescript': ['eslint', 'prettier']}
let g:ale_linters = {'typescript': ['eslint', 'tsserver']}

" Undo the 'italic' setting to fix the highlighting
highlight Comment cterm=NONE
