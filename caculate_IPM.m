clear
clc


m = 240/100 ; % 單位是pixel/mm
n = 320 /100 ; % 單位是 pixel/mm   
l = 40/100 ;% 單位為公尺
d = -10/100;% 單位為公尺
h = 8.5/100   ;% 單位為公尺
gamma = 0 ; % 單位為度數
theta = deg2rad(12); % 單位為弧度
a_ver = deg2rad(30); % 單位為弧度
a_hor = deg2rad(30); % 單位為弧度
u = 50 ;  % Transform to row
v = 160;  % Transform to column

theta_a_ver = theta - a_ver
u_aver = u*((2*a_ver)/(m-1))
gamma_a_ver = gamma - a_hor
v_aver = v*((2*a_hor)/(n-1))

x = h*cot(theta_a_ver+u_aver)*cos(gamma_a_ver+v_aver)+l
y = h*cot(theta_a_ver+u_aver)*cos(gamma_a_ver+v_aver)+d
% x_1 = h*cot(((theta-a_ver) + ((u_1*2*a_ver)/(n-1))))*cos(((gamma-a_hor) + ((v_1*2*a_hor)/(m-1))))+l
% y_1 = h*cot(((theta-a_ver) + ((u_1*2*a_ver)/(n-1))))*sin(((gamma-a_hor) + ((v_1*2*a_hor)/(m-1))))+d