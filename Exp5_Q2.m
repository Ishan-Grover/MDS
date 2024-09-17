clc;
clear all;

% Parameters
n = 3; % Number of dice rolls
p = 1/6; % Probability of rolling a six
num_simulations = 5000; % Number of simulations

% Initialize counters
count_two_sixes = 0; % Count for exactly 2 sixes
total_sixes = 0; % Total number of sixes across all simulations

% Run simulations
for i = 1:num_simulations
    % Simulate rolling the die 3 times
    rolls = randi([1, 6], [1, n]);
    num_sixes = sum(rolls == 6); % Count number of sixes in this trial
    
    % Update counters
    total_sixes = total_sixes + num_sixes;
    if num_sixes == 2
        count_two_sixes = count_two_sixes + 1;
    end
end

% Calculate probabilities and means
prob_two_sixes = count_two_sixes / num_simulations; % Probability of exactly 2 sixes
mean_sixes = total_sixes / num_simulations; % Average number of sixes
expected_value = n * p; % Expected value

% Display results
fprintf('Simulated probability of getting exactly 2 sixes: %.4f\n', prob_two_sixes);
fprintf('Expected value (mean) of number of sixes: %.4f\n', expected_value);
fprintf('Average number of sixes from simulation: %.4f\n', mean_sixes);

