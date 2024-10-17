%carefull with this you need to put it before you update the colors of the car
function Add_cars ()
  global Ph;
  global Pl;
  global T1 ;
  global Lx;
  global Vmax ;
  global Vh;
  global Vl ;
  global WL;
  [tl,th]=Entrance_test();
  p=p(T1);
  u=0;
  if (WL>0)
    u=1;
  endif
  if th
    if B(p+(1-p)*u) %if true then yes a car would enter/=1 if there is a car waiting
      if (u)
        b=B(0.85);
        WL-=1*b;
        Ph=[Ph;[Lx,7.5,0,b]];% there is a 85% chance that the car will be a turning car ; 5ater l kraheb li jeyin milouta yhebo ydourou 3ndhoom il awlawiya
      else
        Ph=[Ph;[Lx,7.5,0,B(0.3)]];% there is a 30% chance that the car will be a turning car
      endif
      Vh=[Vh;[rand()*Vmax,0]];
    endif
  endif
  if tl
    if B(p) %if true then yes a car would enter
      Pl=[Pl;[0,-8,0,B(0.3)]];% there is a 30% chance that the car will be a turning car
      Vl=[Vl; [rand()*Vmax,0]] ;
    endif
  endif
##  [tl,th]=Entrance_test();
##  p=p(T1);
##  if th
##    if B(p) %if true then yes a car would enter
##      Ph=[Ph;[Lx,7.5,0,B(0.3)]];% there is a 30% chance that the car will be a turning car
##      Vh=[Vh; [rand()*Vmax,0]];
##    endif
##  endif
##  if tl
##    if B(p) %if true then yes a car would enter
##      Pl=[Pl;[0,-8,0,B(0.3)]];% there is a 30% chance that the car will be a turning car
##      Vl=[Vl; [rand()*Vmax,0]] ;
##    endif
##  endif
endfunction
