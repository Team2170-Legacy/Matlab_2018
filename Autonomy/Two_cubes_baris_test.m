init_Constants
Init_Robot_v002
Init_Field_v003
f1=figure;
hold on;
draw_Field_v001
axis equal;

% init_Trajectories_v006

x = [ ...
    (Field.RSwitch.LeftP.tl_x+Field.RSwitch.LeftP.tr_x)/2
    (Field.RSwitch.LeftP.tl_x+Field.RSwitch.LeftP.tr_x)/2
    Field.RedPlatZone.Cube1_x+13/2*in+Robot.L
    Field.RedPlatZone.Cube1_x+13/2*in+Robot.L/2
    ];

y = [...
    Field.RSwitch.LeftP.tl_y+Robot.L/2
    Field.RSwitch.LeftP.tl_y+3*(Robot.L/2)
    Field.RedPlatZone.Cube6_y+13/2*in+Robot.L
    Field.RedPlatZone.Cube6_y+13/2*in+Robot.L/2
    ];

plot (x, y, 'c-o');