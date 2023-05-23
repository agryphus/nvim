vim.cmd([[

let maplocalleader = " "

let g:vimtex_compiler_method = 'latexmk'

let g:tex_flavor='latex' 
let g:vimtex_quickfix_mode=0

" settings for sumatraPDF
let g:vimtex_view_general_viewer = 'C:\Users\andre\AppData\Local\SumatraPDF\SumatraPDF.exe'
let g:vimtex_view_general_options
  \ = '-reuse-instance -forward-search @tex @line @pdf'

set conceallevel=1
let g:tex_conceal='abdmg'

augroup vimtex_config
  au!
  au User VimtexEventQuit call vimtex#compiler#clean(0)
augroup END

]])

