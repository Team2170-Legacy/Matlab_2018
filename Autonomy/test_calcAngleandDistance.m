
figure
hold on
init_Constants
robot.x = 0;
robot.y = 0;
robot.theta = 0;
R = 5;

table = [];

for alfa=0*deg:20*deg:340*deg,
carrot.x = cos(alfa) * R;
carrot.y = sin(alfa) * R;
plot(carrot.x, carrot.y, '*');
[angle, distance] = calcAngleandDistance(carrot,robot);
 
  table = [ table ;  angle/deg  distance ];
end

table


  