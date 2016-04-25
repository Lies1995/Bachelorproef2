M_H=1.008;
M_Au=196.967;
M_Cl=35.453;
m_HAuCl4=0.0250;%g
r_15=12.98/2;%nm
r_30=18.29/2;%nm
%r_30=30/2;
r_45=46.75/2;%nm
p_Au=19.32;%g/cm^3

M_HAuCl4=M_H+M_Au+4*M_Cl;
m=[ r_15 r_30 r_45];
for i=1:length(m)
    r=m(i)*10^(-7);
    V_Au=(4/3)* pi *r^3;
    N=10^(-3)*( m_HAuCl4 * M_Au ) / (250 * M_HAuCl4 * p_Au * V_Au)
    
end