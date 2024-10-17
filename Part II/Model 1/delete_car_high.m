function   delete_car_high ()

  global L;
  global Ph;
  global Vh;
  L=[];
  N=size(Ph)(1);
  for i=1:N
    if (Ph(i,1)< 0)
      L=[L,i] ;
    end;
  end;

  if (size(L)!=0)
    New_Ph=zeros(N-size(L),4);
    New_Vh=zeros(N-size(L),2) ;
    k=0; % nombre de voiture restant dans la figure
    for i=1:N
       if !ismember(i,L)
         k+=1 ;
         New_Ph(k,:)=Ph(i,:);
         New_Vh(k,:)=Vh(i,:);
       endif
    end;
    Ph=zeros(N-size(L),4);
    Ph=New_Ph;
    New_Vh=zeros(N-size(L),2) ;
    Vh=New_Vh ;
  end;
endfunction
