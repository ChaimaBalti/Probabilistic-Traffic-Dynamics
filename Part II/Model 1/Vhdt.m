%V = next speed of the car "n" after "dt" time
%n = car in {1..Nh}
function Vhdt (n)
  global dt
  global Amax
  global Ph ;
  global Vmax
  global s
  global Vh
  global xhsafe
  global xmid
  global xtcl
  global W
  vi=0.05;
  %dans le cas ou la voiture circule dans la partie normale
  if (Ph(n,1)>xhsafe) || (Ph(n,1)<xtcl)
    v1=Vh(n,1)+rand()*Amax*dt;
    d=NextCar(Ph(n,1),1)/s;
    va=min([v1,d,Vmax]);
    v=max([va,Vh(n,1)-Amax*dt]);
  %zone de décélération
  elseif (Ph(n,1)>=xmid) && (Ph(n,1)<xhsafe)
    x1=rand();
    x2=rand();
    x=min(x1,x2) ;
    if W
      x=(x-W)/W;
    endif
    v1=Vh(n,1)+x*Amax*dt;
    d=NextCar(Ph(n,1),1)/s;
    va=min([v1,d,Vmax]);
    v=max([va,Vh(n,1)-(Amax)*dt,vi]);
  %zone d'accélération
  else (Ph(n,1)<xmid) && (Ph(n,1)>xtcl)
    x=rand();
    if W
      x=(x-rand()*W)/W
    endif
    v1=Vh(n,1)+x*Amax*dt;
    d=NextCar(Ph(n,1),1)/s;
    va=min([v1,d,Vmax]);
    v=max([va,Vh(n,1)-(Amax)*dt]);
  endif
  Vh(n,1)=v;
endfunction
