%   init_Trajectories
%   Version 4
%
%    Adonis Canada, Priyanshu Agrawal, Baris Sengezen
%   
%   2018-03-05  Martin Krucinski
%               Added additional starting point Right SR,
%               and additional move distance at end of the move, add_x
%
%   2018-03-07  Martin Krucinski
%               Speed-up of all trajectories & modifications based on
%               2018-03-05 experimental tests on the Team Paragon field
%


%-------------------------------------------------------------------------
%   Straight
Straight.x = [Field.RSR.x, Field.RSR.x+10*ft];
Straight.y = [Field.RSR.y, Field.RSR.y];
%   Martin Krucinski 2018-03-07
%Straight.v = 1;
Straight.v = 1.6;
Straight.t_final = 4;

%-------------------------------------------------------------------------
%   Arc
%
%TurnTest.x = [Field.RSR.x];
%TurnTest.y = [Field.RSR.y+5*ft];
Arc = get_Curve(90*deg, -90*deg, 1, 18, 5*ft, 3*ft+Field.RSR.x+6, Field.RSR.y+5*ft);

%   Martin Krucinski 2018-03-07
% Arc.v = 1.0;
% Arc.t_final = 10.0;
Arc.v = 1.6;
Arc.t_final = 6.25;

Arc.x = [6 Arc.x 6];
Arc.y = [Arc.y(1) Arc.y Arc.y(length(Arc.y))];

%-------------------------------------------------------------------------
% RSMR
%works
RSMR.add_x   = 0.0;      %   additional x-move distance at the end of trajectory
RSMR.add_y   = 0.0;      %   additional y-move distance at the end of trajectory
RSMR.x = [Field.RSM.x, Field.RSM.x + Robot.L, Field.RSM.x + Robot.L + 3*ft, Field.RSwitch.LVT_x - Robot.L/2 + RSMR.add_x];
RSMR.y = [Field.RSM.y, Field.RSM.y, Field.RSwitch.RVT_y + RSMR.add_y, Field.RSwitch.RVT_y + RSMR.add_y];

%   unadjusted version
RSMR.add_x   = 0.0;      %   additional x-move distance at the end of trajectory
RSMR.add_y   = 0.0;      %   additional y-move distance at the end of trajectory
RSMR.x_noadjust = [Field.RSM.x, Field.RSM.x + Robot.L, Field.RSM.x + Robot.L + 3*ft, Field.RSwitch.LVT_x - Robot.L/2 + RSMR.add_x];
RSMR.y_noadjust = [Field.RSM.y, Field.RSM.y, Field.RSwitch.RVT_y + RSMR.add_y, Field.RSwitch.RVT_y + RSMR.add_y];

%RSMR.v = 1.0;
%   Martin Krucinski 2018-03-07
RSMR.v = 1.6;

%RSMR.t_final = 6.0;
%   Martin Krucinski 2018-03-07
RSMR.t_final = 3.0;

%-------------------------------------------------------------------------
%   RSML

%change this
%RSML.x = [Field.RSM.x, Field.RSM.x + Robot.L, Field.RSM.x + Robot.L + 3*ft, Field.RSwitch.LVT_x - Robot.L/2];
%RSML.y = [Field.RSM.y, Field.RSM.y, Field.RSwitch.LVT_y, Field.RSwitch.LVT_y];


%RSML.x = [Field.RSM.x, Field.RSM.x + Robot.L, 1.25, 1.35, 1.5, 1.7, 2, Field.RSwitch.LVT_x - Robot.L/2];
%RSML.y = [Field.RSM.y, Field.RSM.y, 4.25, 4.6, 5, 5.3, Field.RSwitch.LVT_y, Field.RSwitch.LVT_y];

RSML.add_x   = 0.0;      %   additional x-move distance at the end of trajectory
RSML.add_y   = 8.0*in;   %   additional y-move distance, per 03/05/18 Team Paragon testing
RSML.x = [ ...
    Field.RSM.x,
    Field.RSM.x + Robot.W/2,
    1.25,
    1.35,
    1.5,
    1.7,
    2,
    Field.RSwitch.LVT_x - Robot.L/2 + RSML.add_x];
RSML.y = [...
    Field.RSM.y, Field.RSM.y, 4.25, 4.6, 5, 5.3, Field.RSwitch.LVT_y + RSML.add_y, Field.RSwitch.LVT_y + RSML.add_y];

%   unadjusted version
RSML.add_x   = 0.0;      %   additional x-move distance at the end of trajectory
RSML.add_y   = 0.0*in;   %   additional y-move distance, per 03/05/18 Team Paragon testing
RSML.x_noadjust = [ ...
    Field.RSM.x,
    Field.RSM.x + Robot.W/2,
    1.25,
    1.35,
    1.5,
    1.7,
    2,
    Field.RSwitch.LVT_x - Robot.L/2 + RSML.add_x];
