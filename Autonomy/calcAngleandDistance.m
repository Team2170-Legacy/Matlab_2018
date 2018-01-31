function [angle,distance] = calcAngleandDistance(carrot,robot) 
init_Constants

sidey = carrot.y - robot.y;
sidex = carrot.x - robot.x;

distance = sqrt((power(sidey,2)+power(sidex,2)));
angle = atan2(sidey,sidex);



