clc;
clear all;
sum = 0; % Initialize the win counter
num_simulations = 1500; % Number of simulations

for simul = 1:num_simulations
    a = randsample(20, 1, true); % Draw from the set {1, 2, ..., 20}
    b = randsample(a:25, 1, true); % Draw from the set {x, ..., 25}
    
    if (b > 21) % Check if the drawn number is greater than 21
        sum = sum + 1; % Increment win counter if the condition is met
    end
end

prob = sum / num_simulations; % Calculate the probability of winning
fprintf("Probability of winning: %f\n", prob);

