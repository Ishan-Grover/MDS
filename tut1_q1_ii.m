clc
clear all
product = 1
%product stores the probability of n people having unique birthdays.
%independent events hence product is multiplied later.
%we take 1 as we suppose atleast 1 person in room and there birthday is
%unique
k = 0
%counts the number of people in room required for atleast 0.99 probability
%initially number of people=0
prob = 0
while(prob<0.99)%to run until probability reaches atleast 0.99. counts number of people required.
    product = product*((365-k)/365)
%compute the probability that all k people have unique birthdays
    k = k+1
    prob = 1-product
    %represents the probability that at least two people share a birthday.
end
disp(k)