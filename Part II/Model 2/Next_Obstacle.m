function n = Next_Obstacle (X)
  global Ph ;
  global xmid ;
  global Lx ;
  xo=inf;
  for i=1:size(Ph)(1)
    if (Ph(i,1)>X) && (Ph(i,1)<xo)
      xo=Ph(i,1);
      n=i ;
    endif
  endfor
endfunction
