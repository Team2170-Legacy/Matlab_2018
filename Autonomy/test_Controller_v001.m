Robot.x = 1;
Robot.y = 1;
Robot.theta = 30*deg;
Robot.omega_max = 2.0;

carrot.x = -2;
carrot.y = 2;

[angle,distance] = calcAngleandDistance(carrot,Robot)
disp('Angle to Carrot in degrees:')
angle/deg
[v,omega] = Controller_v001(distance,angle,Robot)