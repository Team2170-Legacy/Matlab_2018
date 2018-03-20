

RSLCLS.x = [Field.RSLC.x, (Field.RSwitch.RightP.tr_x + Field.RSwitch.RightP.tl_x)/2, (Field.RSwitch.RightP.tr_x + Field.RSwitch.RightP.tl_x)/2];
RSLCLS.y = [Field.RSLC.y, Field.RSLC.y, Field.RSwitch.LeftP.tr_y+Robot.L/2];
RSLCLS.v = 2.0;
RSLCLS.t_final = traj_length(RSLCLS) / RSLCLS.v  * 1.3;
RSLCLS.name = 'RSLCLS';