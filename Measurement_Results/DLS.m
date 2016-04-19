set(0,'defaulttextinterpreter','latex');
set(0,'defaultAxesFontSize', 20);
set(groot, 'defaultAxesTickLabelInterpreter','latex'); 
set(groot, 'defaultLegendInterpreter','latex');
B=[50.75 109.54 68.84 71.56 76.14];
Ber=[2.05 0.69 3.06 1.87 0.66]
M=[30.39 134.64 45.41 53.51 61.29];
Mer=[1.26 23.87 1.26 1.30 1.50];
S=[28.37 135.72 40.26 49.11 66.00];
Ser=[1.53 41.81 1.25 4.93 4.71];
x=['No PEG' '1k' '5k' '10k' '20k'];
x = 1:5;
hold on
errorbar(x,B,Ber,'Color',hex2rgb('#0D747F'))
plot(x,B,'.','Color',hex2rgb('#063A3F'),'Markersize',15)
errorbar(x,M,Mer,'Color',hex2rgb('#B20061'))
plot(x,M,'.','Color',hex2rgb('#72003E'),'Markersize',15)
errorbar(x,S,Ser,'Color',hex2rgb('#7F710D'))
plot(x,S,'.','Color',hex2rgb('#BFAA13'),'Markersize',15)
hold off
set(gca, 'XTick',1:5, 'XTickLabel',{'No PEG' '1k' '5k' '10k' '20k'})
axis([0 6 10 180])
