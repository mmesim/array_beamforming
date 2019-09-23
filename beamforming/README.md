# Parameter file

**mydata**: string, full path to waveforms. The directory should contain all the waveforms for one day in SAC format. If you want to loop through different days you can edit the code or run it multiple times. 

**workers**: integer, define the number of cores for parallel processing.                 

**type**: string, choose between 'low', 'high', 'bandpass' for filtering, for high or low pass set the hcorner equal to lcorner and vice versa

**lcorner**: lower corner frequency

**hcorner**: higher corner frequency

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

Edit the parameter file. Double check that the path is correct. Type "beamforming" in the command window. 

parameter.m, beamforming.m & src should be in the same directory. Waveforms can be anywhere. an example can be foun in example directory. It should work.  
