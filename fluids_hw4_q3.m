clear
% input temp and pressure 


tern=TernInit; % this initializes the plot

% change axis labels
tern.LabelsText = {'Propane' 'Butane' 'Pentane'};

% to plot a particular composition (x1,x2,x3) where x3 = 1 - x2 - x1
% i.e.
oil = [0 .8 0.20];

% first convert it using sr2xy (this makes the data correct on an
% equilateral triangle
[xoil yoil] = sr2xy(oil(1),oil(2)); % note you only use two data points

% then plot
h1 = plot(xoil,yoil,'ko','MarkerFaceColor','k','markersize',12);
% h1 is the handle to the plot for you matlab experts, last part is the
% fact that I like big symbols

hold on % keep data plot up

% do another
solvent = [0 0.9 0.1];
[xsol ysol] = sr2xy(solvent(1),solvent(2));
h2 = plot(xsol,ysol,'ks','MarkerFaceColor','k','markersize',12);

hold on % prepare for next plot

% to plot a particular composition (x1,x2,x3) where x3 = 1 - x2 - x1
% i.e.
oil = [.17 0 0.83];

% first convert it using sr2xy (this makes the data correct on an
% equilateral triangle
[xoil yoil] = sr2xy(oil(1),oil(2)); % note you only use two data points

% then plot
h1 = plot(xoil,yoil,'ko','MarkerFaceColor','k','markersize',12);
% h1 is the handle to the plot for you matlab experts, last part is the
% fact that I like big symbols

hold on % keep data plot up


% do another
solvent = [.68 0];
[xsol ysol] = sr2xy(solvent(1),solvent(2));
h2 = plot(xsol,ysol,'ks','MarkerFaceColor','k','markersize',12)


x = [0.078385294 0.425152562 0.496462162;
     0.105339208 0.305777081 0.588883644;
     0.098519689 0.335979773 0.565500679;
     0.118006718 0.249674188 0.63231911;
     0.137715491 0.162386306 0.699899018;
     0.146942745 0.121520113 0.731537153];
 
y = [0.299379566 0.499790457 0.200829977;
     0.40232557 0.359457949 0.238216503;
     0.376279531 0.394962889 0.228757591;
     0.450706992 0.293505879 0.255787131;
     0.525981367 0.190894125 0.283124706;
     0.561223324 0.142853644 0.295923035];

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
data = [0 .80; .17 0]; % each data point is in a row x1 and x2 are columns
[xl yl] = sr2xy(data(:,1),data(:,2))

h3 = plot(xl,yl,'k^-','MarkerFaceColor','k','markersize',8);

hold on

% now do a line between two points
data = [0 0.9; .68 0]; % each data point is in a row x1 and x2 are columns
[xl yl] = sr2xy(data(:,1),data(:,2))

h3 = plot(xl,yl,'k^-','MarkerFaceColor','k','markersize',8);

hold on
DaveAxis