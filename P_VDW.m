function [P] = P_VDW(T,V_mol,a,b)
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here
P=(8.314*T./(V_mol-b))-(a./V_mol.^2);
end