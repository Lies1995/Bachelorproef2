set(0,'defaulttextinterpreter','latex')
set(0,'defaultAxesFontSize', 20)

ml=[0.8, 1.24, 2.5];
for i=1: 3
    A=xlsread(fullfile('DLS',[num2str(ml(i)) '_PL_DIA.xlsx']))
    fig=figure(i)
    set(fig, 'Position', [262 191 900 440])
       % bar(A(1:140,1),A(1:140,2))
        %set(gca,'xaxis','log')
        stem(A(1:250,1),A(1:250,2),'.','Markeredgecolor','white','Markersize',1,'LineWidth',10.0);
set(gca,'XScale','log');
   xlabel('Diameter ($nm$)')
    ylabel('Intensity (a.u.)') %normalized correlation curve
    hold off
end
