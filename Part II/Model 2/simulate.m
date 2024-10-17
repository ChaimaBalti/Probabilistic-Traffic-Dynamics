function simulate ()
  global Pl;
  global Ph;
  global T;
  Dh1=[];
  Dh2=[];
  Dh3=[];
  Dl1=[];
  Dl2=[];
  Dl3=[];
  Yh1=[];
  Yh2=[];
  Yh3=[];
  N=size(Pl)(1);
  M=size(Ph)(1);
  if ((N==0)&&(M==0))
    x_low=[];
    y_low=[];
    xSl=[];
    ySl=[];
    xTl=[];
    yTl=[];
    Dl1=[];
    Dl2=[];
    Dl3=[];
    Yl1=[];
    Yl2=[];
    Yl3=[];
    x_high=[];
    y_high=[];
    xSh=[]; %position of straight cars high
    ySh=[];
    xTh=[]; % position of turn cars high
    yTh=[];
    Dh1=[];
    Dh2=[];
    Dh3=[];
    Yh1=[];
    Yh2=[];
    Yh3=[];

  end;

  ok1=0;
  ok2=0;
  ok3=0;
  ok4=0;
  x=[0,40];
  if ((N!=0)&&(M!=0))

    x_low=Pl(:,1);
    y_low=Pl(:,2);

    x_high=Ph(:,1);
    y_high=Ph(:,2);


    xSh=[]; %position of straight cars high
    ySh=[];
    xTh=[]; % position of turn cars high
    yTh=[];
    for i=1:M
      if (Ph(i,4)==0)
        ok1=1;
        xSh=[xSh,Ph(i,1)];
        ySh=[ySh,Ph(i,2)];
      elseif (Ph(i,4)==1)
        ok2=1;
        xTh=[xTh,Ph(i,1)];
        yTh=[yTh,Ph(i,2)];
      end;
    end;
    xSl=[];
    ySl=[];
    xTl=[];
    yTl=[];
    for i=1:N
      if (Pl(i,4)==0)
        ok4=1;
        xSl=[xSl,Pl(i,1)];
        ySl=[ySl,Pl(i,2)];
      elseif (Pl(i,4)==1)
        ok3=1;
        xTl=[xTl,Pl(i,1)];
        yTl=[yTl,Pl(i,2)];
      end;
    end;

    Dl1=[];
    Dl2=[];
    Dl3=[];
    Yl1=[];
    Yl2=[];
    Yl3=[];
    for i=1:N
      if (Pl(i,3)==0)
        Dl1=[Dl1,Pl(i,1)];
        Yl1=[Yl1,Pl(i,2)];
      elseif (Pl(i,3)==1)
        Dl2=[Dl2,Pl(i,1)];
        Yl2=[Yl2,Pl(i,2)];
      elseif (Pl(i,3)==2)
        Dl3=[Dl3,Pl(i,1)];
        Yl3=[Yl3,Pl(i,2)];
      end;
    end;
    Dh1=[];
    Dh2=[];
    Dh3=[];
    Yh1=[];
    Yh2=[];
    Yh3=[];
    for i=1:M
      if (Ph(i,3)==0)
        Dh1=[Dh1,Ph(i,1)];
        Yh1=[Yh1,Ph(i,2)];
      elseif (Ph(i,3)==1)
        Dh2=[Dh2,Ph(i,1)];
        Yh2=[Yh2,Ph(i,2)];
      elseif (Ph(i,3)==2)
        Dh3=[Dh3,Ph(i,1)];
        Yh3=[Yh3,Ph(i,2)];
      end;
    end;
  end;
  if ((N==0)&&(M!=0))
    x_high=Ph(:,1);
    y_high=Ph(:,2);


    xSh=[]; %position of straight cars high
    ySh=[];
    xTh=[]; % position of turn cars high
    yTh=[];

    for i=1:M
      if (Ph(i,4)==0)
        ok1=1;
        xSh=[xSh,Ph(i,1)];
        ySh=[ySh,Ph(i,2)];
      elseif (Ph(i,4)==1)
        ok2=1;
        xTh=[xTh,Ph(i,1)];
        yTh=[yTh,Ph(i,2)];
      end;
    end;

    for i=1:M
      if (Ph(i,3)==0)
        Dh1=[Dh1,Ph(i,1)];
        Yh1=[Yh1,Ph(i,2)];
      elseif (Ph(i,3)==1)
        Dh2=[Dh2,Ph(i,1)];
        Yh2=[Yh2,Ph(i,2)];
      elseif (Ph(i,3)==2)
        Dh3=[Dh3,Ph(i,1)];
        Yh3=[Yh3,Ph(i,2)];
      end;

    end;
    x_low=[];
    y_low=[];
    xSl=[];
    ySl=[];
    xTl=[];
    yTl=[];
    Dl1=[];
    Dl2=[];
    Dl3=[];
    Yl1=[];
    Yl2=[];
    Yl3=[];
  end;
  if ((N!=0)&&(M==0))
    x_low=Pl(:,1);
    y_low=Pl(:,2);
    xSl=[];
    ySl=[];
    xTl=[];
    yTl=[];
    for i=1:N
      if (Pl(i,4)==0)
        ok4=1;
        xSl=[xSl,Pl(i,1)];
        ySl=[ySl,Pl(i,2)];
      elseif (Pl(i,4)==1)
        ok3=1;
        xTl=[xTl,Pl(i,1)];
        yTl=[yTl,Pl(i,2)];
      end;
    end;
    for i=1:N
      if (Pl(i,3)==0)
        Dl1=[Dl1,Pl(i,1)];
        Yl1=[Yl1,Pl(i,2)];
      elseif (Pl(i,3)==1)
        Dl2=[Dl2,Pl(i,1)];
        Yl2=[Yl2,Pl(i,2)];
      elseif (Pl(i,3)==2)
        Dl3=[Dl3,Pl(i,1)];
        Yl3=[Yl3,Pl(i,2)];
      end;
    end;
    xSh=[]; %position of straight cars high
    ySh=[];
    xTh=[]; % position of turn cars high
    yTh=[];
    Dh1=[];
    Dh2=[];
    Dh3=[];
    Yh1=[];
    Yh2=[];
    Yh3=[];
  end;

  if (N!=0)
    plot(x_low,y_low,'s', 'MarkerFaceColor', [0.5,0.5,0.8], 'MarkerEdgeColor', 'black','MarkerSize',10);
  end;
  if (M!=0)
    plot(x_high,y_high,'s', 'MarkerFaceColor', [0.5,0.5,0.8], 'MarkerEdgeColor', 'black','MarkerSize',10);
  end;
  hold on;
  h=rectangle ("Position", [0, -10,40,8], "Curvature", [0, 0]);
  set (h, "FaceColor", [0.5, 0.5, 0.5],'EdgeColor',[0.5, 0.5, 0.5]);
  y = -6; % position y de la ligne
  axis([0 40 -10 30]);
  axis off;
  x=[0,40];
  line(x, [y, y], 'Color', 'white', 'LineStyle', '--', 'LineWidth', 3);
  h1=rectangle ("Position", [16, -2, 8,22], "Curvature", [0, 0]);
  set (h1, "FaceColor", [0.5, 0.5, 0.5],'EdgeColor',[0.5, 0.5, 0.5]);
  line([20,20],[-2,20], 'Color', 'white', 'LineStyle', '--', 'LineWidth', 3);
  h2=rectangle ("Position", [24,6,16,5], "Curvature", [0, 0]);
  set (h2, "FaceColor", [0.5, 0.5, 0.5],'EdgeColor',[0.5, 0.5, 0.5]);
  %line([22,22],[-2,20], 'Color', 'white', 'LineStyle', '--', 'LineWidth', 3);
  if ((N!=0)&&(length(Dl1)!=0))
    drawnow
    plot(Dl1,Yl1,'s', 'MarkerFaceColor', 'green', 'MarkerEdgeColor', 'black','MarkerSize',12)
  endif
  if ((N!=0)&&(length(Dl2)!=0))
    drawnow
    plot(Dl2,Yl2,'s', 'MarkerFaceColor', [1,0.5,0], 'MarkerEdgeColor', 'black','MarkerSize',12)
  endif
  if ((N!=0)&&(length(Dl3)!=0))
    drawnow
    plot(Dl3,Yl3,'s', 'MarkerFaceColor', 'red', 'MarkerEdgeColor', 'black','MarkerSize',12)
  endif

  if ((M!=0)&&(length(Dh1)!=0))
    drawnow
    plot(Dh1,Yh1,'s', 'MarkerFaceColor', 'green', 'MarkerEdgeColor', 'black','MarkerSize',12)
  endif
  if ((M!=0)&&(length(Dh2)!=0))
    drawnow
    plot(Dh2,Yh2,'s', 'MarkerFaceColor', [1,0.5,0], 'MarkerEdgeColor', 'black','MarkerSize',12)
  endif
  if ((M!=0)&&(length(Dh3)!=0))
    drawnow
    plot(Dh3,Yh3,'s', 'MarkerFaceColor', 'red', 'MarkerEdgeColor', 'black','MarkerSize',12)
    drawnow
  endif;

  if ((ok1==1)&&(M!=0))
    text(xSh,ySh,'S');
  end;
  drawnow;
  if ((ok2==1)&&(M!=0))
    text(xTh,yTh,'T');
  end;
  drawnow;
  if ((ok3==1)&&(N!=0))
    text(xTl,yTl,'T');
  end;
  drawnow
  if ((ok4==1)&&(N!=0))
    text(xSl,ySl,'S');
  end;
  drawnow
  time=num2str(T);
  text(31,5.5,time);
  hold off;
endfunction;
