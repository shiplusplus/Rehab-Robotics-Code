av_array={}; %all the average values
av_values=[];

%preparing average matrix
for c=2:9
    sum=abs(all_data_filt(c).c3d(2).Right_HandYVel);
    for m=3:21
        sum=sum+abs(all_data_filt(c).c3d(m).Right_HandYVel);
    end  
    sum=sum/20;
   
    av_array{c}=sum;
end
