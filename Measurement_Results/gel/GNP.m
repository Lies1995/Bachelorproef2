M_H=1.008; %molaire massa waterstof
M_Au=196.967; %molaire massa goud
M_Cl=35.453; %molaire massa chloor
m_HAuCl4=0.0250; %massa hoeveelheid HAuCL4 toegevoegd aan 250ml oplossing (g)
r_15=15/2;%straal nanodeeltje (nm)
r_30=30/2;%straal nanodeeltje (nm)
r_45=45/2;%straal nanodeeltje (nm)
p_Au=19.32;%massadichtheid goud (g/cm^3)
Da=1.661*10^(-24);%Eenheid dalton in g
MW_DNA=3.50*10^6*Da*10^6;% Moleculair gewicht DNA (ug/mol)
c_DNAsol=0.5;% Concentratie DNA oplossing (ug/ul)
v_DNAsol=2.5;% volumen DNA oplossing toegevoegd per wel (ul)

M_HAuCl4=M_H+M_Au+4*M_Cl; %molaire massa HAuCL4
%-----initiaties-------
m=[ r_15 r_30 r_45];
c_250=0; 
c_05=0;
for i=1:length(m)
    r=m(i)*10^(-7);% straal deeltje  (cm)
    V_Au=(4/3)* pi *r^3; %volume goudnanodeeltje (cm^3)
    N=( m_HAuCl4 * M_Au ) / ( M_HAuCl4 * p_Au * V_Au); % aantal GNP in 250ml solution
    c_250=(N*10^(-3))/250% concentratie GNP in 250ml solution (GNP/ul)
    c_05=(N/4)*2*10^(-3)% concentratie GNP in 0.5 ml solution (GNP/ul)
    N_GNP_30ul=c_05*30 %aantal gnp deeltjes in 30ul van 0.5ml oplossing
    N_DNAmol=c_DNAsol*v_DNAsol/MW_DNA %aantal DNA mol in 2.5ul oplossing
    verhoudingGNPDNA=N_GNP_30ul/N_DNAmol 
end
