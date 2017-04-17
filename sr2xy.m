function [x, y] = sr2xy(C1, C2)
% Make the conversion between the concentration and the cartesian
% space for  ternary diagrams.
x = C1 + .5*C2;
y= sqrt(3)/2 *C2;
