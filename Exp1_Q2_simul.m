clc;
clear all;
simul=1000;%Number of simulations (trials) for each group size
max_peep=75;%Maximum group size to consider.
probabilities=zeros(1,max_peep);
%Initialize an array to store the probabilities for each group size.
for group_size=2:max_peep
    sum=0;
% Counter to keep track of the number of times at least one duplicate birthday is found in the simulations.
    for exp=1:simul
        a= randsample(365, group_size,true);
        %Generates random birthdays for the group of people, allowing for replacement (birthdays can repeat).
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