set(0,'defaulttextinterpreter','latex');
set(0,'defaultAxesFontSize', 20);
set(groot, 'defaultAxesTickLabelInterpreter','latex'); 
set(groot, 'defaultLegendInterpreter','latex');

xlRange='A567:V691'
A=xlsread(fullfile('Zeta','29.02.16','GNP_0.8.xlsx'),xlRange);
x=A(:,1);
y1=A(:,2);
y2=A(:,4);
y3=A(:,6);
y4=A(:,8);
y5=A(:,10);
y6=A(:,12);
y7=A(:,14);
y8=A(:,16);
y9=A(:,18);
y10=A(:,20);
y11=A(:,22);

plot(x,y1,'LineWidth',.5,'LineStyle','-','color',hex2rgb('063A3F'))
hold on
plot(x,y2,'LineWidth',.5,'LineStyle','-','color',hex2rgb('15BACB'))
plot(x,y3,'LineWidth',.5,'LineStyle','-','color',hex2rgb('0D747F'))
plot(x,y4,'LineWidth',.5,'LineStyle','-','color',hex2rgb('0E808C'))
plot(x,y5,'LineWidth',.5,'LineStyle','-','color',hex2rgb('0A5D65'))
plot(x,y6,'LineWidth',.5,'LineStyle','-','color',hex2rgb('031A1C'))
plot(x,y7,'LineWidth',.5,'LineStyle','-','color',hex2rgb('119AA8'))
plot(x,y8,'LineWidth',.5,'LineStyle','-','color',hex2rgb('09545C'))
plot(x,y9,'LineWidth',.5,'LineStyle','-','color',hex2rgb('0B5F69'))
plot(x,y10,'LineWidth',.5,'LineStyle','-','color',hex2rgb('073D42'))
plot(x,y11,'LineWidth',2,'LineStyle','-','color','k')

