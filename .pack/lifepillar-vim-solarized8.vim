colorscheme solarized8

" enable solarized filetype-specific syntax highlighting groups
let g:solarized_extra_hi_groups = 1

" https://github.com/jackguo380/vim-lsp-cxx-highlight/blob/master/syntax/lsp_cxx_highlight.vim#L31
hi LspCxxHlGroupEnumConstant guifg=#AD7FA8
hi LspCxxHlGroupNamespace guifg=DarkCyan
hi LspCxxHlGroupMemberVariable guifg=Grey

" https://github.com/neoclide/coc.nvim/blob/27b709bd0919b385726516a101d1709c4c4be852/plugin/coc.vim#L439
" https://reviews.llvm.org/source/llvm-github/browse/main/clang-tools-extra/clangd/SemanticHighlighting.cpp$946
hi link CocSemClass Type
hi link CocSemConcept Type
hi link CocSemDependent Type
hi link CocSemEnum Type
hi link CocSemEnumMember LspCxxHlGroupEnumConstant 
hi link CocSemNamespace LspCxxHlGroupNamespace 
hi link CocSemParameter Normal
hi link CocSemProperty LspCxxHlGroupMemberVariable 
hi link CocSemStruct Type
hi link CocSemTypeParameter Type
hi link CocSemUnknown Normal
hi link CocSemVariable Normal

hi gitlens guifg=#4b5c6d guibg=NONE gui=italic cterm=italic
