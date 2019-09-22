% Parameter file for beamforming           %
%                                          %
% ---------- M. Mesimeri 08/2019 --------- %

%path to waveforms
mydata='/uufs/chpc.utah.edu/common/home/koper-group1/mesimeri/Array_Detection/BEAMFORMING/20190414T005754';
%-------------------------------------------------------------------------
% Parallel settings
workers=32;                 %Set number of cores to work on a local machine
%-------------- Filtering parameters --------------------------------------
type='high';                %'low', 'high', 'bandpass'
lcorner=1;                  % lower corner frequency
hcorner=1;                  % higher corner frequency
%--------------------------------------------------------------------------
% Reference Point (Center of the Array)
rlon =-112.887; rlat=38.500; 
% Define window in seconds 
wstart=7;  wstop=12;
% Search bounds for Sx and Sy (sec/deg)
Sxmin=-20; Sxmax=20; Sxinc=1;
Symin=-20; Symax=20; Syinc=1;
%--------------------------------------------------------------------------
% Choose beam type [1-4]:
beam_type=4;  % 1:linear  2:2nd root  3:3rd root  4:4th root
