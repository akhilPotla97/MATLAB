
% create (x,y,z) triplets of points using meshgrid
[x,y,z] = meshgrid(-2:dx:2,-2:dx:2,-2:dx:2);
% compute a function d(x,y,z)
d = x .* exp(-x.^2 - y.^2 - z.^2);

% visualize cross-sections of d d(10,:,:), d(:,10,:)
% and d(:,:,14)
slice(d,10,10,10)

% make the plot pretty
colorbar
set(gca, 'fontsize', 16)
title('3D array example')