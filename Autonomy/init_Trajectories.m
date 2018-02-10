%init_Trajectories 
%Version 1

%RSLL: Red Start Left to Left Switch
BSMR.x = [Field.BSM.x, Field.BSM.x - Robot.L, Field.BSM.x - Robot.L - 3*ft, Field.BSwitch.LVT_x + Robot.L/2];
BSMR.y = [Field.BSM.y, Field.BSM.y, Field.BSwitch.RVT_y, Field.BSwitch.RVT_y];
BSMR.v = 1.0;

BSML.x = BSMR.x;
BSML.y = [Field.BSM.y, Field.BSM.y, Field.BSwitch.LVT_y, Field.BSwitch.LVT_y];
BSML.v = 1.0;

RSMR.x = [Field.RSM.x, Field.RSM.x + Robot.L, Field.RSM.x + Robot.L + 3*ft, Field.RSwitch.LVT_x - Robot.L/2];
RSMR.y = [Field.RSM.y, Field.RSM.y, Field.RSwitch.RVT_y, Field.RSwitch.RVT_y];
RSMR.v = 1.0;

RSML.x = RSMR.x;
RSML.y = [Field.RSM.y, Field.RSM.y, Field.RSwitch.LVT_y, Field.RSwitch.LVT_y];
RSML.v = 1.0;

% RSTL.x = RSMR.x;
% RSTL.y = [Field.RSL.y, Field.RSL.y, Field.RSwitch.LVT_y, Field.RSwitch.LVT_y];
% RSTL.v = 1.0;
% 
% RSTR.x = RSMR.x;
% RSTR.y = [Field.RSL.y, Field.RSL.y, Field.RSwitch.RVT_y, Field.RSwitch.RVT_y];
% RSTR.v = 1.0;
% 
% % Go Straight
% 
% RSTS.x = [Field.RSM.x, 10*ft + Robot.L];
% RSTS.y = [Field.RSL.y, Field.RSL.y];
% RSTS.v = 1.0;
% 
% Field.RSTS = RSTS;
% 
Field.BSML = BSML;
Field.BSMR = BSMR;
Field.RSMR = RSMR;
Field.RSML = RSML;
% Field.RSTR = RSTR;
% Field.RSTL = RSTL;