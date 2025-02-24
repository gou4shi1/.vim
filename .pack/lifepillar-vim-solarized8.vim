colorscheme solarized8

" enable solarized filetype-specific syntax highlighting groups
let g:solarized_extra_hi_groups = 1

" https://github.com/jackguo380/vim-lsp-cxx-highlight/blob/master/syntax/lsp_cxx_highlight.vim#L31
hi LspCxxHlGroupEnumConstant guifg=#AD7FA8
hi LspCxxHlGroupNamespace guifg=DarkCyan
hi LspCxxHlGroupMemberVariable guifg=Grey

" https://github.com/neoclide/coc.nvim/blob/27b709bd0919b385726516a101d1709c4c4be852/plugin/coc.vim#L439
" https://reviews.llvm.org/source/llvm-github/browse/main/clang-tools-extra/clangd/SemanticHighlighting.cpp$946
hi link CocSemTypeClass Type
hi link CocSemTypeConcept Type
hi link CocSemTypeEnum Type
hi link CocSemTypeEnumMember LspCxxHlGroupEnumConstant 
hi link CocSemTypeNamespace LspCxxHlGroupNamespace 
hi link CocSemTypeParameter Normal
hi link CocSemTypeProperty LspCxxHlGroupMemberVariable 
hi link CocSemTypeStruct Type
hi link CocSemTypeTypeParameter Type
hi link CocSemTypeUnknown Normal
hi link CocSemTypeVariable Normal

hi gitlens guifg=#4b5c6d guibg=NONE gui=italic cterm=italic
