clc;
clear all;

% Define the range of numbers and total number of slips
xvec = 1:100;%This is an array [1, 2, 3, ..., 100], where each element represents a possible slip number.
total_slips = 5050;%This is the total number of slips, which is 5050.

% Calculate the PMF
pmf = xvec / total_slips;
%This operation divides each element of xvec by total_slips. Essentially, it computes the probability of 
%drawing a slip with the number corresponding to each element of xvec.

% Calculate the CDF
cdf = cumsum(pmf);
%computes the cumulative probability.
% Plot the CDF
figure;
stairs(xvec, cdf, 'LineWidth', 2);
xlabel('Number on Slip');
ylabel('Cumulative Probability');
title('CDF of X');
grid on;

