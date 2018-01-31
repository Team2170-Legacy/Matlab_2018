%init_Trajectories 
%Version 1

%RSLL: Red Start Left to Left Switch
BSML.x = [Field.BSM.x, Field.BSM.x - Robot.L, Field.BSM.x - Robot.L - 3*ft, Field.BSwitch.LVT_x + Robot.L/2];
BSML.y = [Field.BSM.y, Field.BSM.y, Field.BSwitch.RVT_y, Field.BSwitch.RVT_y];
BSML.v = 1.0;

BSMR.x = BSML.x;
BSMR.y = [Field.BSM.y, Field.BSM.y, Field.BSwitch.LVT_y, Field.BSwitch.LVT_y];
BSMR.v = 1.0;

 RSMR.x = [Field.RSM.x, Field.RSM.x + Robot.L, Field.RSM.x + Robot.L + 3*ft, Field.RSwitch.LVT_x - Robot.L/2];
 RSMR.y = [Field.RSM.y, Field.RSM.y, Field.RSwitch.RVT_y, Field.RSwitch.RVT_y];
 RSMR.v = 1.0;

 RSML.x = RSMR.x;
 RSML.y = [Field.RSM.y, Field.RSM.y, Field.RSwitch.LVT_y, Field.RSwitch.LVT_y];
 RSML.v = 1.0;


Field.BSML = BSML;
Field.BSMR = BSMR;
Field.RSMR = RSMR;
Field.RSML = RSML;