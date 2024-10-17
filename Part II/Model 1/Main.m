%Variables
clear all
%les vecteurs sont notés en majiscule et les autres en miniscule
global Lx=40;
global Vmax ;
Vmax=0.75;
global Ph;%Pos high
Ph=[Lx,-4,0,0];
global Vh ;%Vitesse high
Vh=[rand()*Vmax,0];
global Pl ;%Pos low
Pl=[0,-8,0,0];
global Vl ;%Vitesse  low
Vl=[rand()*Vmax,0];
global xth=23; %turn position
global xtch=26 ; %coin position
global xtl=17; %turn position
global xtcl=14; %coin position
global xdecel=10 ; %zone décélération des Tcars qui veulent tourner
global xmid=20 ; % position du milieu
global dt=1 ;% pas de temps
global xhsafe=30 ; %début du zone décélération high
global xlsafe=10; % début du zone décélération low
global Ly=10;
global s=2*dt ; % safety time
global d1=2;   %d1 and d2 are the values determining if a car is close to be in traffic or in actual traffic or neither
global d2=4;
global Amax ;
global W;
Amax=0.75;
global T1;
T1=720 ;
global T2;
T2=840 ;
%Main
Z=0 ;
while (T1<T2);
  %updating speed and position for the higher cars
  for i=1:size(Vh)(1)
    if Ph(i,4)==1
      VhT(i) ;
    else
      Vhdt(i);
    end;
  endfor;
  NextPh();
  %updating speed and position for the lower cars
  for i=1:size(Vl)(1)
    if Pl(i,4)==1
      VlT(i) ;
    else
      Vldt(i);
    end;
  endfor;
  NextPl();
  %adding the new cars
  Add_cars() ;
  Delete() ;
  Traffic_state() ;
  simulate() ;
  T1+=dt ;
  Z+=1 %hedhi juste ntesti beha
endwhile ;
