%update de la vitesse d'une voiture(low) qui veut tourner (TCarLow)
function VlT (n)
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
##  global dt;
##  global Amax;
##  global Vmax;
##  global s;
##  global Vh;
##  global Vl;
##  global xlsafe;
##  global xmid
##  global xnormal;
##  global Pl;
##  global xtcl ;
##  global W;
##      %dans le cas ou la voiture circule dans la partie normale
##  if Vl(n,1)>0
##    if (Pl(n,1)<xlsafe)
##      v1=Vl(n,1)+rand()*Amax*dt;
##      d=NextCarL(Pl(n,1),1)/s;
##      va=min([v1,d,Vmax]);
##      Vl(n,1)=max([va,Vl(n,1)-Amax*dt,0.05]);
##    elseif (Pl(n,1)<=xtcl) && (Pl(n,1)>xlsafe)
##      W=W+1;
##      x1=rand();
##      x2=rand();
##      x3=rand();
##      x=min([x1,x2,x3]) ;
##      v1=Vl(n,1)+x*Amax*dt;
##      d=NextCarL(Pl(n,1),1)/s;
##      v2=(xmid-Pl(n,1))/dt; %il ne peut pas dépasser le milieu
##      va=min([v1,d,Vmax,v2]);
##      Vl(n,1)=max([va,Vl(n,1)-(Amax)*dt,0.05]);
##    else
##      Vl(n,1)=0 ;
##    endif ;
##  else
##      HO=Next_Obstacle(Pl(n,1));
##      if Turn(Prob_Turn(Pl(n,1),HO))
##        W=W-1 ;
##        v1=Vl(n,2)+rand()*Amax*dt;
##        d=NextCarL(Pl(n,2),2)/s;
##        va=min([v1,d,Vmax]);
##        Vl(n,2)=max(va,Vl(n,2)-Amax*dt);
##      endif
##  endif ;

endfunction
