set(0,'defaulttextinterpreter','latex')
set(0,'defaultAxesFontSize', 15)
set(groot, 'defaultAxesTickLabelInterpreter','latex'); 
set(groot, 'defaultLegendInterpreter','latex');

fig=figure;
   set(fig,'Position', [262 191 900 440])
Range='B29:WD39';   
zonder=xlsread(fullfile('UV-VIS','7.03.16','GNP_2.5_20k_2.xlsx'),'Zonder zout',Range);
met=xlsread(fullfile('UV-VIS','7.03.16','GNP_2.5_20k_2.xlsx'),'Met zout',Range);
x=zonder(1,:);
y1=zonder(2,:);
y2=zonder(5,:);
y3=zonder(9,:);
y4=zonder(11,:);
y5=met(2,:);
y6=met(5,:);
y7=met(9,:);
y8=met(11,:);

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
   h=legend('Without NaCl','With NaCl' )
set(h,'Interpreter','latex')
