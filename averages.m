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

add=0;
%plotting the velocities (av_array) and finding averages (av_values)
for c=2:9
    hold on
    t=(0:5);
    av_values(c)=mean(av_array{1,c});
    str = sprintf('Average Velocity is %.5f',av_values(c));
    %legend(str)
    if(c~=7)
        plot(av_array{c},'DisplayName',str)
    end
   
    xlabel("Time (ms)");
    ylabel("Speed (m/s)")
    legend show
end
hold off
