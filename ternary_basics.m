clear
% input temp and pressure 


tern=TernInit; % this initializes the plot

% change axis labels
tern.LabelsText = {'C1' 'C2' 'C3'};

% to plot a particular composition (x1,x2,x3) where x3 = 1 - x2 - x1
% i.e.
oil = [0.30 0.05 0.70];

% first convert it using sr2xy (this makes the data correct on an
% equilateral triangle
[xoil yoil] = sr2xy(oil(1),oil(2)); % note you only use two data points

% then plot
h1 = plot(xoil,yoil,'ko','MarkerFaceColor','k','markersize',12);
% h1 is the handle to the plot for you matlab experts, last part is the
% fact that I like big symbols

hold on % keep data plot up


% do another
solvent = [0.03 0.92];
[xsol ysol] = sr2xy(solvent(1),solvent(2));
h2 = plot(xsol,ysol,'ks','MarkerFaceColor','k','markersize',12);

% now do a line between two points
data = [0.30 0.05; 0.03 0.92]; % each data point is in a row x1 and x2 are columns
[xl yl] = sr2xy(data(:,1),data(:,2))

h3 = plot(xl,yl,'k^-','MarkerFaceColor','k','markersize',8);

% this command puts up the axis
DaveAxis

hold off % prepare for next plot

