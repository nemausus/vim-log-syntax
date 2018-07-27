" Author: Naresh (nareshkumargangwar@gmail.com)

augroup ft_glog
  autocmd!
  autocmd BufNewFile,BufRead *.{DEBUG,INFO,WARNING,ERROR} set ft=glog
augroup END
