function carrot = get_carrot(percentage, trajectory)

%   Step 1: calculate distances between each via point and store in new
%           vector (array) named distances

N   = length(trajectory.x);       % number of via points
distances   = zeros(N-1,1);       % reserve memory space for all distances and initialize to zero

for j=1:(N-1),
    dx              = trajectory.x(j) - trajectory.x(j+1);
    dy              = trajectory.y(j) - trajectory.y(j+1);
    distances(j)    = sqrt(dx^2 + dy^2);
    
    
end

cum_distance = cumsum(distances);
full_distance = sum(distances);

% temporary
carrot = distances;
