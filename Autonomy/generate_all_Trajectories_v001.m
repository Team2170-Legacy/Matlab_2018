
init_Constants
Init_Robot_v002
Init_Field_v001
init_Trajectories
all_Trajectories = {
    BSML;
    BSMR;
    RSML;
    RSMR;
    };

all_Trajectories_String = {
    'BSML'
    'BSMR'
    'RSML'
    'RSMR'
    };

for traj = 1:length(all_Trajectories)
    
    trajectory  = all_Trajectories{traj};
   trajString = all_Trajectories_String{traj};
    
    %make_movies variable doesnt exist yet, temporary declaration
    make_movies = true;
    if make_movies
        
        simulate_robot_v002;
        t_final     = all_t(end);
        
        %   copy movie file
        
        movie_file_name = [ 'Robot_Movie_' trajString '.mp4' ];
        make_dot_h_file_v002(trajString ,Robot.wR_all,Robot.wL_all,all_t,Robot,t_auto_end, i_auto_end)
        copy_command    = ['!copy Robot_Movie.mp4 ' 'Movies\' movie_file_name];
        eval(copy_command);
        close all;
        
       %Init_Robot_v002
    end
end



