function VhT (n)
  global dt;
  global Amax;
  global Vmax;
  global s;
  global Vh;
  global xhsafe;
  global xmid ;
  global xnormal;
  global Ph;
  global xtch ;
    %dans le cas ou la voiture circule dans la partie normale
  if Vh(n,1)>0
    if (Ph(n,1)>24)
      x1=rand();
      x2=rand();
      x3=rand();
      x=max([x1,x2,x3]);
      v1=Vh(n,1)+x*Amax*dt;
      d=NextCar(Ph(n,1),1)/s;
      va=min([v1,d,Vmax]);
      v=max(va,Vh(n,1)-Amax*dt);
    elseif (Ph(n,1)>=22) && (Ph(n,1)<24)
      x1=rand();
      x2=rand();
      x3=rand();
      x=min([x1,x2,x3]);
      v1=Vh(n,1)+x*Amax*dt;
      d=NextCar(Ph(n,1),1)/s;
      v2=abs(-22+Ph(n,1))/dt; %il ne peut pas dépasser le milieu
      va=min([v1,d,Vmax,v2]);
      v=max([va,Vh(n,1)-(Amax)*dt,0.05]);
    else
      v=0 ;
    endif ;
    Vh(n,1)=v;
  else
      v1=Vh(n,2)+rand()*Amax*dt;
      d=NextCar(Ph(n,2),2)/s;
      va=min([v1,d,Vmax]);
      Vh(n,2)=max(va,Vh(n,2)-Amax*dt);
  endif

endfunction
