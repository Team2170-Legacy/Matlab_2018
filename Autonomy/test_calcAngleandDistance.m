clear all
figure
hold on
init_Constants


disp('Testing on the left side of the field')
Robot.x = 0;
Robot.y = 0;
Robot.theta = 0*deg;
R = 5;



table = [];

for alfa=0*deg:10*deg:350*deg,
carrot.x = cos(alfa) * R;
carrot.y = sin(alfa) * R;
plot(carrot.x, carrot.y, '*');
[angle, distance] = calcAngleandDistance_v2(carrot,Robot);
 
  table = [ table ; alfa/deg  angle/deg  distance ];
end
Robot.theta/deg
table

disp('Testing on the right side of the field')
Robot.x = 0;
Robot.y = 0;
Robot.theta = -180*deg;
R = 5;



table2 = [];

for alfa=0*deg:10*deg:350*deg,
carrot.x = cos(alfa) * R;
carrot.y = sin(alfa) * R;
[angle, distance] = calcAngleandDistance_v2(carrot,Robot);
 
  table2 = [ table2 ; alfa/deg  angle/deg  distance ];
end
Robot.theta/deg
table2

  