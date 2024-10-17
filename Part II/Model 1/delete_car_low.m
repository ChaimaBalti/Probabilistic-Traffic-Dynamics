function   delete_car_low ()
  global Lx;
  global Pl ;
  global Vl ;
  L=[];
  N=size(Pl)(1);
  for i=1:N
    if (Pl(i,1)>Lx )
      L=[L,i] ;
    end;
  end;

  if (size(L)!=0)
    New_Pl=zeros(N-size(L),4);
    New_Vl=zeros(N-size(L),2) ;
    k=0; % nombre de voiture restant dans la figure
    for i=1:N
       if !ismember(i,L)
         k+=1 ;
         New_Pl(k,:)=Pl(i,:);
         New_Vl(k,:)=Vl(i,:);
       endif
    end;
    Pl=zeros(N-size(L),4);
    Pl=New_Pl;
    Vl=zeros(N-size(L),2) ;
    Vl=New_Vl ;
  end;

endfunction
