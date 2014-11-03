
func! quickfixer#new()
    exec(':cex ""')
endfunc

func! quickfixer#add(description)
    let s:cmd = ':caddexpr ' . "'" . expand("%:p") . ":" . line(".") . ": <<< " . a:description . "'"
    echo s:cmd
    exec(s:cmd)
endfunc



func! quickfixer#newf(filename)
    call system('echo > ' . s:filename)
endfunc

func! quickfixer#addf(filename, description)
    let s:element = expand("%:p") . "|" . line(".") . "| <<< " . a:description
    let s:command = "echo '" . s:element . "' >> " . a:filename
    "echo 's:command is' s:command
    call system(s:command)
endfunc


