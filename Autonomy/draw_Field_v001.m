


f1 = figure; 
hold on

title_text = title('FRC Team 2170 Robot Simulator');
% Plot field
Arcade = plot([0 Field.L Field.L 0 0 ], [0 0 Field.W Field.W 0 ],'gre');

%Plot starting positions
ARSL = plot(Field.RSL.x, Field.RSL.y, 'rx');
ARSM = plot(Field.RSM.x, Field.RSM.y, 'rx');
ARSR = plot(Field.RSR.x, Field.RSR.y, 'rx');

ABSL = plot(Field.BSL.x, Field.BSL.y, 'bx');
ABSM = plot(Field.BSM.x, Field.BSM.y, 'bx');
ABSR = plot(Field.BSR.x, Field.BSR.y, 'bx');

%ARSwitch.LVT = plot(Field.RSwitch.LVT_x