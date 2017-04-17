q = [400;-100;-100;-100;-100]; % The flow rates of the 5 wells
h = 10;
xi = [0;500;-500;-500;500]; % The x coordinates of the 5 wells
yi = [0;500;500;-500;-500]; % The y coordinates of the 5 wells


% Isopotential lines
x = -600:10:600; % x limits of the graph
y = -600:10:600; % y limits of the graph
[X,Y] = meshgrid(x,y);

phiSum = 0; 
for i = 1:length(xi)
    phiSum = phiSum + q(i)*log((X - xi(i)).^2 + (Y - yi(i)).^2); 
end
    
phi = (-1/(4*pi*1*10)).*phiSum; % Final calculation of the pressure potential
contour(X,Y,phi,40)

% Streamlines
psiSum = 0;
for i = 1:length(xi)
   psiSum = psiSum + q(i)*atan((Y - yi(i))./(X - xi(i))); 
end
hold on

psi = -1*psiSum/(2*pi*1*10);      % Calculating the streamline function
contour(X,Y,psi,20)