x = [cube_corner_x+dx1+Robot.L/sqrt(2) cube_corner_x+dx1+Robot.L/sqrt(2) - 1.5*ft];
y = [cube_corner_y+dy1+Robot.L/sqrt(2) cube_corner_y+dy1+Robot.L/sqrt(2) - 1.5*ft];

SecondCubeLeftSwitchFoward.x = x;
SecondCubeLeftSwitchFoward.y = y;
SecondCubeLeftSwitchFoward.v = 2.0;
SecondCubeLeftSwitchFoward.t_final = 1.0;
SecondCubeLeftSwitchFoward.name = 'SecondCubeLeftSwitchFoward';
SecondCubeLeftSwitchFoward.theta_start = -135*deg;