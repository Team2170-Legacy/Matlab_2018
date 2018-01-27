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

%Right Platform Red Switch
Field.RSwitch.RightP.bl_x = 12*ft;
Field.RSwitch.RightP.bl_y = 7.5*ft;

Field.RSwitch.RightP.tl_x = Field.RSwitch.RightP.bl_x;
Field.RSwitch.RightP.tl_y = 10.5*ft;

Field.RSwitch.RightP.tr_x = 18*ft;
Field.RSwitch.RightP.tr_y = Field.RSwitch.RightP.tl_y;

Field.RSwitch.RightP.br_x = Field.RSwitch.RightP.tr_x;
Field.RSwitch.RightP.br_y = Field.RSwitch.RightP.bl_y;

% Left Platform Red Switch
Field.RSwitch.LeftP.bl_x = Field.RSwitch.RightP.bl_x;
Field.RSwitch.LeftP.bl_y = 16.5*ft;

Field.RSwitch.LeftP.tl_x = Field.RSwitch.RightP.bl_x;
Field.RSwitch.LeftP.tl_y = Field.RSwitch.LeftP.bl_y+3*ft;

Field.RSwitch.LeftP.tr_x = Field.RSwitch.RightP.tr_x;
Field.RSwitch.LeftP.tr_y = Field.RSwitch.LeftP.tl_y;

Field.RSwitch.LeftP.br_x = Field.RSwitch.LeftP.tr_x;
Field.RSwitch.LeftP.br_y = Field.RSwitch.LeftP.bl_y;

% Right Platform Blue Switch
Field.BSwitch.RightP.bl_x = Field.L - Field.RSwitch.RightP.bl_x;
Field.BSwitch.RightP.bl_y = Field.RSwitch.RightP.bl_y;

Field.BSwitch.RightP.tl_x = Field.BSwitch.RightP.bl_x;
Field.BSwitch.RightP.tl_y = Field.RSwitch.RightP.tl_y;

Field.BSwitch.RightP.tr_x = Field.L - Field.RSwitch.RightP.tr_x;
Field.BSwitch.RightP.tr_y = Field.RSwitch.RightP.tl_y;

Field.BSwitch.RightP.br_x = Field.BSwitch.RightP.tr_x;
Field.BSwitch.RightP.br_y = Field.RSwitch.RightP.bl_y;

%Left Platform Blue Switch
Field.BSwitch.LeftP.bl_x = Field.L - Field.RSwitch.RightP.bl_x;
Field.BSwitch.LeftP.bl_y = Field.RSwitch.LeftP.bl_y;

Field.BSwitch.LeftP.tl_x = Field.BSwitch.LeftP.bl_x;
Field.BSwitch.LeftP.tl_y = Field.RSwitch.LeftP.tl_y;

Field.BSwitch.LeftP.tr_x = Field.L - Field.RSwitch.RightP.tr_x;
Field.BSwitch.LeftP.tr_y = Field.RSwitch.LeftP.tr_y;

Field.BSwitch.LeftP.br_x = Field.BSwitch.LeftP.tr_x;
Field.BSwitch.LeftP.br_y =Field.RSwitch.LeftP.br_y;


%Top Plate of Scale from Looking Down (Red side is on the right)
Field.Scale.TopP.br_x = 29.5 * ft;
Field.Scale.TopP.br_y = 18*ft;

Field.Scale.TopP.bl_x = 25.5*ft;
Field.Scale.TopP.bl_y = Field.Scale.TopP.br_y;

Field.Scale.TopP.tl_x = Field.Scale.TopP.bl_x;
Field.Scale.TopP.tl_y = 22*ft;

Field.Scale.TopP.tr_x = Field.Scale.TopP.br_x;
Field.Scale.TopP.tr_y = Field.Scale.TopP.tl_y;

%Bottom Plate of Scale from Looking Down (Red side is on the right)
Field.Scale.BottP.br_x = Field.Scale.TopP.br_x;
Field.Scale.BottP.br_y = 5*ft;

Field.Scale.BottP.bl_x = Field.Scale.TopP.bl_x;
Field.Scale.BottP.bl_y = Field.Scale.BottP.br_y;

Field.Scale.BottP.tl_x = Field.Scale.TopP.tl_x;
Field.Scale.BottP.tl_y = 9*ft;

Field.Scale.BottP.tr_x = Field.Scale.TopP.tr_x;
Field.Scale.BottP.tr_y = Field.Scale.BottP.tl_y;



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




