
figure; 
hold on

title_text = title('FRC Team 2170 Robot Simulator');
% Plot field
Arcade = plot([0 Field.L Field.L 0 0], [0 0 Field.W Field.W 0],'gre');

draw_StartingPositions();
draw_AutoLine();
draw_Switch();

