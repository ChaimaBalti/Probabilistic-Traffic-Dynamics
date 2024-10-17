function  NextPh ()
  global Ph;
  global Vh;
  global dt ;
  Nh=size(Ph)(1);
  for (i=1:Nh)
     Ph(i,2)+=Vh(i,2)*dt;
     Ph(i,1)-=Vh(i,1)*dt;
  endfor
endfunction
