function tern = tAxis(Graph, nPoints)
%Plot the ternary diagram and the main properties (Grid,
%ticklines, labels)
    
  hold on
  tern = Graph.tern;
  
  tern.Fig = gcf;
  
  axis equal
  
  tern.gca = gca;
  
  LineStyle = tern.LineStyle;

  % Trace the triangle representing the ternary diagram
  % From the coordinates of the three corners.
  C1 = [1 0 0 1];
  C2 = [0 1 0 0];
  [x  y] = sr2xy(C1, C2);
  h = plot(x, y);


  set(h, 'tag', 'TernAxis',...
	 'ButtonDownFcn', 'EdTern (get(gco, ''Parent''))',...
	 tern.Axis);
  tern.Handle.Axis = h;
  
  
  % Add the tick marks
  tern.Handle.Ticks = ticks (tern);
  set(tern.Handle.Ticks, 'ButtonDownFcn', 'EdTern (get(gco, ''Parent''))', tern.ticks);
  if ~tern.Flags.Ticks;
    set(tern.Handle.Ticks, 'visible', 'off');
  end

  % add the component name at the corners of the triangle
  [x y] = sr2xy(1,0);
  t(1) = text(x, y, tern.LabelsText{1},...
	      'HorizontalAlignment', 'left', ...
	      'VerticalAlignment', 'top');
  [x y] = sr2xy(0,1);
  t(2) = text(x,y, tern.LabelsText{2}, ...
	      'HorizontalAlignment', 'center', ...
	      'VerticalAlignment', 'bottom');
  [x y] = sr2xy(0,0);
  t(3) = text(x, y, tern.LabelsText{3},...
	      'HorizontalAlignment', 'right' , ...
	      'VerticalAlignment', 'top');
  % ternlabels contain some labels style properties.
  set(t, 'tag',  'tAxisLabels', 'ButtonDownFcn', 'EdTern (get(gco, ''Parent''))', tern.Label)
  tern.Handle.Labels = t;

  if ~tern.Flags.Labels
    set(t, 'visible', 'off')
  end

  % Add the text for the different tick marks. If not specified set to
  % 10 points 
  if nargin==1
    nPoints = 10;
  end    
  tern.Handle.TickLabels = tTickLabels(nPoints)
  set (tern.Handle.TickLabels, 'ButtonDownFcn', 'EdTern (get(gco, ''Parent''))')

  if (~tern.Flags.Ticks) 
    set (tern.Handle.TickLabels, 'visible', 'off')
  end

  
  %Draw the grid
  tern.Handle.Grid = tGrid;
  set(tern.Handle.Grid, 'tag', 'tAxisGrid')
  if (~tern.Flags.Grid)
    set (tern.Handle.Grid, 'visible', 'off')
  end
  set(tern.Handle.Grid, 'ButtonDownFcn', 'EdTern (get(gco, ''Parent''))')

% $$$   %Change the colors according to the ones found in tern.
% $$$   % First we extracting all the fields in tern.Colors
% $$$   ternField = fieldnames(tern.Colors);
% $$$   for i = 1 : length(ternField)
% $$$     if ~isfield (tern.Handle, ternField{i})
% $$$       error(sprintf(['The field %s can''t be found in tern.\n' ...
% $$$ 		     ' fields(tern) = %s'], ternField{i}, ...
% $$$ 		     cell2str(fieldnames(tern))))
% $$$     end
% $$$     set(getfield(tern.Handle, ternField{i}), ...
% $$$ 	'color', getfield(tern.Colors, ternField{i}))
% $$$   end
  
  ternField = fieldnames(tern.Handle);
  for i = 1 : length(ternField)
      set(getfield(tern.Handle, ternField{i}), 'HitTest', 'on');
  end

  Graph.tern = tern;
  set(tern.gca, 'UserData', Graph, ...
		'visible', 'off')



  
  hold off
