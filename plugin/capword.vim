command! -nargs=0 CapwordLower call capword#capitalize("n", 0)
command! -nargs=0 CapwordUpper call capword#capitalize("n", 1)

if ! exists("g:capword_normal_lower_mapping")
    let g:capword_normal_lower_mapping = "<m-j>"
endif
if ! exists("g:capword_normal_upper_mapping")
    let g:capword_normal_upper_mapping = "<m-k>"
endif
if ! exists("g:capword_insert_lower_mapping")
    let g:capword_insert_lower_mapping = "<m-j>"
endif
if ! exists("g:capword_insert_upper_mapping")
    let g:capword_insert_upper_mapping = "<m-k>"
endif

if ! (exists("g:capword_no_mappings") && g:capword_no_mappings)
    execute "nnoremap <silent> " . g:capword_normal_lower_mapping . " :CapwordLower<cr>"
    execute "nnoremap <silent> " . g:capword_normal_upper_mapping . " :CapwordUpper<cr>"
    if ! (exists("g:capword_no_insert_mappings") && g:capword_no_insert_mappings)
        execute "inoremap <silent> " . g:capword_insert_lower_mapping . " <esc>:call capword#capitalize('i', 0)<cr>"
        execute "inoremap <silent> " . g:capword_insert_upper_mapping . " <esc>:call capword#capitalize('i', 1)<cr>"
    endif
endif
