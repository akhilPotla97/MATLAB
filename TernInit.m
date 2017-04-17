function tern = TernInit();
  
%
% M = Map2D(a) creates a 2d map object from another object
  
    tern.children.curve = [];
    tern.Fig =[];
    tern.gca = [];
    tern.LineStyle = {'linewidth', 1, 'Color', 'k'};

    tern.LabelsText = {'C1', 'C2', 'C3'};
    tern.Labels.fontsize = 14;
    tern.Labels.fontname = 'helvetica';
    tern.Labels.color = 'k';
    tern.Labels.fontweight = 'normal';
    tern.Labels.fontangle = 'normal';  

    tern.titleText ='';  
    tern.title.fontsize = 16;  
    tern.title.fontname = 'helvetica';  
    tern.title.color = 'k';  
    tern.title.fontweight = 'normal';
    tern.title.fontangle = 'normal';  
    
    tern.string.fontsize = 12;  
    tern.string.fontname = 'helvetica';  
    tern.string.fontweight = 'normal';
    tern.string.color = 'k';  
    tern.string.fontangle = 'normal';  

    tern.legend.fontsize = 12;  
    tern.legend.fontname = 'helvetica';  
    tern.legend.fontweight = 'normal';
    tern.legend.fontangle = 'normal';  
    tern.legendHandle = [];
    tern.legendStrcell = [];

    tern.Handle.Axis = [];
    tern.Handle.Labels = [];
    tern.Handle.Ticks = [];
    tern.Handle.Grid = [];
    
    tern.LineProp.linestyle = {'-'};
    tern.LineProp.linewidth = 1;
    tern.LineProp.marker = {'none'};
    tern.LineProp.markersize =6;
    tern.LineProp.color = {'k'};

    
    tern.Flags.Ticks = 1;
    tern.Flags.TickLabels = 1;
    tern.Flags.Grid  = 0;
    tern.Flags.SubTicks = 0;
    tern.Flags.Labels = 1;

    tern.Axis.linestyle = '-';
    tern.Axis.color = 'k';
    tern.Axis.linewidth = 2;
    
    tern.Colors.Axis = 'k';
    tern.Colors.Grid = [.3 .3 .3];
    tern.Colors.Labels = 'k';
    tern.Colors.Ticks  = 'k';

    
    tern.ticksSize = [.025 .0125];
    tern.ticks.linewidth = .2;
    tern.ticks.color =  'k' ;
