function p = Prob_Turn (x,n)
  global Vh ;
  global xmid ;
  global Pl;
  global dt;
  d=abs(Next_Obstacle(x)-x) ;
  if d>=Vh(n,1)*2*dt
    p=min(1-((Vh(n,1)*dt)/d)^2+n/5,1) ;
  elseif Vh(n,1)*2*dt>d>=Vh(n,1)*dt
    p=min((1-((Vh(n,1)*dt)/d)^2)^2+n/10,1);
  else
    p=min((d/(Vh(n,1)*dt))^(200)+n/1000,1);
  endif
endfunction
