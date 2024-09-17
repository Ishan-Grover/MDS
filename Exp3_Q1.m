clc;
clear all;

fav = 0; % Counter for the number of times the gambler goes bankrupt
num_simulations = 5000; % Number of simulations
initial_money = 25; % Initial money (k)
N = 100; % Target money

for i = 1:num_simulations
    money = initial_money; % Reset money at the start of each simulation
    while (money > 0 && money < N)
        a = randi([0, 1], 1); % 0 for loss, 1 for win
        if a == 1
            money = money + 1; % Win
        else
            money = money - 1; % Loss
        end
    end
    if money == 0
        fav = fav + 1; % Increment count of bankrupt cases
    end
end

% Simulated probability of ruin
simulated_prob = fav / num_simulations;

% Theoretical probability of ruin for a fair game
theoretical_prob = (1 - (1/2)^initial_money) / (1 - (1/2)^N);

% Display results
fprintf('Simulated Probability of Ruin: %f\n', simulated_prob);
fprintf('Theoretical Probability of Ruin: %f\n', theoretical_prob);

  