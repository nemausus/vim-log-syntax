" Vim syntax file for glog

if exists("b:current_syntax")
  finish
endif
syn match dbg ' .*' contained
syn match info ' .*' contained
syn match warn ' .*' contained
syn match err ' .*' contained
syn match start '^D.*:\d\+]' nextgroup=dbg
syn match start '^W.*:\d\+]' nextgroup=warn
syn match start '^I.*:\d\+]' nextgroup=info
syn match start '^E.*:\d\+]' nextgroup=err
syn match start '^.* DEBUG .*] :' nextgroup=dbg
syn match start '^.* INFO .*] :' nextgroup=info
syn match start '^.* WARN .*] :' nextgroup=warn
syn match start '^.* ERROR .*] :' nextgroup=err

let b:current_syntax = "glog"
hi def link dbg Comment
hi def link info Normal
hi def link warn Type
hi def link err PreProc
hi def link start Comment
