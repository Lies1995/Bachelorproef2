set(0,'defaulttextinterpreter','latex');
set(0,'defaultAxesFontSize', 20);
set(groot, 'defaultAxesTickLabelInterpreter','latex'); 
set(groot, 'defaultLegendInterpreter','latex');
figure(1)
A=xlsread(fullfile('TEM','0.8.xlsx'))
h = histogram(A(:,1),50,'FaceColor',hex2rgb('#0D747F'),'EdgeColor',hex2rgb('#063A3F'))
xlabel('Size (nm)')
ylabel('Number of particles');
figure(2)
A=xlsread(fullfile('TEM','1.24.xlsx'))
h = histogram(A(:,1),50,'FaceColor',hex2rgb('#B20061'),'EdgeColor',hex2rgb('#72003E'))
xlabel('Size (nm)')
ylabel('Number of particles');
figure(3)
A=xlsread(fullfile('TEM','2.5.xlsx'))
h = histogram(A(:,1),50,'FaceColor',hex2rgb('#BFAA13'),'EdgeColor',hex2rgb('#7F710D'))
xlabel('Size (nm)')
ylabel('Number of particles');
 