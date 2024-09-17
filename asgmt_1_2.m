clc;
clear all;

% Probability thresholds
thresholds = [0.5, 0.99];
results = zeros(size(thresholds)); % To store the values of n for the thresholds

% Loop over each threshold (0.5 and 0.99)
for t = 1:length(thresholds)
    prob = 0; % Probability that at least one person shares your birthday
    k = 0;    % Number of other people in the room

    % Find minimum n such that the probability is at least the current threshold
    while prob < thresholds(t)
        k = k + 1;
        prob = 1 - ((364/365) ^ k); % Probability that at least one shares your birthday
    end

    results(t) = k; % Store the result for the current threshold
end

% Display results
disp(['Number of people needed for probability >= 0.5: ', num2str(results(1))]);
disp(['Number of people needed for probability >= 0.99: ', num2str(results(2))]);
