function tern = ternary(varargin);
  
%
% M = Map2D(a) creates a 2d map object from another object
  
  if nargin ==0
    tern = TernInit;
    tern = tAxis (tern);
  elseif (nargin == 1)
    if ~isa(varargin{1},'ternary')
      error('if one argument, it must be a ternary object');
    end
    M = a;
  elseif (nargin == 3)
    tern.children = [];
    tern.LineStyle = {'linewidth', 1, 'Color', 'k'};
    tern.Handle = [];
    tern.Labels.text = varargin;
    tern.Labels.hh   = [];
    tern.Ticks = [];
    tern.Flags.Ticks = 1;
    tern.Flags.Grid  = [];
    tern.Flags.SubTicks = [];
    tern.Flag.Labels = 1;
    M = tAxis (M);

  else 
    error ('needs one or three arguments');
  end
