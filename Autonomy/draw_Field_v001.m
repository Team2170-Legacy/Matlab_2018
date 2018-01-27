
figure; 
hold on

title_text = title('FRC Team 2170 Robot Simulator');
% Plot field
%OutsideSquare = plot([0 0 Field.L Field.L 0], [0 Field.L Field.L 0 0], 'g');


xlim([0 54*ft]);
ylim([0 27*ft]);
Arcade = plot([0 Field.L Field.L 0 0], [0 0 Field.W Field.W 0],'gre');

draw_StartingPositions();
draw_AutoLine();
draw_Switch();
draw_Scale();

%plot([10*ft+3*in 126*in 14*ft 14*ft 10*ft+3*in], [11*ft+8*in 15*ft+2*in 183.5*in 138.5*in 11*ft+8*in], 'g');
%plot([Field.L-10*ft+3*in Field.L-10*ft+3*in Field.L-14*ft Field.L-14*ft Field.L-10*ft+3*in], [11*ft+8*in 15*ft+2*in 15*ft+2*in 11*ft+8*in 11*ft+8*in], 'g');



draw_Cube(Field.RedPlatZone.Cube1_x, Field.RedPlatZone.Cube1_y);
draw_Cube(Field.RedPlatZone.Cube2_x, Field.RedPlatZone.Cube2_y);
draw_Cube(Field.RedPlatZone.Cube3_x, Field.RedPlatZone.Cube3_y);
draw_Cube(Field.RedPlatZone.Cube4_x, Field.RedPlatZone.Cube4_y);
draw_Cube(Field.RedPlatZone.Cube5_x, Field.RedPlatZone.Cube5_y);
draw_Cube(Field.RedPlatZone.Cube6_x, Field.RedPlatZone.Cube6_y);

draw_Cube(Field.BluePlatZone.Cube1_x, Field.BluePlatZone.Cube1_y);
draw_Cube(Field.BluePlatZone.Cube2_x, Field.BluePlatZone.Cube2_y);
draw_Cube(Field.BluePlatZone.Cube3_x, Field.BluePlatZone.Cube3_y);
draw_Cube(Field.BluePlatZone.Cube4_x, Field.BluePlatZone.Cube4_y);
draw_Cube(Field.BluePlatZone.Cube5_x, Field.BluePlatZone.Cube5_y);
draw_Cube(Field.BluePlatZone.Cube6_x, Field.BluePlatZone.Cube6_y);

draw_Cube(Field.RedPyramid.Cube1_x, Field.RedPyramid.Cube1_y);
draw_Cube(Field.RedPyramid.Cube2_x, Field.RedPyramid.Cube2_y);
draw_Cube(Field.RedPyramid.Cube3_x, Field.RedPyramid.Cube3_y);
draw_Cube(Field.RedPyramid.Cube4_x, Field.RedPyramid.Cube4_y);
draw_Cube(Field.RedPyramid.Cube5_x, Field.RedPyramid.Cube5_y);
draw_Cube(Field.RedPyramid.Cube6_x, Field.RedPyramid.Cube6_y);

draw_Cube(Field.BluePyramid.Cube1_x, Field.BluePyramid.Cube1_y);
draw_Cube(Field.BluePyramid.Cube2_x, Field.BluePyramid.Cube2_y);
draw_Cube(Field.BluePyramid.Cube3_x, Field.BluePyramid.Cube3_y);
draw_Cube(Field.BluePyramid.Cube4_x, Field.BluePyramid.Cube4_y);
draw_Cube(Field.BluePyramid.Cube5_x, Field.BluePyramid.Cube5_y);
draw_Cube(Field.BluePyramid.Cube6_x, Field.BluePyramid.Cube6_y);
