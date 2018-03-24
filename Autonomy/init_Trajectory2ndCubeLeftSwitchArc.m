[SecondCubeLeftArc] = get_Curve(-90*deg, 90*deg, 1, 5, .4, 5.8, 6.3);

x = [(Field.RSwitch.LeftP.tl_x+Field.RSwitch.LeftP.tr_x)/2,(Field.RSwitch.LeftP.tl_x+Field.RSwitch.LeftP.tr_x)/2, (Field.RSwitch.LeftP.tl_x+Field.RSwitch.LeftP.tr_x)/2 + .3, SecondCubeLeftArc.x];

y = [Field.RSwitch.LeftP.tl_y+Robot.L/2, cube_corner_y+Robot.L,cube_corner_y+Robot.L, SecondCubeLeftArc.y];

SecondCubeLeftSwitchArc.x = x;
SecondCubeLeftSwitchArc.y = y;
SecondCubeLeftSwitchArc.v = 2.0;
SecondCubeLeftSwitchArc.t_final = 2.5;
SecondCubeLeftSwitchArc.name = 'SecondCubeLeftSwitchArc';
SecondCubeLeftSwitchArc.theta_start = -90*deg;
SecondCubeLeftSwitchArc.Drive_Forward = [...
    false
    true
    true
    true
    true
    true
    true
    ];