%Cubes
%Cubes in Red Platform Zone
space = 26.2/12*ft;
Field.RedPlatZone.Cube1_x = 18.542667*ft;
Field.RedPlatZone.Cube1_y = 8.041667*ft;

Field.RedPlatZone.Cube2_x = Field.RedPlatZone.Cube1_x;
Field.RedPlatZone.Cube2_y = Field.RedPlatZone.Cube1_y + space;

Field.RedPlatZone.Cube3_x = Field.RedPlatZone.Cube1_x;
Field.RedPlatZone.Cube3_y = Field.RedPlatZone.Cube1_y + space*2;

Field.RedPlatZone.Cube4_x = Field.RedPlatZone.Cube1_x;
Field.RedPlatZone.Cube4_y = Field.RedPlatZone.Cube1_y + space*3;

Field.RedPlatZone.Cube5_x = Field.RedPlatZone.Cube1_x;
Field.RedPlatZone.Cube5_y = Field.RedPlatZone.Cube1_y + space*4;

Field.RedPlatZone.Cube6_x = Field.RedPlatZone.Cube1_x;
Field.RedPlatZone.Cube6_y = Field.RedPlatZone.Cube1_y + space*5;


%Cubes in Red Pyramid
Field.RedPyramid.Cube1_x = 11.458333*ft;
Field.RedPyramid.Cube1_y = 13.5*ft;

Field.RedPyramid.Cube2_x = Field.RedPyramid.Cube1_x;
Field.RedPyramid.Cube2_y = 14.58333*ft;

Field.RedPyramid.Cube3_x = Field.RedPyramid.Cube1_x;
Field.RedPyramid.Cube3_y = 12.41667*ft;

Field.RedPyramid.Cube4_x = 10.375*ft;
Field.RedPyramid.Cube4_y = 14.041667*ft;

Field.RedPyramid.Cube5_x = Field.RedPyramid.Cube4_x;
Field.RedPyramid.Cube5_y = 12.958333*ft;

Field.RedPyramid.Cube6_x = 9.291667*ft;
Field.RedPyramid.Cube6_y = Field.RedPyramid.Cube1_y;

% Cubes in Blue Platform Zone 

Field.BluePlatZone.Cube1_x = 35.45733*ft;
Field.BluePlatZone.Cube1_y = Field.RedPlatZone.Cube1_y;

Field.BluePlatZone.Cube2_x = Field.BluePlatZone.Cube1_x;
Field.BluePlatZone.Cube2_y = Field.RedPlatZone.Cube1_y + space;

Field.BluePlatZone.Cube3_x = Field.BluePlatZone.Cube1_x;
Field.BluePlatZone.Cube3_y = Field.RedPlatZone.Cube1_y + space*2;

Field.BluePlatZone.Cube4_x = Field.BluePlatZone.Cube1_x;
Field.BluePlatZone.Cube4_y = Field.RedPlatZone.Cube1_y + space*3;

Field.BluePlatZone.Cube5_x = Field.BluePlatZone.Cube1_x;
Field.BluePlatZone.Cube5_y = Field.RedPlatZone.Cube1_y + space*4;

Field.BluePlatZone.Cube6_x = Field.BluePlatZone.Cube1_x;
Field.BluePlatZone.Cube6_y = Field.RedPlatZone.Cube1_y + space*5;

%Cubes in Blue Pyramid
Field.BluePyramid.Cube1_x = Field.L - Field.RedPyramid.Cube1_x;
Field.BluePyramid.Cube1_y = Field.RedPyramid.Cube1_y;

Field.BluePyramid.Cube2_x = Field.L - Field.RedPyramid.Cube2_x;
Field.BluePyramid.Cube2_y = Field.RedPyramid.Cube2_y;

Field.BluePyramid.Cube3_x = Field.L - Field.RedPyramid.Cube3_x;
Field.BluePyramid.Cube3_y = Field.RedPyramid.Cube3_y;

Field.BluePyramid.Cube4_x = Field.L - Field.RedPyramid.Cube4_x;
Field.BluePyramid.Cube4_y = Field.RedPyramid.Cube4_y;

Field.BluePyramid.Cube5_x = Field.L - Field.RedPyramid.Cube5_x;
Field.BluePyramid.Cube5_y = Field.RedPyramid.Cube5_y;

Field.BluePyramid.Cube6_x = Field.L - Field.RedPyramid.Cube6_x;
Field.BluePyramid.Cube6_y = Field.RedPyramid.Cube6_y;









