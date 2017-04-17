clear
% input temp and pressure 


tern=TernInit; % this initializes the plot

% change axis labels
tern.LabelsText = {'Brine' 'IPA' 'IC8'};

% to plot a particular composition (x1,x2,x3) where x3 = 1 - x2 - x1
% i.e.
oil = [1 0 0];

% first convert it using sr2xy (this makes the data correct on an
% equilateral triangle
[xoil yoil] = sr2xy(oil(1),oil(2)); % note you only use two data points

% then plot
h1 = plot(xoil,yoil,'ko','MarkerFaceColor','k','markersize',12);
% h1 is the handle to the plot for you matlab experts, last part is the
% fact that I like big symbols

hold on % keep data plot up


% do another
solvent = [0 0];
[xsol ysol] = sr2xy(solvent(1),solvent(2));
h2 = plot(xsol,ysol,'ks','MarkerFaceColor','k','markersize',12);

% now do a line between two points
data = [0.05 0.10; 0.30 0.40]; % each data point is in a row x1 and x2 are columns
[xl yl] = sr2xy(data(:,1),data(:,2))

h3 = plot(xl,yl,'k^-','MarkerFaceColor','k','markersize',8);

% change axis labels
tern.LabelsText = {'Brine' 'IPA' 'IC8'};

% to plot a particular composition (x1,x2,x3) where x3 = 1 - x2 - x1
% i.e.
oil = [0.876 0.124 0.000];

% first convert it using sr2xy (this makes the data correct on an
% equilateral triangle
[xoil yoil] = sr2xy(oil(1),oil(2)); % note you only use two data points

% then plot
h1 = plot(xoil,yoil,'ko','MarkerFaceColor','k','markersize',12);
% h1 is the handle to the plot for you matlab experts, last part is the
% fact that I like big symbols

hold on % keep data plot up


% do another
solvent = [0.001 0.014];
[xsol ysol] = sr2xy(solvent(1),solvent(2));
h2 = plot(xsol,ysol,'ks','MarkerFaceColor','k','markersize',12);

% now do a line between two points
data = [0.05 0.10; 0.30 0.40]; % each data point is in a row x1 and x2 are columns
[xl yl] = sr2xy(data(:,1),data(:,2))

h3 = plot(xl,yl,'k^-','MarkerFaceColor','k','markersize',8);

% change axis labels
tern.LabelsText = {'Brine' 'IPA' 'IC8'};

% to plot a particular composition (x1,x2,x3) where x3 = 1 - x2 - x1
% i.e.
oil = [0.727 0.272 0.001];

% first convert it using sr2xy (this makes the data correct on an
% equilateral triangle
[xoil yoil] = sr2xy(oil(1),oil(2)); % note you only use two data points

% then plot
h1 = plot(xoil,yoil,'ko','MarkerFaceColor','k','markersize',12);
% h1 is the handle to the plot for you matlab experts, last part is the
% fact that I like big symbols

hold on % keep data plot up


% do another
solvent = [0.008 0.094];
[xsol ysol] = sr2xy(solvent(1),solvent(2));
h2 = plot(xsol,ysol,'ks','MarkerFaceColor','k','markersize',12);

% now do a line between two points
data = [0.05 0.10; 0.30 0.40]; % each data point is in a row x1 and x2 are columns
[xl yl] = sr2xy(data(:,1),data(:,2))

h3 = plot(xl,yl,'k^-','MarkerFaceColor','k','markersize',8);

% change axis labels
tern.LabelsText = {'Brine' 'IPA' 'IC8'};

% to plot a particular composition (x1,x2,x3) where x3 = 1 - x2 - x1
% i.e.
oil = [0.551 0.430 0.019];

% first convert it using sr2xy (this makes the data correct on an
% equilateral triangle
[xoil yoil] = sr2xy(oil(1),oil(2)); % note you only use two data points

% then plot
h1 = plot(xoil,yoil,'ko','MarkerFaceColor','k','markersize',12);
% h1 is the handle to the plot for you matlab experts, last part is the
% fact that I like big symbols

hold on % keep data plot up


% do another
solvent = [0.026 0.200];
[xsol ysol] = sr2xy(solvent(1),solvent(2));
h2 = plot(xsol,ysol,'ks','MarkerFaceColor','k','markersize',12);

% now do a line between two points
data = [0.05 0.10; 0.30 0.40]; % each data point is in a row x1 and x2 are columns
[xl yl] = sr2xy(data(:,1),data(:,2))

h3 = plot(xl,yl,'k^-','MarkerFaceColor','k','markersize',8);

% change axis labels
tern.LabelsText = {'Brine' 'IPA' 'IC8'};

% to plot a particular composition (x1,x2,x3) where x3 = 1 - x2 - x1
% i.e.
oil = [0.363 0.538 0.099];

% first convert it using sr2xy (this makes the data correct on an
% equilateral triangle
[xoil yoil] = sr2xy(oil(1),oil(2)); % note you only use two data points

% then plot
h1 = plot(xoil,yoil,'ko','MarkerFaceColor','k','markersize',12);
% h1 is the handle to the plot for you matlab experts, last part is the
% fact that I like big symbols

hold on % keep data plot up


% do another
solvent = [0.077 0.364];
[xsol ysol] = sr2xy(solvent(1),solvent(2));
h2 = plot(xsol,ysol,'ks','MarkerFaceColor','k','markersize',12);

% now do a line between two points
data = [0.05 0.10; 0.30 0.40]; % each data point is in a row x1 and x2 are columns
[xl yl] = sr2xy(data(:,1),data(:,2))

h3 = plot(xl,yl,'k^-','MarkerFaceColor','k','markersize',8);

% this command puts up the axis
DaveAxis

hold off % prepare for next plot

