" Capitalize the start of the word under the cursor
" `mode` should be 'n' or 'v' indicating the current mode
" `upper` should be 1 (make uppercase) or 0 (make lowecase)
function capword#capitalize(mode, upper)
    " Save unnamed register since we do a yank
    let l:saved_unnamed_register = @@

    " Save the current position for later
    let l:originalPos = getpos(".")

    if a:mode ==# "i"
        execute "normal! \<esc>"
    endif

    " Capitalize beginning of current word
    if a:upper
        let l:cmd = "gU"
    else
        let l:cmd = "gu"
    endif
    execute "normal! yiwv" . l:cmd

    " Reset the cursor
    call cursor(l:originalPos[1],l:originalPos[2])

    " Restore the unnamed register
    let @@ = l:saved_unnamed_register

    if a:mode ==# "i"
        execute "normal! l"
        startinsert
    endif
endfunction
