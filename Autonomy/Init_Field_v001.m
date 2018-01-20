Field.L = 54*ft;
Field.W = 27*ft;

Field.RSL.x = Robot.L/2;
Field.RSL.y

Field.RSM.x = Robot.L/2;
Field.RSM.y

Field.RSR.x = Robot.L/2;
Field.RSR.y

Field.BSL.x = Field.L - Robot.L/2;
Field.BSL.y = Field.RSR.y;

Field.BSM.x = Field.L - Robot.L/2;
Field.BSM.y = Field.RSM.y;

Field.BSR.x = Field.L - Robot.L/2;
Field.BSR.y = Field.RSL.y;

% red autoline is (10,0) to (10,27)
% blue autoline is (44,0) to (44,27)

% red switch center is (14,field_w/2)
% blue switch center is (40,field_w/2)

% red switch right vision is (11.875,9)