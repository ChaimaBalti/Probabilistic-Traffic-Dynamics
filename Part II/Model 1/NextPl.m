function  NextPl ()
  global Pl;
  global Vl;
  global dt ;
  Nl=size(Pl)(1);
  for (i=1:Nl)
     Pl(i,2)+=Vl(i,2)*dt;
     Pl(i,1)+=Vl(i,1)*dt;
  endfor
endfunction
