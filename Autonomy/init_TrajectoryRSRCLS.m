

RSRCLS.x = [Field.RSRC.x, (Field.RSwitch.RightP.tr_x + Field.RSwitch.RightP.tl_x)/2, (Field.RSwitch.RightP.tr_x + Field.RSwitch.RightP.tl_x)/2];
RSRCLS.y = [Field.RSRC.y, Field.RSRC.y, Field.RSwitch.RightP.br_y-Robot.L/2];
RSRCLS.v = 2.0;
RSRCLS.t_final = traj_length(RSRCLS) / RSRCLS.v  * 1.3;
RSRCLS.name = 'RSRCLS';