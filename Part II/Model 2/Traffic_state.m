%Determines the color of the car
function Traffic_state ()
  global Ph;
  global Pl;
  global Vh;
  global Vl;
  global d1;
  global d2;
  %Updating traffic state of Ph
  for i=1:size(Ph)(1)
    if Vh(i,1)>0
      ph=NextCar(Ph(i,1),1);
      if ph>d2
        Ph(i,3)=0 ;
      elseif (ph>d1) && (ph<=d2)
        Ph(i,3)=1;
      else
        Ph(i,3)=2 ;
      endif;
    else
      if Ph(i,4)==1
        ph=NextCar2(Ph(i,2),2);
      else
        ph=NextCar(Ph(i,2),2);
      endif;
      if ph>d2
        Ph(i,3)=0 ;
      elseif (ph>d1) && (ph<=d2)
        Ph(i,3)=1;
      else
        Ph(i,3)=2 ;
      endif;
    endif;
  endfor ;
  for i=1:size(Pl)(1)
    if Vl(i,1)>0
      pl=NextCarL(Pl(i,1),1);
      if pl>d2
        Pl(i,3)=0 ;
      elseif (pl>d1) && (pl<=d2)
        Pl(i,3)=1;
      else
        Pl(i,3)=2 ;
      endif;
    else
      pl=NextCarL(Pl(i,2),2);
      if pl>d2
        Pl(i,3)=0 ;
      elseif (pl>d1) && (pl<=d2)
        Pl(i,3)=1;
      else
        Pl(i,3)=2 ;
      endif;
    endif;

  endfor;
endfunction;
