init_Constants
Init_Robot_v002
Init_Field_v003
f1=figure;
hold on;
draw_Field_v001
axis equal;

% init_Trajectories_v006
% edge of cube and corner of cube to center of mass of robot is 18"

dx1             = sqrt(18*in^2/2);
dy1             = dx1;
cube_corner_x   = Field.RedPlatZone.Cube6_x+13*in/2;
cube_corner_y   = Field.RedPlatZone.Cube6_y+13*in/2;

x = [ ...
    (Field.RSwitch.LeftP.tl_x+Field.RSwitch.LeftP.tr_x)/2
    (Field.RSwitch.LeftP.tl_x+Field.RSwitch.LeftP.tr_x)/2
    cube_corner_x+Robot.L
    cube_corner_x+2*Robot.L-4*in
    cube_corner_x+Robot.L
    cube_corner_x+dx1
    ];

y = [...
    Field.RSwitch.LeftP.tl_y+Robot.L/2
    cube_corner_y+Robot.L
    cube_corner_y+Robot.L
    cube_corner_y+2*Robot.L-4*in
    cube_corner_y+Robot.L
    cube_corner_y+dy1
    ];

plot (x, y, 'c-o');