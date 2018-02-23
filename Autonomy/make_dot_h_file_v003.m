function status = make_dot_h_file_v003(trajectoryString,all_omega_R,all_omega_L,all_t,Robot,t_auto_end, i_auto_end)



%Wheel position [rotations], velocity [rotations/s],	Ts = 10 [ms];

%Correction 03/21/2017 to rotations/minute!!!

% Wheel position [rotations], velocity [rotations/s],	Ts = 10 [ms];
%
%   For FRC2018 PowerUp
%
%   Data & Units are now
%   Encoder count [], Encoder counts / 100 ms [], Ts = 10 [ms];

%   Encoder counts per rev on the drive wheels
cpr         = 256*4;
Ts_enc      = 0.100;

N =length(all_omega_R);
enc_per_100ms_R  = all_omega_R/2/pi * cpr * Ts_enc;
enc_per_100ms_L  = all_omega_L/2/pi * cpr * Ts_enc;

% enc_R  = enc_per_100ms_R * 60;
% enc_L  = enc_per_100ms_L * 60;

enc_R = zeros(size(all_omega_R));

enc_L = zeros(size(all_omega_L));

enc_R(1) = 0;

for i=2:N
    
    enc_R(i) = enc_R(i-1)+ enc_per_100ms_R(i-1) * Robot.Ts / Ts_enc;
    
    enc_L(i) = enc_L(i-1)+ enc_per_100ms_L(i-1) * Robot.Ts / Ts_enc;
    
end

traj_dir    = 'Trajectories_dot_h\';

t_final     = max(all_t);

i_final     = length(all_t);

traj_name = trajectoryString;

dot_h_file_name = [ traj_dir traj_name '.h' ];

fh = fopen( dot_h_file_name ,'w');

formatSpec = [ 'const double t_final_' traj_name ' = %10.2f;\n' ];

fprintf(fh,formatSpec,t_final);

formatSpec = [ 'const int i_final_' traj_name ' = %10.0f;\n' ];

fprintf(fh,formatSpec,i_final);

formatSpec = [ 'const double t_auto_end_' traj_name ' = %10.2f;\n' ];

fprintf(fh,formatSpec,t_auto_end);

formatSpec = [ 'const int i_auto_end_' traj_name ' = %10.0f;\n' ];

fprintf(fh,formatSpec,i_auto_end);

%   Right motor code

formatSpec = [ 'const ProfileData AutoMove_' traj_name '_R = {{\n' ];

fprintf(fh,formatSpec);

formatSpec = '{ %13.6f , %13.6f , %13.6f },\n';

for i=1:N
    
    if i == N
        
        formatSpec = '{ %13.6f , %13.6f , %13.6f }\n'  ;
        
    end
    
    fprintf( fh, formatSpec, [enc_R(i), enc_per_100ms_R(i), Robot.Ts*1000]);
    
end

formatSpec = '}};\n';

fprintf(fh,formatSpec);

%   Left motor code

formatSpec = [ 'const ProfileData AutoMove_' traj_name '_L = {{\n'];

fprintf(fh,formatSpec);

formatSpec = '{ %13.6f , %13.6f , %13.6f },\n';

for i=1:N
    
    if i == N
        
        formatSpec = '{ %13.6f , %13.6f , %13.6f }\n'  ;
        
    end
    
    fprintf( fh, formatSpec, [enc_L(i), enc_per_100ms_L(i), Robot.Ts*1000]);
    
end

formatSpec = '}};\n';

fprintf(fh,formatSpec);

status = ~fclose(fh);

if status,
    
    disp([ dot_h_file_name '        written successfully...' ]);
    
else
    
    disp([ dot_h_file_name '        ERROR!' ]);
    
end

