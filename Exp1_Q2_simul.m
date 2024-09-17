clc;
clear all;
simul=1000;
max_peep=75;
probabilities=zeros(1,max_peep);
for group_size=2:max_peep
    sum=0;
    for exp=1:simul
        a= randsample(365, group_size,true);
        [v,u]= unique(a,'stable');
        dup_indicies=setdiff(1:numel(a),u);
        if numel(dup_indicies)>=1
            sum=sum+1;
        end
    end
    probabilities(group_size)=sum/simul;
end

figure;
plot(2:max_peep,probabilities(2:end),'o-','LineWidth',2);
xlabel("Number of people in the group");
ylabel("probabilities");
title("Probability of shared birthdays vs Group size");
grid on;