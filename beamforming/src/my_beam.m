function   [pairs,beam] = my_beam(header, Sxmax, Sxinc, Sxmin, Symax, Symin, Syinc,rlon,rlat,y_proc,wstart,wstop,beam_type)
%Create a beam for each grid point using Nth root stacking
%--------------------------------------------------------------------------

% Create grid with all possible pairs
[Sx,Sy] = meshgrid(Sxmin:Sxinc:Sxmax, Symin:Syinc:Symax);
pairs = [Sx(:),Sy(:)];

%define window to cut waveform
mwindow=round(wstart./header(1).DELTA):round(wstop./header(1).DELTA);
% -------------------------------
%Preallocate memory
stlo=zeros(length(header),1);
stla=zeros(length(header),1);
%extract longitude and latitude for each station
for i=1:length(header)
stlo(i,1)=header(i).STLO;
stla(i,1)=header(i).STLA;
end
%---------------------------------------------------------------
n1=length(pairs); 
%---------------------------------------------------------------
parfor k=1:n1    %change it to parfor   
%create a beam for each Sx, Sy
beam(k,:)=my_shifts(stlo,stla,rlon,rlat,pairs(k,1),pairs(k,2),y_proc,mwindow,header(1).DELTA,beam_type);
end

end