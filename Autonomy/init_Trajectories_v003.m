%init_Trajectories
%Version 3



%works
BSMR.x = [Field.BSM.x, Field.BSM.x - Robot.L, Field.BSM.x - Robot.L - 3*ft, Field.BSwitch.LVT_x + Robot.L/2];
BSMR.y = [Field.BSM.y, Field.BSM.y, Field.BSwitch.RVT_y, Field.BSwitch.RVT_y];
BSMR.v = 1.0;
BSMR.t_final = 6.0;


%BSML.x = [Field.BSM.x, Field.BSM.x - Robot.L, 15.25, 15, 14.75, 14.5, 14.25, Field.BSwitch.LVT_x + Robot.L/2];
%BSML.y = [Field.BSM.y, Field.BSM.y, 4, 3.4, 3.1, 2.9, Field.BSwitch.LVT_y, Field.BSwitch.LVT_y];

BSML.x = [Field.BSM.x, Field.BSM.x - Robot.W/2, 15.25, 15, 14.75, 14.5, 14.25, Field.BSwitch.LVT_x + Robot.L/2];
BSML.y = [Field.BSM.y, Field.BSM.y, 4, 3.4, 3.1, 2.9, Field.BSwitch.LVT_y, Field.BSwitch.LVT_y];
BSML.v = 1.0;
BSML.t_final = 6.0;

%works
RSMR.x = [Field.RSM.x, Field.RSM.x + Robot.L, Field.RSM.x + Robot.L + 3*ft, Field.RSwitch.LVT_x - Robot.L/2];
RSMR.y = [Field.RSM.y, Field.RSM.y, Field.RSwitch.RVT_y, Field.RSwitch.RVT_y];
RSMR.v = 1.0;
RSMR.t_final = 6.0;

%change this
%RSML.x = [Field.RSM.x, Field.RSM.x + Robot.L, Field.RSM.x + Robot.L + 3*ft, Field.RSwitch.LVT_x - Robot.L/2];
%RSML.y = [Field.RSM.y, Field.RSM.y, Field.RSwitch.LVT_y, Field.RSwitch.LVT_y];


%RSML.x = [Field.RSM.x, Field.RSM.x + Robot.L, 1.25, 1.35, 1.5, 1.7, 2, Field.RSwitch.LVT_x - Robot.L/2];
%RSML.y = [Field.RSM.y, Field.RSM.y, 4.25, 4.6, 5, 5.3, Field.RSwitch.LVT_y, Field.RSwitch.LVT_y];

RSML.x = [ ...
    Field.RSM.x,
    Field.RSM.x + Robot.W/2,
    1.25,
    1.35,
    1.5,
    1.7,
    2,
    Field.RSwitch.LVT_x - Robot.L/2 ];
RSML.y = [...
    Field.RSM.y, Field.RSM.y, 4.25, 4.6, 5, 5.3, Field.RSwitch.LVT_y, Field.RSwitch.LVT_y];
RSML.v = 1.0;
RSML.t_final = 6.0;

RSMLSArc = get_Curve(10*deg,130*deg,1,20,1,3.6,6.6);
%RSMLS.x = [Field.RSM.x, Field.RSM.x + Robot.L, 1.57, 2.17, 3.17, 4.17, (Field.RSwitch.LeftP.tl_x + Field.RSwitch.LeftP.br_x)/2, (Field.RSwitch.LeftP.tl_x + Field.RSwitch.LeftP.br_x)/2];
%RSMLS.y = [Field.RSM.y, Field.RSM.y, 6.5, 7, 7.2, 7, 7, Field.RSwitch.LeftP.tl_y+Robot.L/2];
RSMLS.x = [[Field.RSM.x, Field.RSM.x + 1*ft, 1.0706, 1.0706], RSMLSArc.x, (Field.RSwitch.LeftP.tl_x + Field.RSwitch.LeftP.br_x)/2, (Field.RSwitch.LeftP.tl_x + Field.RSwitch.LeftP.br_x)/2];
RSMLS.y = [[Field.RSM.y, Field.RSM.y, 4.04, 5.1723], RSMLSArc.y, Field.RSwitch.LeftP.tl_y+Robot.L/2 + .5, Field.RSwitch.LeftP.tl_y+Robot.L/2];
RSMLS.v = 1.0;
RSMLS.t_final = 10.0;

%works
RSMRS.x =  [Field.RSM.x, Field.RSM.x + Robot.L, 1.57, 2.17, 3.17, 4.17, (Field.RSwitch.LeftP.tl_x + Field.RSwitch.LeftP.br_x)/2, (Field.RSwitch.LeftP.tl_x + Field.RSwitch.LeftP.br_x)/2];
RSMRS.y = [Field.RSM.y, Field.RSM.y, 1.5, 1, 0.8, 1, 1.4, 1.8];
RSMRS.v = 1.0;
RSMRS.t_final = 10.0;

BSMLS.x = [Field.BSM.x, 15.2, 14.9, 14.3, 13.3, 12.3, 12, 12];
BSMLS.y = Field.W - RSMLS.y;
BSMLS.v = 1.0;
BSMLS.t_final = 10.0;

%works
BSMRS.x = BSMLS.x;
BSMRS.y = Field.W - RSMRS.y;
BSMRS.v = 1.0;
BSMRS.t_final = 10.0;

Straight.x = [Field.RSR.x, Field.RSR.x+10*ft];
Straight.y = [Field.RSR.y, Field.RSR.y];
Straight.v = 1;
Straight.t_final = 6;


%TurnTest.x = [Field.RSR.x];
%TurnTest.y = [Field.RSR.y+5*ft];
Arc = get_Curve(90*deg, -90*deg, 1, 18, 5*ft, 3*ft+Field.RSR.x+6, Field.RSR.y+5*ft);
Arc.v = 1.0;
Arc.t_final = 10.0;
Arc.x = [6 Arc.x 6];
Arc.y = [Arc.y(1) Arc.y Arc.y(length(Arc.y))];
%TurnTest.x = [ TurnTest.x Points.x];
%TurnTest.y = [ TurnTest.y Points.y];


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
% RSLS.x = [Field.RSM.x, 10*ft + Robot.L];
% RSLS.y = [Field.RSL.y, Field.RSL.y];
% RSLS.v = 1.0;
%
% Field.RSTS = RSTS;
%
Field.BSML = BSML;
Field.BSMR = BSMR;
Field.RSMR = RSMR;
Field.RSML = RSML;
Field.Straight = Straight;
%Field.TurnTest = TurnTest;
% Field.RSTR = RSTR;
% Field.RSTL = RSTL;

