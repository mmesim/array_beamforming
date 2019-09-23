# Parameter file

**workers**: integer, define the number of cores for parallel processing.                 

**rlon**: Longitude of the reference point (in Decimal degrees)

**rlat**: Latitude of the reference point (in Decimal degrees)

**wstart**: Start of the window in seconds

**wstop**: End of the window in seconds. The new waveform will have length stop-start. 

**Sxmin**: Minimun value for Sx
**Sxmax**: Maximum value for Sx
**Sxinc**: Increment for Sx

**Symin**: Minimun value for Sy
**Symax**: Maximum value for Sy
**Syinc**: Increment for Sy

**beam_type**: choose the stacking method 1-linear, 2-2nd root, 3-3rd root, 4-4th root

*Package written in Matlab for event detection using Large N array*

# Execute

Edit the parameter file. Type "beamforming_envelopes" in the command window. 

parameter.m, beamforming_envelopes.m & src should be in the same directory. 

To execute the script you should save into a .mat file the output of the envelope detection code. It's necessary to save the detections, waveforms,and header variables. 

Example: save detections.mat detections saved_wvf header 
