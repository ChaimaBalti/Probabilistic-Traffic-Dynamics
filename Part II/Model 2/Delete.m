function Delete ()
  global Ph;
  global Vh;
  global Pl;
  global Vl;
  global Ly;
  global Lx;
  global WL;
  Ph1=Ph;
  Vh1=Vh;
  Pl1=Pl;
  Vl1=Vl;
  Ph=[];
  Vh=[];
  Pl=[];
  Vl=[];
  for i=1:size(Ph1)(1)
    if Ph1(i,1)>0 && Ph1(i,2)<Ly
      Ph=[Ph;Ph1(i,:)];
      Vh=[Vh;Vh1(i,:)];
    endif
  endfor
  for i=1:size(Pl1)(1)
    if Pl1(i,1)<Lx && Pl1(i,2)<Ly
      Pl=[Pl;Pl1(i,:)];
      Vl=[Vl;Vl1(i,:)];
    elseif (Pl1(i,4)==1)
      WL=WL+1;
    endif
  endfor
endfunction
