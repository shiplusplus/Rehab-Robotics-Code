veldata[i]=data.c3d(7).Right_L1Vel  ;

fs = 1000                    % Confirm sampling freq

Wn = 3/(fs/2); % Normalized cutoff frequency
[b,a] = butter(4,Wn,'low'); % Butterworth filter
filt_speed = filtfilt(b,a,veldata);
plot(filt_speed)
