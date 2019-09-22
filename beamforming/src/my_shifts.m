function beam=my_shifts(stlo,stla,rlon,rlat,Sx,Sy,y_proc,mwindow,delta,beam_type)
%Calculate time shifts for each grid point
%Shift waveforms using fft
%Return beam after stacking using Nth root stacking
%--------------------------------------------------------------------------

for i=1:length(stlo)
    
% 1. Get time shifts
tau=my_time_shifts(stlo(i),stla(i),rlon,rlat,Sx,Sy);

% 2. Shift waveforms 
[ynew(i,:), waveform(i,:)]=my_fft(tau,y_proc{1,i},mwindow,delta);

end
% 3.Stacking 
beam=my_stacking(waveform,length(stlo),beam_type);
end