% Package for grid searching the optimal Sx,Sy and backazimuth  %
% based on GAP package (Koper, 2004) [Generic Array Processing] %
% Loads sac files and calculates beam (Linear stacking)         %
% Works for one event at a time                                 %   
% ------------------------- M.Mesimeri 08/2019 ---------------  %
clear;clc; tic %start timer

%% 00.Setup
parameters %load parameter file
parpool('local',workers); %Start parallel pool
mydir=pwd; pdir=sprintf('%s/src/',pwd); % get working directory path
addpath(genpath(pdir)); %add all *.m scripts to path
%--------------------------------------------------------------------------
%% 01. Load data (Sac files)
display('Loading files..')
load detections.mat
!mkdir OUTPUT

%% 02. Loop through events
for id=1:length(detections(:,1))
y_proc=cell2mat(saved_wvf{id,1}');
fprintf('Event %03d out of %03d \n',id,length(detections(:,1)))
%% 03. Get time shifts and align waveforms
display('Beam...')
[pairs,beam] = my_beam(header, Sxmax, Sxinc, Sxmin, Symax, Symin, Syinc, rlon, rlat, y_proc, wstart, wstop,beam_type);
%% 04. Stack and measure Amplitudes
display('Amplitudes...')
[Sx,Sy,pairs] = my_ampls(beam,pairs);

%% 05. Output #1 : S and backazimuth
display('Backazimuth and slowness')
[baz, S]=my_vals(Sx,Sy);

%% 06. Output #2 : Create 2D color plot
display('Figures...')
my_figure(pairs,Sx,Sy,S,baz,id);

end
%% 07. Shutdown parallel pool
delete(gcp)
fprintf('Elapsed time %6.2f minutes... \n',toc/60) %stop timer

