set(0,'defaulttextinterpreter','latex');
set(0,'defaultAxesFontSize', 20);
set(groot, 'defaultAxesTickLabelInterpreter','latex'); 
set(groot, 'defaultLegendInterpreter','latex');

G = [hex2rgb('#BFAA13'); hex2rgb('#7F710D'); hex2rgb('#3F3906'); hex2rgb('#CCB514'); hex2rgb('#A59310');...
    hex2rgb('#9E8D10');hex2rgb('#5E5409');hex2rgb('#DEC516');hex2rgb('#EBD117');hex2rgb('#C4AF14')];
R = [hex2rgb('#72003E'); hex2rgb('#FE008B'); hex2rgb('#B20061'); hex2rgb('#BF0068'); hex2rgb('#980053');...
    hex2rgb('#450026');hex2rgb('#D10072');hex2rgb('#850048');hex2rgb('#91004F');hex2rgb('#6B003A')];
B = [hex2rgb('#063A3F'); hex2rgb('#15BACB'); hex2rgb('#0D747F'); hex2rgb('#0E808C'); hex2rgb('#0A5D65');...
    hex2rgb('#031A1C');hex2rgb('#119AA8');hex2rgb('#09545C');hex2rgb('#0B5F69');hex2rgb('#073D42')];

%----- PLOT data for the different particles-----
ml=[0.8, 1.24, 2.5];
for i=1: 3
    A=xlsread(fullfile('DLS','Data_verslag',[num2str(ml(i)) '.xlsx']))
    C=xlsread(fullfile('DLS','Data_verslag',[num2str(ml(i)) '_20k.xlsx']))

    fig=figure(i)
    set(fig, 'Position', [262 191 900 440])
    if i==1
        axis();
        set(gca, 'colororder', B, 'nextplot', 'replacechildren');
        hold on
        j=1;
        while j < 20
            stem(A(1:250,j),A(1:250,j+1),'.','Markeredgecolor','white','Markersize',1,'LineWidth',10.0);
            j=j+2
        end
        hold off
    elseif i==2
        axis();
        set(gca, 'colororder', R, 'nextplot', 'replacechildren');
        hold on
        j=1;
        while j < 18
            stem(A(1:250,j),A(1:250,j+1),'.','Markeredgecolor','white','Markersize',1,'LineWidth',10.0);
            j=j+2
        end
        hold off
    else
        axis();
        set(gca, 'colororder', G, 'nextplot', 'replacechildren');
        hold on
        j=1;
        while j < 20
            stem(A(1:250,j),A(1:250,j+1),'.','Markeredgecolor','white','Markersize',1,'LineWidth',10.0);
            j=j+2
        end
        hold off
    end
    set(gca,'XScale','log');
    xlabel('Diameter ($nm$)')
    ylabel('Intensity (a.u.)') %normalized correlation curve
    hold off
    fig=figure(4)
    set(fig, 'Position', [262 191 900 440])
    col=[hex2rgb('#0D747F'); hex2rgb('#B20061'); hex2rgb('#BFAA13') ];
    hold on
    if i==2
    stem(A(1:250,19),A(1:250,20),'.','Color', col(i,:),'Markeredgecolor','white','Markersize',1,'LineWidth',10.0);
    else
    stem(A(1:250,21),A(1:250,22),'.', 'Color',col(i,:),'Markeredgecolor','white','Markersize',1,'LineWidth',10.0);
    end
    set(gca,'XScale','log');
    xlabel('Diameter ($nm$)')
    ylabel('Intensity (a.u.)') %normalized correlation curve
    hold off
    fig=figure(5)
    hold on
    set(fig, 'Position', [262 191 900 440])
    stem(C(1:250,21),C(1:250,22),'.','Color',col(i,:),'Markeredgecolor','white','Markersize',1,'LineWidth',10.0);
    set(gca,'XScale','log');
    xlabel('Diameter ($nm$)')
    ylabel('Intensity (a.u.)') %normalized correlation curve
    hold off 
end

%---- plot before and after PEG averages particles----
