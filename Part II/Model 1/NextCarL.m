function m = NextCarL (Pln,d)
  global Pl ;
  p=Pl(1,d) ;
  for i=1:size(Pl)(1)
    if (Pln-Pl(i,d)<0) && (Pl(i,d)<=p)
      m=abs(Pln-Pl(i,d));
      k=i;
    endif
  endfor
  if (Pln-p)>=0
    m=inf ;
  endif
endfunction
