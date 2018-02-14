figure 
hold on
init_Constants
Init_Robot_v002
Init_Field_v001
Arcade = plot([0 Field.L Field.L 0 0], [0 0 Field.W Field.W 0],'gre');

grid on
draw_StartingPositions();
draw_AutoLine();
draw_Switch();
draw_Scale();
draw_ExchangeZone();
init_Trajectories

plot(RSML.x, RSML.y, '-o');
plot(BSML.x, BSML.y, '-o');