function  [Sx,Sy,all] = my_ampls(beam,pairs)
%Calculate maximum amplitude for each grid point
%Using Root mean square (L2)
%--------------------------------------------------------------------------

sqr_beam=(beam.^2)'; 
ampls=sqrt(sqr_beam./length(sqr_beam)); 
%Find maximum 
[~,ind]=max(max((ampls))); 
%merge amplitudes and grid points
%use later to color-plot the grid
all=[pairs max(ampls)'];
%find maximum
%use later in color-plot
%define backazimuth and slowness vector
Sx=pairs(ind,1); Sy=pairs(ind,2);
end
