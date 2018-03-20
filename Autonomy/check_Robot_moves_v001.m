%
%   check_Robot_moves_v001.m
%
%   Martin Krucinski
%
%   03/04/2018

Init

disp('RSML move - Start Middle to Left Switch [in]')
test1_str   = '(RSML.x(8) - RSML.x(1))/in'
eval(test1_str)

disp('Switch distance - robot length [in]')
test2_str   = '(140*in - Robot.L)/in'
eval(test2_str)

