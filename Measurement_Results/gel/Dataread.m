set(0,'defaulttextinterpreter','latex');
set(0,'defaultAxesFontSize', 24);
set(groot, 'defaultAxesTickLabelInterpreter','latex'); 
set(groot, 'defaultLegendInterpreter','latex');
A=100.*xlsread('finalData.xlsx');
x = 1:4;
figure(1) %15nm
hold on
plot(x,A(1:4,2),'.','Color','k','Markersize',15) %ref
plot(x,A(1:4,4),'.','Color',hex2rgb('#BFAA13'),'Markersize',15) %5k
plot(x,A(1:4,5),'.','Color',hex2rgb('#87780D'),'Markersize',15) %10k
plot(x,A(1:4,6),'.','Color',hex2rgb('#423B07'),'Markersize',15) %20k
plot(x,A(1:4,2),'Color','k','Markersize',15) %ref
plot(x,A(1:4,4),'Color',hex2rgb('#BFAA13'),'Markersize',15) %5k
plot(x,A(1:4,5),'Color',hex2rgb('#87780D'),'Markersize',15) %10k
plot(x,A(1:4,6),'Color',hex2rgb('#423B07'),'Markersize',15) %20k

hold off
set(gca, 'XTick',1:5, 'XTickLabel',{'$0$Gy' '$5$Gy' '$10$Gy' '$15$Gy'})
axis([0 6 0 80])
ylabel('Damage ($\%$)')
legend('Ref','5k','10k','20k');

figure(2) %30nm
hold on
plot(x,A(7:10,2),'.','Color','k','Markersize',15) %ref
plot(x,A(7:10,3),'.','Color',hex2rgb('#F7AAE4'),'Markersize',15) %1k
plot(x,A(7:10,4),'.','Color',hex2rgb('#FF0197'),'Markersize',15) %5k
plot(x,A(7:10,5),'.','Color',hex2rgb('#B20061'),'Markersize',15) %10k
plot(x,A(7:10,6),'.','Color',hex2rgb('#4C002A'),'Markersize',15) %20k
plot(x,A(7:10,2),'Color','k','Markersize',15) %ref
plot(x,A(7:10,3),'Color',hex2rgb('#F7AAE4'),'Markersize',15) %1k
plot(x,A(7:10,4),'Color',hex2rgb('#FF0197'),'Markersize',15) %5k
plot(x,A(7:10,5),'Color',hex2rgb('#B20061'),'Markersize',15) %10k
plot(x,A(7:10,6),'Color',hex2rgb('#4C002A'),'Markersize',15) %20k

hold off
set(gca, 'XTick',1:4, 'XTickLabel',{'$0$Gy' '$5$Gy' '$10$Gy' '$15$Gy'})
axis([0 6 0 80])
ylabel('Damage ($\%$)')
legend('Ref','1k','5k','10k','20k');

figure(3) %45nm
hold on
plot(x,A(13:16,2),'.','Color','k','Markersize',15) %ref
plot(x,A(13:16,3),'.','Color',hex2rgb('#19FEFF'),'Markersize',15) %1k
plot(x,A(13:16,4),'.','Color',hex2rgb('#14C5C5'),'Markersize',15) %5k
plot(x,A(13:16,5),'.','Color',hex2rgb('#0D747F'),'Markersize',15) %10k
plot(x,A(13:16,6),'.','Color',hex2rgb('#084C4C'),'Markersize',15) %20k
plot(x,A(13:16,2),'Color','k','Markersize',15) %ref
plot(x,A(13:16,3),'Color',hex2rgb('#19FEFF'),'Markersize',15) %1k
plot(x,A(13:16,4),'Color',hex2rgb('#14C5C5'),'Markersize',15) %5k
plot(x,A(13:16,5),'Color',hex2rgb('#0D747F'),'Markersize',15) %10k
plot(x,A(13:16,6),'Color',hex2rgb('#084C4C'),'Markersize',15) %20k
hold off
set(gca, 'XTick',1:4, 'XTickLabel',{'$0$Gy' '$5$Gy' '$10$Gy' '$15$Gy'})
axis([0 6 0 80])
ylabel('Damage ($\%$)')
legend('Ref','1k','5k','10k','20k');
