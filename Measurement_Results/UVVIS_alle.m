set(0,'defaulttextinterpreter','latex')
set(0,'defaultAxesFontSize', 15)
set(groot, 'defaultAxesTickLabelInterpreter','latex'); 
set(groot, 'defaultLegendInterpreter','latex');


ml=[0.8, 1.24, 2.5];

   xlRange = 'BT29:YV32';
   A=xlsread(fullfile('UV-VIS','29.02.16','GNP_alle.xlsx'),xlRange);
   fig=figure;
   set(fig,'Position', [262 191 900 440])
   x=A(1,:);
   y1=A(2,:);
   y2=A(3,:);
   y3=A(4,:);
   plot(x,y1,'LineWidth',1.5,'LineStyle','-','color',hex2rgb('0D747F'))
   hold on
   plot(x,y2,'LineWidth',1.5,'LineStyle','-','color',hex2rgb('B20061'))
   plot(x,y3,'LineWidth',1.5,'LineStyle','-','color',hex2rgb('BFAA13'))
   plot(536,1.0101,'Marker','*','MarkerEdgeColor',hex2rgb('0D747F'),'MarkerSize', 6)
   plot(523,0.9164,'Marker','*','MarkerEdgeColor',hex2rgb('B20061'),'MarkerSize', 6)
   plot(519,0.835,'Marker','*','MarkerEdgeColor',hex2rgb('BFAA13'),'MarkerSize', 6)
   
      xlabel('Wavelength ($nm$)')
   ylabel('Optical density')