RSML.y_noadjust = [...
    Field.RSM.y, Field.RSM.y, 4.25, 4.6, 5, 5.3, Field.RSwitch.LVT_y + RSML.add_y, Field.RSwitch.LVT_y + RSML.add_y];


%RSML.v = 1.0;
%   Martin Krucinski 2018-03-07
RSML.v = 1.6;

%   Martin Krucinski 2018-03-07
%RSML.t_final = 6.0;
RSML.t_final = 3.0;

%-------------------------------------------------------------------------
%   RSRL
%   
%   Martin Krucinski
%
RSRL.add_x   = 0.0;      %   additional x-move distance at the end of trajectory
RSRL.add_y   = 0.0;      %   additional y-move distance

orig    = RSML;
orig.x  = RSML.x_noadjust;
orig.y  = RSML.y_noadjust;

N  = length(orig.x);
RSRL    = orig;    % start with a copy of the RSML
RSRL.t_final = 4.0;

RSRL.y(1)   = Field.RSR.y;      % start at a new y-coord, to the right
                                    % of the M middle start position
RSRL.y(2)   = RSRL.y(1);

RSRL.x(1)   = Field.RSR.x;      % start at a new x-coord, to the right
                                    % of the M middle start position
%*** THIS SHOULD NOT BE SET!!! Keep orig x(2) RSRL.x(2)   = RSRL.x(1);

RSRL.x(N)   = orig.x(N) + RSRL.add_x;    % add additional move distance at the end
RSRL.y(N)   = orig.y(N) + RSRL.add_y;    % add additional move distance at the end

del_y       = RSRL.y(N) - RSRL.y(1);    % total y-move
del_orig_y  = orig.y(N) - orig.y(1);    % total original y-move
del_y_perc  = del_y / del_orig_y;       % percent change

for i = 3:(N),
    %   modify the y-values, except the last TWO values per i-loop above
    del_y_i     = orig.y(i) - orig.y(1); %   y-move for this way point
    RSRL.y(i)   = RSRL.y(1) + del_y_i * del_y_perc;    %   scale y-points proportionally to original trajectory
    
end

%-------------------------------------------------------------------------
%   RSLL
%   
%   Martin Krucinski
%
RSLL.add_x   = 0.0;      %   additional x-move distance at the end of trajectory
RSLL.add_y   = 0.0;      %   additional y-move distance

orig    = RSML;
orig.x  = RSML.x_noadjust;
orig.y  = RSML.y_noadjust;

N  = length(orig.x);
RSLL    = orig;    % start with a copy of the RSML

RSLL.y(1)   = Field.RSL.y;      % start at a new y-coord, to the right
                                    % of the M middle start position
RSLL.y(2)   = RSLL.y(1);

RSLL.x(1)   = Field.RSL.x;      % start at a new x-coord, to the right
                                    % of the M middle start position
%*** THIS SHOULD NOT BE SET!!! Keep orig x(2) RSLL.x(2)   = RSLL.x(1);

RSLL.x(N)   = orig.x(N) + RSLL.add_x;    % add additional move distance at the end
RSLL.y(N)   = orig.y(N) + RSLL.add_y;    % add additional move distance at the end

del_y       = RSLL.y(N) - RSLL.y(1);    % total y-move
del_orig_y  = orig.y(N) - orig.y(1);    % total original y-move
del_y_perc  = del_y / del_orig_y;       % percent change

for i = 3:(N),
    %   modify the y-values, except the last TWO values per i-loop above
    del_y_i     = orig.y(i) - orig.y(1); %   y-move for this way point
    RSLL.y(i)   = RSLL.y(1) + del_y_i * del_y_perc;    %   scale y-points proportionally to original trajectory
    
end

%-------------------------------------------------------------------------
%*************************************************************************
%
%   RED SWITCH MOVES to the SWITCH SIDE
%
%*************************************************************************
%-------------------------------------------------------------------------

%-------------------------------------------------------------------------
%   RSMLS
%RSMLSArc3 = get_Curve(0*deg,90*deg,1,20,.5,((Field.RSwitch.LeftP.tl_x + Field.RSwitch.LeftP.br_x)/2)-.5,7.2);
%RSMLS.x = [Field.RSM.x, Field.RSM.x + Robot.L, 1.57, 2.17, 3.17, 4.17, (Field.RSwitch.LeftP.tl_x + Field.RSwitch.LeftP.br_x)/2, (Field.RSwitch.LeftP.tl_x + Field.RSwitch.LeftP.br_x)/2];
%RSMLS.y = [Field.RSM.y, Field.RSM.y, 6.5, 7, 7.2, 7, 7, Field.RSwitch.LeftP.tl_y+Robot.L/2];
% RSMLS.x = [[Field.RSM.x, Field.RSM.x + 1*ft, 1.0706, 1.0706, 1.0706, 2], RSMLSArc.x, (Field.RSwitch.LeftP.tl_x + Field.RSwitch.LeftP.br_x)/2];
% RSMLS.y = [[Field.RSM.y, Field.RSM.y, 4.04, 5.1723, 6.8, 7.2], RSMLSArc.y, Field.RSwitch.LeftP.tl_y+Robot.L/2];

