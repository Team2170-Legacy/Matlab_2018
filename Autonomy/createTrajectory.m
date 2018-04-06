clear all;
Init
clc;
close all;

start = input('Choose a start position (1-5, Top-Bottom).');
startname = 0;
starty = 0;
if (start == 1)
    startname = 'Field.RSLC';
    starty = Field.RSLC.y;
end
if (start == 2)
    startname = 'Field.RSL';
    starty = Field.RLC.y;
end
if (start == 3)
    startname = 'Field.RSM';
    starty = Field.RSM.y;
end
if (start == 4)
    startname = 'Field.RSR';
    starty = Field.RSR.y;
end
if (start == 5)
    startname = 'Field.RSRC';
    starty = Field.RSRC.y;
end

endpos = input('Choose a end position (1-4, Top-Bottom, or 5 for manual entry).');
endx = 0;
endy = 0;
if (endpos == 1)
    endnamex =  '(Field.RSwitch.RightP.tr_x + Field.RSwitch.RightP.tl_x)/2';
    endnamey = 'Field.RSwitch.LeftP.tr_y+Robot.L/2';
    endx =  (Field.RSwitch.RightP.tr_x + Field.RSwitch.RightP.tl_x)/2;
    endy = Field.RSwitch.LeftP.tr_y+Robot.L/2;
end
if (endpos == 2)
    endnamex = 'Field.RSwitch.LeftP.tl_x - Robot.L/2';
    endnamey = '(Field.RSwitch.LeftP.tl_y + Field.RSwitch.LeftP.bl_y)/2';
    endx = Field.RSwitch.LeftP.tl_x - Robot.L/2;
    endy = (Field.RSwitch.LeftP.tl_y + Field.RSwitch.LeftP.bl_y)/2;
end
if (endpos == 3)
    endnamex = 'Field.RSwitch.RightP.tl_x - Robot.L/2';
    endnamey = '(Field.RSwitch.LeftP.tl_y + Field.RSwitch.LeftP.bl_y)/2';
    endx = Field.RSwitch.RightP.tl_x - Robot.L/2;
    endy = (Field.RSwitch.RightP.tl_y + Field.RSwitch.RightP.bl_y)/2;
end
if (endpos == 4)
    endnamex =  '(Field.RSwitch.LeftP.tl_x + Field.RSwitch.LeftP.tr_x)/2';
    endnamey = 'Field.RSwitch.RightP.br_y';
    endx =  (Field.RSwitch.LeftP.tl_x + Field.RSwitch.LeftP.tr_x)/2;
    endy = Field.RSwitch.RightP.br_y-Robot.L/2;
end
if(endpos == 5)

    endx = input('Manually enter x for endpt.');
    endy = input('Manually enter y for endpt.');
        endnamex = num2str(endx); 
    endnamey = num2str(endy);
end
figure
hold on
draw_Field_v001

plot(Robot.L/2, starty, '*cyan');
plot(endx, endy, '*cyan');

[x,y] = ginput;

xpoints = x(:);
ypoints = y(:);

plot([Robot.L/2, xpoints', endx], [starty, ypoints', endy], 'cyan');
redo = input('0 to Confirm, 1 to try again.');
if(redo)
    clear all; close all; clc;
    createTrajectory
end 
    
name = input('Name your trajectory.', 's');
velocity = input('Velocity of your trajectory?');
dir = input('Drive Forward or Back? 1 for Forward, 0 for Back');
tfin = input('Time for trajectory?');
clc;


fprintf( '%s.x = [...\n', name);
fprintf( '   %s.x\n', startname);
for i = 1:length(xpoints)
    disp(xpoints(i));
end
fprintf( '   %s\n', endnamex);
disp(']');


fprintf( '%s.y = [...\n', name);
fprintf( '   %s.y\n', startname);
for i = 1:length(ypoints)
    disp(ypoints(i));
end
fprintf( '   %s\n', endnamey);
disp(']');


fprintf( '%s.name = ''%s'';\n', name, name);

fprintf( '%s.v = %.2f;\n', name, velocity);

fprintf( '%s.t_final = %.2f;\n', name, tfin);

fprintf( '%s.Drive_Forward = [...\n', name);

for i = 1:length(xpoints)+2
    disp(dir);
end

disp(']');


disp('Copy this code into a script for a working trajectory!');
disp('Warning: add_x and add_y must be added to script manually.');









