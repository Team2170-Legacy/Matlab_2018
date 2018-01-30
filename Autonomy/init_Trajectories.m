%init_Trajectories 
%Version 1

%RSLL: Red Start Left to Left Switch
RSLL.x = [1,1,2,2];
RSLL.y = [1,2,3,4];
RSLL.v = 1.0;

 RSMR.x = [Field.RSM.x, Field.RSM.x + Robot.L, Field.RSM.x + Robot.L + 3*ft, Field.RSwitch.LVT_x - Robot.L/2];
 %RSMR.y = 
% RSMR.v =
% 
 RSML.x = [Field.RSM.x, Field.RSM.x + Robot.L, Field.RSM.x + Robot.L + 3*ft, Field.RSwitch.LVT_x - Robot.L/2];
% RSML.y = 
% RSML.v
% 
% 
% 

