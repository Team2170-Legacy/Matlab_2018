function [angle,distance] = calcAngleandDistance(carrot,Robot) 
init_Constants

sidey = carrot.y - Robot.y;
sidex = carrot.x - Robot.x;

distance = sqrt((power(sidey,2)+power(sidex,2)));
angle = atan2(sidey,sidex)-Robot.theta;

if(angle>90*deg || angle<-90*deg)
    distance = -distance;
end 