add_x   = -14*in;      %   additional x-move distance at the end of trajectory
add_y   = 0*in;   %   additional y-move distance, per 03/05/18 Team Paragon testing

%RSMLS.x = [[Field.RSM.x, Field.RSM.x + 1*ft, 1.0706, 1.0706, 1.0706, 2], 4.0750, (Field.RSwitch.LeftP.tl_x + Field.RSwitch.LeftP.br_x)/2*[1 1]+add_x];
RSMLS.x = [Field.RSM.x, Field.RSM.x + 1*ft, 1.0706, 1.0706, 1.0706, 2, 4.0750, (Field.RSwitch.LeftP.tl_x + Field.RSwitch.LeftP.br_x)/2*[1.01 1]+add_x];

%RSMLS.y = [Field.RSM.y, Field.RSM.y, 4.04, 5.1723, 6.8, 7.7, 7.7, 7.2, Field.RSwitch.LeftP.tl_y+Robot.L/2];
%   the above is TOO CLOSE TO THE WALL
RSMLS.y = [Field.RSM.y, Field.RSM.y, 4.04, 5.1723, 6.8, 7.2, 7.2, 6.8, Field.RSwitch.LeftP.tl_y+Robot.L/2 - add_y];

%   Martin Krucinski 2018-03-07
%RSMLS.v = 1.0;
RSMLS.v = 1.6;

RSMLS.t_final = 5.8;

%-------------------------------------------------------------------------
%   RSMRS
%works
%RSMRS.x =  [Field.RSM.x, Field.RSM.x + Robot.L, 1.57, 2.17, 3.17, 4.17, (Field.RSwitch.LeftP.tl_x + Field.RSwitch.LeftP.br_x)/2, (Field.RSwitch.LeftP.tl_x + Field.RSwitch.LeftP.br_x)/2];
%RSMRS.y = [Field.RSM.y, Field.RSM.y, 1.5, 1, 0.8, 1, 1.4, 1.8];

add_x   = -14*in;      %   additional x-move distance at the end of trajectory
add_y   = 5*in;   %   additional y-move distance, per 03/05/18 Team Paragon testing

RSMRS.x =  [Field.RSM.x, Field.RSM.x + Robot.L, 1.57, 2.17, 3.17, 4.17, (Field.RSwitch.LeftP.tl_x + Field.RSwitch.LeftP.br_x)/2 + add_x, (Field.RSwitch.LeftP.tl_x + Field.RSwitch.LeftP.br_x)/2 + add_x];
RSMRS.y = [Field.RSM.y, Field.RSM.y, 1.5, 1.0, 0.8, 0.8, 1.1, 1.8 + add_y];

%   Martin Krucinski 2018-03-07
% RSMRS.v = 1.0;
% RSMRS.t_final = 10.0;
RSMRS.v = 1.6;
RSMRS.t_final = 5.0;

%-------------------------------------------------------------------------
%   RSRLS

RSRLS.add_x   = 0%-14*in;     %   additional x-move distance at the end of trajectory
RSRLS.add_y   = 0%+14*in;       %   additional y-move distance

g = [

    0.4465    1.8381
    1.2983    1.8460
    1.2667    7.3512
    4.5872+RSRLS.add_x     7.3512
    4.5872+RSRLS.add_x     6.4836+RSRLS.add_y ];

RSRLS.x     = g(:,1);
RSRLS.y     = g(:,2);
RSRLS.v     = 1.6;
RSRLS.t_final = 7.25;


%*************************************************************************
%
%   BLUE Trajectories (not needed for now, we will be re-using the RED ones
%
%*************************************************************************
%-------------------------------------------------------------------------

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
%   BSMLS
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
%   Martin Krucinski 2018-03-07
%Straight.v = 1;
Straight.v = 1.6;
Straight.t_final = 4;

%-------------------------------------------------------------------------
%   Arc
%

Arc = get_Curve(90*deg, -90*deg, 1, 18, 5*ft, 3*ft+Field.RSR.x+6, Field.RSR.y+5*ft);

%   Martin Krucinski 2018-03-07
% Arc.v = 1.0;
% Arc.t_final = 10.0;
Arc.v = 1.6;
Arc.t_final = 6.25;

Arc.x = [6 Arc.x 6];
Arc.y = [Arc.y(1) Arc.y Arc.y(length(Arc.y))];

%-------------------------------------------------------------------------

Field.BSML      = BSML;
Field.BSMR      = BSMR;
Field.RSMR      = RSMR;
Field.RSML      = RSML;
Field.Straight  = Straight;
Field.Arc       = Arc;
