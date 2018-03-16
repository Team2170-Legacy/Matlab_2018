figure
hold on
init_Constants
Init_Robot_v002
Init_Field_v001

Arcade = plot([0 Field.L Field.L 0 0], [0 0 Field.W Field.W 0],'gre');

grid on
draw_Field_v001
init_Trajectories_v006

% draw_Trajectory(RSMRS);
% draw_Trajectory(RSMLS);
% draw_Trajectory(BSMRS);
% draw_Trajectory(BSMLS);
% draw_Trajectory(Arc);
% draw_Trajectory(Straight);

draw_Trajectory(RSLCLS);
draw_Trajectory(RSRCLS);

