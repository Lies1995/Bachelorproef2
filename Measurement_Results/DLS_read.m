set(0,'defaulttextinterpreter','latex')
set(0,'defaultAxesFontSize', 20)

ml=[0.8, 1.24, 2.5];
hold on
for i=1: 3
   A=xlsread(fullfile('DLS','7.03.16',[num2str(ml(i)) '_PL_TIME_1.xlsx']))
   
   set(fig, 'Position', [262 191 900 440])
  
   if i==1
       plot(A(1:2:600,1),A(1:2:600,2),'+', 'markersize',5 )
       plot(A(602:1201,1),A(602:1201,2));
   else   
   plot(A(1:300,1),A(1:300,2),'.')
   plot(A(302:601,1),A(302:601,2));
   end
   xlabel('Time ($\mu s$)')
   ylabel('Intensity (a.u.)') %normalized correlation curve
   legend('Data','Fit')
   
end
hold off