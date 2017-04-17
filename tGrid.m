function hh = tGrid()
  C = [.1:.1:.9];
  x=[];
  y=[];
  for i = 1: length(C)
    C1 = [C(i) C(i)];
    C2 = [0 1-C(i)];
    [tmpx  tmpy] = sr2xy(C1, C2);
    x = [tmpx NaN x ];
    y = [tmpy NaN y ];
  end

  for i = 1: length(C)
    C2 = [C(i) C(i)];
    C1 = [0 1-C(i)];
    [tmpx  tmpy] = sr2xy(C1, C2);
    x = [tmpx NaN x ];
    y = [tmpy NaN y ];
  end
  
  for i = 1: length(C)
    C2 = [1-C(i) 0];
    C1 = [0 1-C(i)];
    [tmpx  tmpy] = sr2xy(C1, C2);
    x = [tmpx NaN x ];
    y = [tmpy NaN y ];
  end
  
  
  hh = line (x,y, 'Linestyle', ':', 'color', 'k');
  
