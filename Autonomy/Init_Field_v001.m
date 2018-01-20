Field.L = 54*ft;
Field.W = 27*ft;

% Starting Points, needs to be changed 
Field.RSR.x = Robot.L/2;
Field.RSR.y = 6*ft; % Needs to be changed

Field.RSM.x = Robot.L/2;
Field.RSM.y = 12*ft; % Needs to be changed

Field.RSL.x = Robot.L/2;
Field.RSL.y = 24*ft; % Needs to be changed

Field.BSR.x = Field.L - Robot.L/2;
Field.BSR.y = Field.W - Field.RSL.y;

Field.BSM.x = Field.L - Robot.L/2;
Field.BSM.y = Field.W - Field.RSM.y;

Field.BSL.x = Field.L - Robot.L/2;
Field.BSL.y = Field.W - Field.RSR.y;

% vision targets on switch 
Field.RSwitch.LVT_x = 11.875*ft;
Field.RSwitch.LVT_y = 18*ft;

Field.RSwitch.RVT_x = 11.875*ft;
Field.RSwitch.RVT_y = 9*ft;

Field.BSwitch.LVT_x = Field.L - Field.RSwitch.LVT_x;
Field.BSwitch.LVT_y = Field.RSwitch.RVT_y;

Field.BSwitch.RVT_x = Field.L - Field.RSwitch.RVT_x;
Field.BSwitch.RVT_y = Field.RSwitch.LVT_y;

%auto lines
AutoLineRed.C1_x = 10*ft;
AutoLineRed.C1_y = 0*ft;
AutoLineRed.C2_x = AutoLineRed.C1_x;
AutoLineRed.C2_y = 27*ft;

AutoLineBlue.C1_x = Field.L - AutoLineRed.C1_x;
AutoLineBlue.C1_y = AutoLineRed.C1_y;
AutoLineBlue.C2_x = AutoLineBlue.C1_x;
AutoLineBlue.C2_y = AutoLineRed.C2_y;

Field.AutoLineRed = AutoLineRed;
Field.AutoLineBlue = AutoLineBlue;
