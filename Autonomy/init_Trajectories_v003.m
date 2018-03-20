%   init_Trajectories
%   Version 3
%
%    Adonis Canada, Priyanshu Agrawal, Baris Sengezen
%   
%   2018-03-05  Martin Krucinski
%               Added additional starting point Right SR,
%               and additional move distance at end of the move, add_x
%
%-------------------------------------------------------------------------
%   BSMR    works
BSMR.x = [Field.BSM.x, Field.BSM.x - Robot.L, Field.BSM.x - Robot.L - 3*ft, Field.BSwitch.LVT_x + Robot.L/2];
BSMR.y = [Field.BSM.y, Field.BSM.y, Field.BSwitch.RVT_y, Field.BSwitch.RVT_y];
BSMR.v = 1.0;
BSMR.t_final = 6.0;

%-------------------------------------------------------------------------
%   BSML
%BSML.x = [Field.BSM.x, Field.BSM.x - Robot.L, 15.25, 15, 14.75, 14.5, 14.25, Field.BSwitch.LVT_x + Robot.L/2];
%BSML.y = [Field.BSM.y, Field.BSM.y, 4, 3.4, 3.1, 2.9, Field.BSwitch.LVT_y, Field.BSwitch.LVT_y];

BSML.x = [Field.BSM.x, Field.BSM.x - Robot.W/2, 15.25, 15, 14.75, 14.5, 14.25, Field.BSwitch.LVT_x + Robot.L/2];
BSML.y = [Field.BSM.y, Field.BSM.y, 4, 3.4, 3.1, 2.9, Field.BSwitch.LVT_y, Field.BSwitch.LVT_y];
BSML.v = 1.0;
BSML.t_final = 6.0;

%-------------------------------------------------------------------------
% RSMR
%works
add_x   = 0.0;      %   additional x-move distance at the end of trajectory
RSMR.x = [Field.RSM.x, Field.RSM.x + Robot.L, Field.RSM.x + Robot.L + 3*ft, Field.RSwitch.LVT_x - Robot.L/2 + add_x];
RSMR.y = [Field.RSM.y, Field.RSM.y, Field.RSwitch.RVT_y, Field.RSwitch.RVT_y];
RSMR.v = 1.0;
RSMR.t_final = 6.0;

%-------------------------------------------------------------------------
%   RSML

%change this
%RSML.x = [Field.RSM.x, Field.RSM.x + Robot.L, Field.RSM.x + Robot.L + 3*ft, Field.RSwitch.LVT_x - Robot.L/2];
%RSML.y = [Field.RSM.y, Field.RSM.y, Field.RSwitch.LVT_y, Field.RSwitch.LVT_y];


%RSML.x = [Field.RSM.x, Field.RSM.x + Robot.L, 1.25, 1.35, 1.5, 1.7, 2, Field.RSwitch.LVT_x - Robot.L/2];
%RSML.y = [Field.RSM.y, Field.RSM.y, 4.25, 4.6, 5, 5.3, Field.RSwitch.LVT_y, Field.RSwitch.LVT_y];

add_x   = 0.0;      %   additional x-move distance at the end of trajectory
RSML.x = [ ...
    Field.RSM.x,
    Field.RSM.x + Robot.W/2,
    1.25,
    1.35,
    1.5,
    1.7,
    2,
    Field.RSwitch.LVT_x - Robot.L/2 + add_x];
RSML.y = [...
    Field.RSM.y, Field.RSM.y, 4.25, 4.6, 5, 5.3, Field.RSwitch.LVT_y, Field.RSwitch.LVT_y];
RSML.v = 1.0;
RSML.t_final = 6.0;

%-------------------------------------------------------------------------
%   RSRL
%   
%   Martin Krucinski
%
%   Add additional starting positions, RIGHT
add_x   = 0.0;      %   additional x-move distance at the end of trajectory

orig    = RSML;
N  = length(orig.x);
RSRL    = orig;    % start with a copy of the RSML
RSRL.y(1)   = orig.y(1) - 35*in;    % start at a new y-coord, to the right
                                    % of the M middle start position
RSRL.y(2)   = RSRL.y(1);

RSRL.x(N)   = orig.x(N) + add_x;    % add additional move distance at the end

