all_Trajectories = {
    'BSML';
    'BSMR';
    'RSML';
    'RSMR';
    };

for traj = 1:length(all_Trajectories)
      
   Trajectory  = all_Trajectories{traj}; 
   
      
   [all_omega_R, all_omega_L, all_t,t_auto_end, i_auto_end] = calc_trajectory_v8(Trajectory);
end 
