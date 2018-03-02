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

changeinx = [];
changeiny = [];
for traj = 1:length(all_Trajectories)
    
    empty = " ";
    trajectory  = all_Trajectories{traj};
    trajString = all_Trajectories_String{traj};
    trajectoryxtravel = trajectory.x(length(trajectory.x)) - trajectory.x(1);
    trajectoryytravel = trajectory.y(length(trajectory.y)) - trajectory.y(1);
    
   % trajString
    changeinx(traj) =  trajectoryxtravel/ft;
    changeiny(traj) =   trajectoryytravel/ft;
%     changeinx(traj)
%     changeiny(traj)
    
%    disp (empty)
    
end

for traj = 1:length(all_Trajectories),
    disp([ all_Trajectories_String{traj} char(9) roundNumber(2,changeinx(traj)) char(9) roundNumber(2,changeiny(traj))]);
end
