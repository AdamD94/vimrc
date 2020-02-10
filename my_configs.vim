set tabstop=2
set shiftwidth=2
set expandtab
set smarttab
set statusline+=%#warningmsg#
set statusline+=%*
set splitbelow
set updatetime=250
:map <F2> :mksession! ~/.vim_session<CR>
:map <F3> :source ~/.vim_session<CR>
:map <F5> :tabp<CR>
:map <F6> :tabn<CR>

let g:ycm_use_clangd=0
"" turn on completion in comments
let g:ycm_always_populate_location_list = 1
let g:ycm_complete_in_comments=1
"" turn on tag completion
let g:ycm_collect_identifiers_from_tags_files=1
"" start completion from the first character
let g:ycm_min_num_of_chars_for_completion=1
"" don't cache completion items
let g:ycm_cache_omnifunc=0
"" complete syntax keywords
let g:ycm_seed_identifiers_with_syntax=1
let g:syntastic_c_checkers = []
let g:syntastic_cpp_checkers = []
let g:ycm_add_preview_to_completeopt=1
""let g:ycm_confirm_extra_conf=0
let g:gitgutter_enabled = 0

" REQUIRED. This makes vim invoke Latex-Suite when you open a tex file.
filetype plugin on

" OPTIONAL: This enables automatic indentation as you type.
filetype indent on
" UltiSnips triggering
let g:UltiSnipsExpandTrigger = '<C-j>'
let g:UltiSnipsJumpForwardTrigger = '<C-j>'
let g:UltiSnipsJumpBackwardTrigger = '<C-k>'

" OPTIONAL: Starting with Vim 7, the filetype of empty .tex files defaults to
" 'plaintex' instead of 'tex', which results in vim-latex not being loaded.
" The following changes the default filetype back to 'tex':
let g:tex_flavor='latex'
let g:ycm_semantic_triggers.tex = [
      \ 're!\\[A-Za-z]*cite[A-Za-z]*(\[[^]]*\]){0,2}{[^}]*',
      \ 're!\\[A-Za-z]*ref({[^}]*|range{([^,{}]*(}{)?))',
      \ 're!\\hyperref\[[^]]*',
      \ 're!\\includegraphics\*?(\[[^]]*\]){0,2}{[^}]*',
      \ 're!\\(include(only)?|input){[^}]*',
      \ 're!\\\a*(gls|Gls|GLS)(pl)?\a*(\s*\[[^]]*\]){0,2}\s*\{[^}]*',
      \ 're!\\includepdf(\s*\[[^]]*\])?\s*\{[^}]*',
      \ 're!\\includestandalone(\s*\[[^]]*\])?\s*\{[^}]*',
      \ ]

nmap <buffer><A-n> <Plug>(grammarous-move-to-next-error)
nmap <buffer><A-p> <Plug>(grammarous-move-to-previous-error)
