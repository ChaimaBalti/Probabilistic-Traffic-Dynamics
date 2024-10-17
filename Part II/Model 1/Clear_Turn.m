function T= Clear_Turn ()
  global Ph ;
  global xtcl ;
  global xmid ;
  T=1;
  for i=1:size(Ph)(1) ;
    if (Ph(i,1)<xmid) && (Ph(i,1)>xtcl)
      T=0;
      break ;
    endif
  endfor
endfunction
