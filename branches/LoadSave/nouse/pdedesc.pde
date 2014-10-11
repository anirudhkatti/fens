<Parameters>
NP = 3
DIM = 2

%-------------------------------------------------------
<Variables>
V

%-------------------------------------------------------
<Coefficients>
% MKSA metre-kilogram(me)-second-ampere��ǧ���밲��(��λ��)
% CGS centimeter-gram-second ����-��-����, cgs ��

%  ��poisson������ ���Ϊepsi d2v/dx2 �ұ�Ϊ������Ũ��	����epsiҪ����cm-1 ����1/dx2,��λ����cm-3��,�ұ�һ���˱�ĳ���Ҳ����
% Boltzmann constant in UI systems 
c_kb0  = 1.380e-23;
% Plank's constant in MKSA systems 
c_hbar = 1.054e-34;
% electron mass (Kg) 
%c_m0		9.109534e-31kg
% electron mass (1e4Kg) 
%�ٶȳ��ٶ�ƽ��ΪJ
%���ٶȵ�λcm s-1
c_m = 9.109534e-35;
% electron charge (C) 
c_qcharg = 1.602e-19;
% dielectric constant in vacuum (F/cm) 
c_eps0 = 8.854e-14;
% relative dielectric constant 
c_eps_Ge = 16;
c_eps_Si = 11.9;
c_eps_GaAs = 13.2;
c_epsi = (c_eps0*c_eps_Si);
c_ni_Ge = 2.4e13;
c_ni_Si = 1.5e10;
c_ni_GaAs = 1.6e6;

% low-field electron mobility in GaAs at 77K (cm^2/Vs) 
c_un0 = 25000;
c_un0si = 1500;
c_up0si = 450;
% low-energy momentum relaxation time (s) 
c_tp0 = (0.063*c_m*c_un0/c_qcharg);
%c_tp0	 = (9e-13);
c_tpn0 = (c_m*c_un0si/c_qcharg);
c_tpp0 = (c_m*c_up0si/c_qcharg);
% saturation velocity (cm/s) 
c_vsat = 2e7;
c_kb = (c_kb0/c_qcharg);


coeff_c = 1
coeff_f = 10

%-------------------------------------------------------
<PDES>
V,dot(coeff_c*grad(V),grad(SF))+(V*V-coeff_f)*SF

%-------------------------------------------------------
<Boundary>
V,[1:7] 1 V
V,[1,3] 1 V-1
%-------------------------------------------------------
<Mesh>	
D:\MATLAB6p5\work\work216\LoadSave\mesh.m