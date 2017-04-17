function t = tTickLabels(nPoints)
%Plot the ticklabels for a ternary diagram  
  
  TickLabels = num2str([90:-nPoints:10]');


% C1 - C2 axis
  s=linspace(0, 1, nPoints+1);
  r=1-s;
  [x, y] = sr2xy(s,r);
  t1 = text (x(2:end-1), y(2:end-1), TickLabels,...
	    'HorizontalAlignment', 'left' , ...
	    'VerticalAlignment', 'bottom',...
	    'rotation',0);

% C1 - C3 axis
  r=linspace(0, 1, nPoints+1);
  s=zeros(1,nPoints+1);
  [x, y] = sr2xy(s,r);
  t2 = text (x(2:end-1), y(2:end-1), TickLabels,...
	'HorizontalAlignment', 'right' , ...
	'VerticalAlignment', 'top',...
	'rotation',-60);
% C2 - C3 axis
  r=zeros(1,nPoints+1);
  s=linspace(1, 0, nPoints+1);
  [x, y] = sr2xy(s,r);
  t3 = text (x(2:end-1), y(2:end-1), TickLabels,...
	'HorizontalAlignment', 'right' , ...
	'VerticalAlignment', 'top',...
	'rotation',60);

  t= [ t1 t2 t3];

  set(t, 'tag', 'tAxisTickLabels')

  
