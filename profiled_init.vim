p = require("jit.p")

" Your ordinary init.lua runs here
source ~/.config/nvim/init.lua
"

lua p.start("10,p,l,v,r,m0,i1", "/tmp/lua-profiling.log")
profile start /tmp/vim-profiling.log
profile func *
profile file *
profile stop
open ~org/projekt/journalinforande.org
silent! profile dump
lua p.stop()
 "
tabnew "tabnew"
edit   /tmp/lua-profiling.log
vsplit /tmp/vim-profiling.log

