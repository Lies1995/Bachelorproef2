set(0,'defaulttextinterpreter','latex')
set(0,'defaultAxesFontSize', 15)
set(groot, 'defaultAxesTickLabelInterpreter','latex'); 
set(groot, 'defaultLegendInterpreter','latex');

fig=figure;
   set(fig,'Position', [262 191 900 440])
xlRange='B1:WD1';
Range='B2:WD7';
x=xlsread(fullfile('UV-VIS','14.03.16','GNP_2.5_1k.xlsx'),'Zonder zout',xlRange);
zonder=xlsread(fullfile('UV-VIS','14.03.16','GNP_2.5_1k.xlsx'),'Zonder zout',Range);
met=xlsread(fullfile('UV-VIS','14.03.16','GNP_2.5_1k.xlsx'),'Met zout',Range);

  y1=zonder(1,:);
  y2=zonder(3,:);
  y3=zonder(5,:);
  y4=zonder(6,:);
  y5=met(1,:);
  y6=met(3,:);
  y7=met(5,:);
  y8=met(6,:);
  plot(x,y1,'LineWidth',1.5,'LineStyle','-','color',hex2rgb('BFAA13'))
  hold on
  plot(x,y2,'LineWidth',1.5,'LineStyle','-','color',hex2rgb('7F710D'))
  plot(x,y3,'LineWidth',1.5,'LineStyle','-','color',hex2rgb('3F3906'))
  plot(x,y4,'LineWidth',1.5,'LineStyle','-','color',hex2rgb('EBD117'))
  plot(x,y5,'LineWidth',1.5,'LineStyle','--','color',hex2rgb('BFAA13'))
  plot(x,y6,'LineWidth',1.5,'LineStyle','--','color',hex2rgb('7F710D'))
  plot(x,y7,'LineWidth',1.5,'LineStyle','--','color',hex2rgb('3F3906'))
  plot(x,y8,'LineWidth',1.5,'LineStyle','--','color',hex2rgb('EBD117'))

  
     xlabel('Wavelength ($nm$)')
   ylabel('Absorbance (OD)')
   h=legend('Without NaCl','With NaCl')
set(h,'Interpreter','latex')