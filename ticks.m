function hh = ticks(tern)

  LineStyle = tern.LineStyle;
  nPoints = 10;
  TickLength = 0.02;
  
  oldNextPlot = get(gca, 'NextPlot');
  set(gca, 'NextPlot','add');
  
  
  % C1 - C2 axis
  C1=linspace(0, 1, nPoints+1);
  C2=1-C1;
  [x, y] = sr2xy(C1,C2);
  [tx1, ty1] =  tickCoord (x, y, pi, -2*pi/3, TickLength);
  
  % C1 - C3 axis
  C1=linspace(0, 1, nPoints+1);
  C2=zeros(1,nPoints+1);
  [x, y] = sr2xy(C1,C2);
  [tx2, ty2] =  tickCoord (x, y, pi/3, 2*pi/3, TickLength);

  % C2 - C3 axis
  C1=zeros(1,nPoints+1);
  C2=linspace(1, 0, nPoints+1);
  [x, y] = sr2xy(C1,C2);
  [tx3, ty3] =  tickCoord (x, y, 0 , -pi/3, TickLength);

  hh = plot ([tx1;tx2;tx3],  [ty1;ty2;ty3], LineStyle{:});
  set (gca, 'NextPlot', oldNextPlot);
    

  
function [tx, ty] =  tickCoord (x, y, angle1, angle2, TickLength)
% this function allocate a big vector containing the coord of
% the small tick marks. The NaN every four coordinates is put 
% in order not to connect all the tickmarks together.
  
  tx = ones(4 * (length(x) - 2), 1)*NaN ;
  ty = ones(4 * (length(y) - 2), 1)*NaN ;

  
  tx([1:4:end]) = x(2:end-1) + cos(angle1) * TickLength;
  tx([2:4:end]) = x(2:end-1) ;
  tx([3:4:end]) = x(2:end-1) + cos(angle2) * TickLength;
  
  ty([1:4:end]) = y(2:end-1) + sin(angle1) * TickLength;
  ty([2:4:end]) = y(2:end-1) ;
  ty([3:4:end]) = y(2:end-1) + sin(angle2) * TickLength;
  
