function Vldt (n)
  global dt;
  global Amax;
  global Vmax;
  global s;
  global Vl;
  global Pl;
  v1=Vl(n,1)+rand()*Amax*dt;
  d=NextCarL(Pl(n,1),1)/s;
  va=min([v1,d,Vmax]);
  Vl(n,1)=max(va,Vl(n,1)-Amax*dt);
endfunction
