%
%   draw_start_positions.m
%
%   Draws the multiple available starting positions on the field
%
%   Martin Krucinski
%   2018-03-04

Init
figure
hold on
axis equal
set(gcf, 'DefaultLineLineWidth',2);
draw_Field_v001

%   RSMx (i.e. RSML and RMSR)

Robot.x     = RSML.x(1);        % 0.4381;
Robot.y     = RSML.y(1);
Robot.theta = 0;

draw_Robot(Robot)

%   RSRx

Robot.x     = RSRL.x(1);       
Robot.y     = RSRL.y(1);
Robot.theta = 0;

draw_Robot(Robot)


