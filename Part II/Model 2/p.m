function p=p(T)
  global dt;
  a=T/60;
  e=@(t) (((1/(sqrt(2*pi*2)))*exp(-((t-12)^2)/4)+(1/(sqrt(4*2*pi)))*exp(-((t-17)^2)/8)+(1/(sqrt(2*pi)))*exp(-((t-8)^2)/2)))/2.9933;
  p=e(a)*3;
endfunction
