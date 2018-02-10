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
    
    [angle, distance] = calcAngleandDistance_v2(carrot,Robot);
    if (distance<0)
        plot(carrot.x, carrot.y, 'r*');
    end
    if(distance>=0)
        plot(carrot.x, carrot.y, 'b*');
    end
    table = [ table ; alfa/deg  angle/deg  distance ];
    
    plot(Robot.x + [0 cos(Robot.theta)], Robot.y + [0 sin(Robot.theta)]);
end

Robot.theta/deg
table

disp('Testing on the right side of the field')
Robot.x = 0;
Robot.y = 0;
Robot.theta = -180*deg;
R = 5;


figure
hold on
table2 = [];

for alfa=0*deg:10*deg:350*deg,
    carrot.x = cos(alfa) * R;
    carrot.y = sin(alfa) * R;
    [angle, distance] = calcAngleandDistance_v2(carrot,Robot);
    if (distance<0)
        plot(carrot.x, carrot.y, 'r*');
    end
    if(distance>=0)
        plot(carrot.x, carrot.y, 'b*');
    end
    table2 = [ table2 ; alfa/deg  angle/deg  distance ];
    plot(Robot.x + [0 cos(Robot.theta)], Robot.y + [0 sin(Robot.theta)]);
end
Robot.theta/deg
table2

