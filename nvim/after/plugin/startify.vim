function! s:gitModified()
  let files = systemlist('git ls-files -m 2>/dev/null')
  return map(files, "{'line': v:val, 'path': v:val}")
endfunction

function! s:gitUntracked()
  let files = systemlist('git ls-files -o --exclude-standard -m 2>/dev/null')
  return map(files, "{'line': v:val, 'path': v:val}")
endfunction

"function! GetUniqueSessionName()
"  let path = fnamemodify(getcwd(), ':~:t')
"  let path = empty(path) ? 'no-project' : path
"  let branch = gitbranch#name()
"  let branch = empty(branch) ? '' : '-' . branch
"  return substitute(path . branch, '/', '-', 'g')
"endfunction



let g:startify_custom_header = 
  \ startify#pad(split(system('figlet -w 100 NVIM!!'), '\n'))
"(system('figlet -w 100 VIM2020'))

let g:startify_lists = [
        \ { 'type': 'files',     'header': ['   MRU']            },
        \ { 'type': 'dir',       'header': ['   MRU '. getcwd()] },
        \ { 'type': 'sessions',  'header': ['   Sessions']       },
        \ { 'type': 'bookmarks', 'header': ['   Bookmarks']      },
        \ { 'type': function('s:gitModified'),  'header': ['   git modified']},
        \ { 'type': function('s:gitUntracked'), 'header': ['   git untracked']},
        \ { 'type': 'commands',  'header': ['   Commands']       },
        \ ]

"autocmd User    StartifyReady silent execute 'SLoad ' . GetUniqueSessionName()
"autocmd VimLeavePre *         silent execute 'SSave ' . GetUniqueSessionName()

