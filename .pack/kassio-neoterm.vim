let g:neoterm_callbacks = {}

function! g:neoterm_callbacks.before_new()
  if winwidth('.') > 100
    let g:neoterm_default_mod = 'botright vertical'
  else
    let g:neoterm_default_mod = 'botright'
  end
endfunction

" override the default kepmap ",tt" since we should not begin keymaps with ","
let g:neoterm_automap_keys = "<Leader>,tt"
