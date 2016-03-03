set(0,'defaulttextinterpreter','latex')
set(0,'defaultAxesFontSize', 20)

ml=[0.8, 1.24, 2.5];
for i=1: 3
   A=xlsread(fullfile('DLS','0.8_PL_TIME.xlsx'))
   fig=figure(i)
   set(fig, 'Position', [262 191 900 440])
   hold on
   plot(A(1:400,1),A(1:400,2))
   plot(A(602:1002,1),A(602:1002,2));
   xlabel('Time ($\mu s$)')
   ylabel('Correlation')
   hold off
end
