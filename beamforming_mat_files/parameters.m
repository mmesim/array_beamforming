% Parameter file for beamforming           %
%                                          %
% ---------- M. Mesimeri 09/2019 --------- %

%-------------------------------------------------------------------------
% Parallel settings
workers=32;                 %Set number of cores to work on a local machine
%--------------------------------------------------------------------------
% Reference Point (Center of the Array)
rlon =-112.887; rlat=38.500; 
% Define window in seconds 
wstart=1;  wstop=5;
% Search bounds for Sx and Sy (sec/deg)
Sxmin=-20; Sxmax=20; Sxinc=1;
Symin=-20; Symax=20; Syinc=1;
%--------------------------------------------------------------------------
% Choose beam type [1-4]:
beam_type=4;  % 1:linear  2:2nd root  3:3rd root  4:4th root