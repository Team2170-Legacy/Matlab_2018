all_Trajectories = {
   Arc;
   Straight;
     BSML;
%     BSMLS;
     BSMR;
%     BSMRS;
 RSML;
%     RSMLS;
 RSMR;
%     RSMRS;
};


all_Trajectories_String = {
   'Arc'
   'Straight'
    'BSML'
 %   'BSMLS'
    'BSMR'
 %   'BSMRS'
    'RSML'
 %   'RSMLS'
    'RSMR'
   % 'RSMRS'
    };

for traj = 1:length(all_Trajectories)
     
    empty = " ";
    trajectory  = all_Trajectories{traj};
     trajString = all_Trajectories_String{traj};
    trajectoryxtravel = trajectory.x(length(trajectory.x)) - trajectory.x(1);
    trajectoryytravel = trajectory.y(length(trajectory.y)) - trajectory.y(1);
    
   trajString
   trajectoryxtravel/ft
   trajectoryytravel/ft
   disp (empty)
   
end

