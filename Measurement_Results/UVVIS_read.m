set(0,'defaulttextinterpreter','latex')
set(0,'defaultAxesFontSize', 20)

ml=[0.8, 1.24, 2.5];

   xlRange = 'BT29:YV32';
   A=xlsread(fullfile('UV-VIS','GNP_29022016.xlsx'),xlRange)
   fig=figure(i)
   set(fig, 'Position', [262 191 900 440])
   x=A(1,:);
   y1=A(2,:);
   y2=A(3,:);
   y3=A(4,:);
   plot(x,y1,x,y2,x,y3)

   xlabel('Wavelength ($nm$)')
   ylabel('Normalized absorption (a.u.)')
   legend('0.8 ml','1.24 ml', '2.5 ml')
  
