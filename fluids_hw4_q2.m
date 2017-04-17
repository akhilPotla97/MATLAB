clear
% input temp and pressure 


tern=TernInit; % this initializes the plot

% change axis labels
tern.LabelsText = {'Propane' 'Butane' 'Pentane'};

% to plot a particular composition (x1,x2,x3) where x3 = 1 - x2 - x1
% i.e.
oil = [0.40 0 0.60];

% first convert it using sr2xy (this makes the data correct on an
% equilateral triangle
[xoil yoil] = sr2xy(oil(1),oil(2)); % note you only use two data points

% then plot
h1 = plot(xoil,yoil,'ko','MarkerFaceColor','k','markersize',12);
% h1 is the handle to the plot for you matlab experts, last part is the
% fact that I like big symbols

hold on % keep data plot up

% do another
solvent = [0.8629 0 0.1371];
[xsol ysol] = sr2xy(solvent(1),solvent(2));
h2 = plot(xsol,ysol,'ks','MarkerFaceColor','k','markersize',12);

% to plot a particular composition (x1,x2,x3) where x3 = 1 - x2 - x1
% i.e.
oil = [0.225 0.775 0];

% first convert it using sr2xy (this makes the data correct on an
% equilateral triangle
[xoil yoil] = sr2xy(oil(1),oil(2)); % note you only use two data points

% then plot
h1 = plot(xoil,yoil,'ko','MarkerFaceColor','k','markersize',12);
% h1 is the handle to the plot for you matlab experts, last part is the
% fact that I like big symbols

hold on % keep data plot up


% do another
solvent = [0.4854 0.5146 0];
[xsol ysol] = sr2xy(solvent(1),solvent(2));
h2 = plot(xsol,ysol,'ks','MarkerFaceColor','k','markersize',12)


x = [0.28540276 0.507537023 0.207060216;
     0.318649289 0.360292215 0.321058496;
     0.300006955 0.442856974 0.257136045;
     0.31888676 0.359240473 0.321872774;
     0.338356927 0.273009577 0.388633457;
     0.352555702 0.210124928 0.43731936];
 
y = [0.615691112 0.336998554 0.047310354;
     0.687412885 0.239229751 0.073357362;
     0.647196317 0.29405177 0.058751978;
     0.687925174 0.238531406 0.073543413;
     0.729927602 0.181275116 0.088797292;
     0.760558208 0.139520456 0.099921338];

for i=1:6
    % to plot a particular composition (x1,x2,x3) where x3 = 1 - x2 - x1
    % i.e.
    oil = [x(i,1) x(i,2) x(i,3)];
    % first convert it using sr2xy (this makes the data correct on an
    % equilateral triangle
    [xoil yoil] = sr2xy(oil(1),oil(2)); % note you only use two data points

    % then plot
    h1 = plot(xoil,yoil,'ko','MarkerFaceColor','k','markersize',12);
    % h1 is the handle to the plot for you matlab experts, last part is the
    % fact that I like big symbols

    hold on % keep data plot up


    % do another
    solvent = [y(i,1) y(i,2)];
    [xsol ysol] = sr2xy(solvent(1),solvent(2));
    h2 = plot(xsol,ysol,'ks','MarkerFaceColor','k','markersize',12);
    hold on % prepare for next plot
    
    % now do a line between two points
    data = [oil(1) oil(2); solvent(1) solvent(2)]; % each data point is in a row x1 and x2 are columns
    [xl yl] = sr2xy(data(:,1),data(:,2))

    h3 = plot(xl,yl,'k^-','MarkerFaceColor','k','markersize',8);
end

% now do a line between two points
data = [0.40 0; 0.225 0.775]; % each data point is in a row x1 and x2 are columns
[xl yl] = sr2xy(data(:,1),data(:,2))

h3 = plot(xl,yl,'k^-','MarkerFaceColor','k','markersize',8);

hold on

% now do a line between two points
data = [0.8629 0; 0.4854 0.5146]; % each data point is in a row x1 and x2 are columns
[xl yl] = sr2xy(data(:,1),data(:,2))

h3 = plot(xl,yl,'k^-','MarkerFaceColor','k','markersize',8);

hold on

DaveAxis