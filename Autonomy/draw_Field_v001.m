
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

%plot([10*ft+3*in 126*in 14*ft 14*ft 10*ft+3*in], [11*ft+8*in 15*ft+2*in 183.5*in 138.5*in 11*ft+8*in], 'g');
%plot([Field.L-10*ft+3*in Field.L-10*ft+3*in Field.L-14*ft Field.L-14*ft Field.L-10*ft+3*in], [11*ft+8*in 15*ft+2*in 15*ft+2*in 11*ft+8*in 11*ft+8*in], 'g');

%28.8


space = 26.2/12;
draw_Cube(18.542667, 8.041667);
draw_Cube(18.542667, 8.041667+space);
draw_Cube(18.542667, 8.041667+space*2);
draw_Cube(18.542667, 8.041667+space*3);
draw_Cube(18.542667, 8.041667+space*4);
draw_Cube(18.542667, 8.041667+space*5);


draw_Cube(35.457333, 8.041667);
draw_Cube(35.457333, 8.041667+space);
draw_Cube(35.457333, 8.041667+space*2);
draw_Cube(35.457333, 8.041667+space*3);
draw_Cube(35.457333, 8.041667+space*4);
draw_Cube(35.457333, 8.041667+space*5);