del_y       = RSRL.y(N) - RSRL.y(1);    % total y-move
del_orig_y  = orig.y(N) - orig.y(1);    % total original y-move
del_y_perc  = del_y / del_orig_y;       % percent change

for i = 3:(N),
    %   modify the y-values, except the last TWO values per i-loop above
    del_y_i     = orig.y(i) - orig.y(1); %   y-move for this way point
    RSRL.y(i)   = RSRL.y(1) + del_y_i * del_y_perc;    %   scale y-points proportionally to original trajectory
    
end


%-------------------------------------------------------------------------


%-------------------------------------------------------------------------
%   RSMLS
%RSMLSArc3 = get_Curve(0*deg,90*deg,1,20,.5,((Field.RSwitch.LeftP.tl_x + Field.RSwitch.LeftP.br_x)/2)-.5,7.2);
%RSMLS.x = [Field.RSM.x, Field.RSM.x + Robot.L, 1.57, 2.17, 3.17, 4.17, (Field.RSwitch.LeftP.tl_x + Field.RSwitch.LeftP.br_x)/2, (Field.RSwitch.LeftP.tl_x + Field.RSwitch.LeftP.br_x)/2];
%RSMLS.y = [Field.RSM.y, Field.RSM.y, 6.5, 7, 7.2, 7, 7, Field.RSwitch.LeftP.tl_y+Robot.L/2];
% RSMLS.x = [[Field.RSM.x, Field.RSM.x + 1*ft, 1.0706, 1.0706, 1.0706, 2], RSMLSArc.x, (Field.RSwitch.LeftP.tl_x + Field.RSwitch.LeftP.br_x)/2];
% RSMLS.y = [[Field.RSM.y, Field.RSM.y, 4.04, 5.1723, 6.8, 7.2], RSMLSArc.y, Field.RSwitch.LeftP.tl_y+Robot.L/2];

RSMLS.x = [[Field.RSM.x, Field.RSM.x + 1*ft, 1.0706, 1.0706, 1.0706, 2], 4.0750, 4.575 (Field.RSwitch.LeftP.tl_x + Field.RSwitch.LeftP.br_x)/2];
RSMLS.y = [[Field.RSM.y, Field.RSM.y, 4.04, 5.1723, 6.8, 7.7], 7.7, 7.2, Field.RSwitch.LeftP.tl_y+Robot.L/2];

RSMLS.v = 1.0;
RSMLS.t_final = 10.0;

%-------------------------------------------------------------------------
%   RSMRS
%works
%RSMRS.x =  [Field.RSM.x, Field.RSM.x + Robot.L, 1.57, 2.17, 3.17, 4.17, (Field.RSwitch.LeftP.tl_x + Field.RSwitch.LeftP.br_x)/2, (Field.RSwitch.LeftP.tl_x + Field.RSwitch.LeftP.br_x)/2];
%RSMRS.y = [Field.RSM.y, Field.RSM.y, 1.5, 1, 0.8, 1, 1.4, 1.8];

RSMRS.x =  [Field.RSM.x, Field.RSM.x + Robot.L, 1.57, 2.17, 3.17, 4.17, (Field.RSwitch.LeftP.tl_x + Field.RSwitch.LeftP.br_x)/2 + 0.1, (Field.RSwitch.LeftP.tl_x + Field.RSwitch.LeftP.br_x)/2];
RSMRS.y = [Field.RSM.y, Field.RSM.y, 1.5, 1.0, 0.8, 0.8, 1.1, 1.8];
RSMRS.v = 1.0;
RSMRS.t_final = 10.0;



BSMLS.x = Field.L - RSMLS.x;
BSMLS.y = Field.W - RSMLS.y;
BSMLS.v = 1.0;
BSMLS.t_final = 10.0;

%-------------------------------------------------------------------------
%   BSMRS
%works
BSMRS.x = RSMLS.x;
BSMRS.y = Field.W - RSMRS.y;
BSMRS.v = 1.0;
BSMRS.t_final = 10.0;

%-------------------------------------------------------------------------
%   Straight
Straight.x = [Field.RSR.x, Field.RSR.x+10*ft];
Straight.y = [Field.RSR.y, Field.RSR.y];
Straight.v = 1;
Straight.t_final = 6;

%-------------------------------------------------------------------------
%   Arc
%
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

