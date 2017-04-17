function hh = tline(XData, YData, varargin)
% Plot a line in a ternary diagram given the coordinates and a linestyle
% Should use the concentration instead C1, C2 and transform then
% into coordinates with [x, y] = sr2xy(C1, C2)
  plot (XData, YData, varargin{:})