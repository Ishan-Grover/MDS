clc;
clear all;
sum=0;%Initializes the total number of packets needed across all simulations.
for i=1:500
    v=[];%An empty vector to keep track of collected unique coupons.
    k=0;%Counter for the number of packets bought in each simulation.
    while (numel(v)<365)
        a=randsample(365,1,true);
        k=k+1;
        check=intersect(v,a);%Checks if the coupon a is already collected.
        if(numel(check)==0)%If the coupon is not collected, it is added to v.
            v=[v a];
        end
    end
    sum=sum+k;% Accumulates the number of packets needed for each simulation.
end
a=sum/500%Calculates the average number of packets needed over 500 simulations.
fprintf("the number of packets to bought %f",a)