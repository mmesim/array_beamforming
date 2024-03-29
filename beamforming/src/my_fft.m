function [ynew, ynorm] = my_fft(tau,y,mwindow,delta)
%02. Shift waveforms

%Cut waveform
ynew=y(mwindow);

%delay in samples
delay=tau(1,1)./delta;

%frequencies
f=0:(1/(delta*length(ynew))):(1./(2*delta));

%fft and ifft
yp=fft(ynew'); 

yp=yp(1:fix(length(ynew)/2)+1);

yp=yp.*exp(-1i*2*pi*f*delay*delta);

yp = [yp conj(fliplr(yp(2:end-1)))];

yshift=ifft(yp,'symmetric');

%Normalize waveform
ynorm=yshift./(max(abs(yshift)));
end