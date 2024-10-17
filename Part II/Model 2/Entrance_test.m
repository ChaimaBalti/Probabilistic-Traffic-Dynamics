%test if there is possibility of a car entering the road
%th=1 if possible from higher road else 0
%tl nfs chay
function [tl,th] = Entrance_test ()
  global Ph ;
  global Pl ;
  global s ;
  global Lx;
  global Vmax ;
  if size(Ph)(1)>0
    th=Lx-max(Ph(:,1))>Vmax*s;
  else
    th=1 ;
  endif
  if size(Pl)(1)>0
    tl=min(Pl(:,1))>Vmax*s;
  else
    tl=1 ;
  endif

endfunction
