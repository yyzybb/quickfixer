
func! quickfixer#newqf()
    exec(':cex ""')
endfunc

func! quickfixer#addqf(description)
    let s:cmd = ':caddexpr ' . "'" . expand("%:p") . ":" . line(".") . ":-" . a:description . "'"
    echo s:cmd
    exec(s:cmd)
endfunc


