%
%   generate_all_Trajectories_v004.m
%
%   03/04/2018

init_Constants
Init_Robot_v002
Init_Field_v003
% 03/07/2018    New trajectory names
init_Trajectories_v006

make_movies = true %false

all_Trajectories_String = {
    'Arc'
    'Straight'
    'RSMLF'
    'RSMRF'
    'RSMLS'
    'RSMRS'
    'RSLLF'
    'RSLRF'
    'RSLLS'
    'RSLRS'
    'RSRLF'
    'RSRRF'
    'RSRLS'
    'RSRRS'
'RSLCLS'
'RSRCRS'
'RSLCRB'
'RSRCLB'
    };

for traj = 1:length(all_Trajectories_String)
    cmd_str = [ 'all_Trajectories{traj} = ' all_Trajectories_String{traj} ';' ];
    eval(cmd_str);
end


for traj = 1:length(all_Trajectories)
    
    trajectory  = all_Trajectories{traj};
    trajString  = all_Trajectories_String{traj};
    
    simulate_robot_v004;
    
    t_final     = all_t(end);
    
    if make_movies
        %   copy movie file
        
        movie_file_name = [ 'Robot_Movie_' trajString '.mp4' ];
        del_command     = ['!del Movies\' movie_file_name];
        copy_command    = ['!copy Robot_Movie.mp4 ' 'Movies\' movie_file_name];
        eval(del_command);
        eval(copy_command);
        close all;
    end
    
    make_dot_h_file_v003(trajString ,Robot.wR_all,Robot.wL_all,all_t,Robot,t_auto_end, i_auto_end)
    
end



