set(0,'defaulttextinterpreter','latex')
set(0,'defaultAxesFontSize', 15)
set(groot, 'defaultAxesTickLabelInterpreter','latex'); 
set(groot, 'defaultLegendInterpreter','latex');
 fig=figure;
   set(fig,'Position', [262 191 900 440])

  xlRange = 'B1:WD1';
  Range='B3:WD6';
  x=xlsread(fullfile('UV-VIS','10.03.16','GNP_2.5_5k.xlsx'),xlRange);
  zonder=xlsread(fullfile('UV-VIS','10.03.16','GNP_2.5_5k.xlsx'),'Zonder zout',Range);
  met=xlsread(fullfile('UV-VIS','10.03.16','GNP_2.5_5k.xlsx'),'Met zout',Range);
  y1=zonder(1,:);
  y2=zonder(2,:);
  y3=zonder(3,:);
  y4=zonder(4,:);
  y5=met(1,:);
  y6=met(2,:);
  y7=met(3,:);
  y8=met(4,:);
  plot(x,y1,'LineWidth',1.5,'LineStyle','-','color',hex2rgb('0D747F'))
  hold on
  plot(x,y2,'LineWidth',1.5,'LineStyle','-','color',hex2rgb('B20061'))
  plot(x,y3,'LineWidth',1.5,'LineStyle','-','color',hex2rgb('BFAA13'))
  plot(x,y4,'LineWidth',1.5,'LineStyle','-','color',hex2rgb('660A3C'))
  plot(x,y5,'LineWidth',1.5,'LineStyle','--','color',hex2rgb('0D747F'))
  plot(x,y6,'LineWidth',1.5,'LineStyle','--','color',hex2rgb('B20061'))
  plot(x,y7,'LineWidth',1.5,'LineStyle','--','color',hex2rgb('BFAA13'))
  plot(x,y8,'LineWidth',1.5,'LineStyle','--','color',hex2rgb('660A3C'))
  
   xlabel('Wavelength ($nm$)')
   ylabel('Optical density')
   h=legend('Without NaCl','With NaCl' )
set(h,'Interpreter','latex')
  