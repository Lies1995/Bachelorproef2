
ml=[0.8, 1.24, 2.5];
for i=1: 3
   A=xlsread(fullfile('DLS',[num2str(ml(i)) '_PL_TIME.xlsx'])) 
   figure(i)
   plot(A(:,1),A(:,2));
end
