set(0,'defaulttextinterpreter','latex')
set(0,'defaultAxesFontSize', 15)

ml=[0.8, 1.24, 2.5];

   xlRange = 'BT29:YV32';
   A=xlsread(fullfile('UV-VIS','29.02.16','GNP_alle.xlsx'),xlRange)
   x=A(1,:);
   y1=A(2,:);
   y2=A(3,:);
   y3=A(4,:);
   plot(x,y1,'LineWidth',1.5,'color',hex2rgb('0D747F'))
   hold on
   plot(x,y2,'LineWidth',1.5,'color',hex2rgb('B20061'))
   plot(x,y3,'LineWidth',1.5,'color',hex2rgb('BFAA13'))
   plot(536,1.0101,'Marker','*','MarkerEdgeColor',hex2rgb('0D747F'),'MarkerSize', 6)
   plot(523,0.9164,'Marker','*','MarkerEdgeColor',hex2rgb('B20061'),'MarkerSize', 6)
   plot(519,0.835,'Marker','*','MarkerEdgeColor',hex2rgb('BFAA13'),'MarkerSize', 6)


   xlabel('Wavelength ($nm$)')
   ylabel('Optical density')
   legend('45nm','30nm', '15nm')

% xlRange= 'A29:WD39'
% zonder= xlsread(fullfile('UV-VIS','29.03.16','GNP_2.5_20k_2.xlsx'),'Zonder zout',xlRange);
% x=zonder(1,:);
% y1=zonder(2,:);
% y2=zonder(3,:);
% y3=zonder(4,:);
% y4=zonder(5,:);
% y5=zonder(6,:);
% y6=zonder(7,:);
% y7=zonder(8,:);
% y8=zonder(9,:);
% y9=zonder(10,:);
% y10=zonder(11,:);
% y11=met(2,:);
% y12=met(3,:);
% y13=met(4,:);
% y14=met(5,:);
% y15=met(6,:);
% y16=met(7,:);
% y17=met(8,:);
% y18=met(9,:);
% y19=met(10,:);
% y20=met(11,:);
% plot(x,y1,'LineWidth',1.5,'LineStyle','-','color',hex2rgb('0D747F'))
% hold on
% plot(x,y4,'LineWidth',1.5,'LineStyle','-','color',hex2rgb('B20061'))
% plot(x,y8,'LineWidth',1.5,'LineStyle','-','color',hex2rgb('BFAA13'))
% plot(x,y10,'LineWidth',1.5,'LineStyle','-','color',hex2rgb('660A3C'))
% % plot(x,y11,'LineWidth',1.5,'LineStyle','--','color',hex2rgb('0D747F'))
% % plot(x,y14,'LineWidth',1.5,'LineStyle','--','color',hex2rgb('B20061'))
% % plot(x,y18,'LineWidth',1.5,'LineStyle','--','color',hex2rgb('BFAA13'))
% % plot(x,y20,'LineWidth',1.5,'LineStyle','--','color',hex2rgb('660A3C'))
% 
% xlabel('Wavelength ($nm$)')
% ylabel('Optical density')
% % h=legend('1/10','4/10','8/10', '10/10','1/10 with salt','4/10 with salt','8/10 with salt', '10/10 with salt')
% % set(h,'Interpreter','latex')