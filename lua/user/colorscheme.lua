vim.cmd [[
try
  colorscheme default
catch /^Vim\%((\a\+)\)\=:E185/
  colorscheme default
  set background=transparent
endtry
]]
