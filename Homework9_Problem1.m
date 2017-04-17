%Homework9_Problem1.m
clear all
a = [22.243, 5.977, -3.499, 7.464];
substance = [304.2 7.376e6 .225];
P = 10e6;
T=250;
R= 8.314;
Cp = Cp_star(a,T)
H_IG = H_IG(a,T);
S_IG = S_IG(a,T);
[a1 b dadt A B] = PR_parameters(P,T,substance);
Z = PR_Z(A,B)
V = Z*R*T/P
S = PR_S(P,T,a1,b,dadt,A,B,Z)
H = PR_H(P,T,a1,b,dadt,A,B,Z)