%tlawej 3al position mtaa akreb karhba kodemek
function m = NextCar (Phn,d) %d is the direction with you are looking for d=1 looking for the next car in the x axis and 2 and in the Y axis
  global Ph ;
  p=Ph(1,d) ;
  for i=1:size(Ph)(1)
    if (Phn-Ph(i,d)>0) && (Ph(i,d)<=p)
      p=Ph(i,d) ;
      m=abs(Phn-Ph(i,d));
      k=i;
    endif
  endfor
  if (Phn>=p)
    m=inf ;
  endif;
endfunction;
