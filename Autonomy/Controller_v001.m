function [v,omega] = Controller_v001(distance, angle ,Robot) 

Kp = 2.0;
Kp_omega = 4.0;
    
% Angle

omega_max = Robot.omega_max;

omega_temp = Kp_omega*angle;

if omega_temp > omega_max
    omega = omega_max;
elseif omega_temp < -omega_max
    omega = -omega_max;
else
    omega = omega_temp;
end

% Distance

v_max = Robot.v_max;

v_temp = Kp*distance;

if v_temp > v_max
    v = v_max;
elseif v_temp < -v_max
    v = -v_max;
else
    v = v_temp;
end
