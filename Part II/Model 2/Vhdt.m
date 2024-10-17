%V = next speed of the car "n" after "dt" time
%n = car in {1..Nh}
function Vhdt (n)
  global dt;
  global Amax;
  global Ph ;
  global Vmax;
  global s;
  global Vh;
  global xhsafe;
  global xmid;
  global xtcl;
  global W;
  vi=0.05;
  %dans le cas ou la voiture circule dans la partie normale
   if Vh(n,1)>0
    if (Ph(n,1)>20)||((Ph(n,2)<=-4)&&Ph(n,1)<=18)
      x1=rand();
      x2=rand();
      x3=rand();
      x=max([x1,x2,x3]);
      v1=Vh(n,1)+x*Amax*dt;
      d=NextCar(Ph(n,1),1)/s;
      va=min([v1,d,Vmax]);
      v=max(va,Vh(n,1)-Amax*dt);
    elseif (Ph(n,1)>=18) && (Ph(n,1)<20)
      v1=Vh(n,1)+rand()*Amax*dt;
      d=NextCar(Ph(n,1),1)/s;
      v2=abs(-18+Ph(n,1))/dt; %il ne peut pas depasser le voie
      va=min([v1,d,Vmax,v2]);
      v=max([va,Vh(n,1)-(Amax)*dt,0.05]);
    else
      v=0 ;
    endif ;
    Vh(n,1)=v;
  else
    if ((Ph(n,2)<=7.5)&&(Ph(n,2)>-2))
      y1=rand();
      y2=rand();
      y3=rand();
      y=max([y1,y2,y3]);
      v1=Vh(n,2)+y*Amax*dt;
      v2=abs(1+Ph(n,2))/dt;
      d=NextCar(Ph(n,2),2)/s;
      va=min([v1,d,Vmax,v2]);
      v=-(max([va,Vh(n,2)-Amax*dt,0.05]));
    elseif (Ph(n,2)<-2)&&(Ph(n,2)>-4)
      v1=Vh(n,2)+rand()*Amax*dt;
      d=NextCar(Ph(n,2),2)/s;
      v2=abs(-4+Ph(n,2))/dt; %il ne peut pas dépasser le milieu
      va=min([v1,d,Vmax,v2]);
      v=-(max([va,Vh(n,2)-(Amax)*dt,0.05]));
    else
      v=0;
      Vh(n,1)=0.05;
    endif
    Vh(n,2)=v;
  endif
endfunction
