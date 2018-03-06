setlocal foldexpr=getline(v:lnum)=~'^=cut'?'<1':getline(v:lnum)=~'^='?'1':'=' |
setlocal foldmethod=expr
setlocal makeprg=perl\ -c\ -MVi::QuickFix\ %
setlocal errorformat+=%m\ at\ %f\ line\ %l.
setlocal errorformat+=%m\ at\ %f\ line\ %l
