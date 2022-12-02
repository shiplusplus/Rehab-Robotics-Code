
all_data=exam_load('filepath\*.kinarm');
% data = exam_load('*.zip'); % Loads the named file into a new structure called 'data'.
all_data = KINARM_add_hand_kinematics(all_data); % Add hand velocity, acceleration and commanded forces to the data structure
all_data_filt = filter_double_pass(all_data, 'enhanced', 'fc', 10); % Double-pass filter the data at 3db cutoff frequency of 10 Hz.  Use an enhanced method for reducing transients at ends.

%all_data has one subject's all velocities * 10 reps data
%all_data_filt has applied kinarm recommended filter
%all_data_filt(c).c3d(m).Right_HandYVel c'th condition m'th movement curve
% c=1 is the baseline 0 velocity, m=1 is the stabilisation to target

%total 9 conditions, 21 movements each. 8,20 to process
len=length(all_data_filt(2).c3d(6).Right_HandYVel); %datapoints in 1 mvmt
%let's do 2nd condition
