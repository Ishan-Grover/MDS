clc;
clear all;

sumA = 0; % Counter for A wins
sumB = 0; % Counter for B wins
num_simulations = 5000; % Number of simulations

for i = 1:num_simulations
    flag = 0; % Indicates if the game has ended
    while (flag == 0)
        % Person A tosses a coin
        resA = randsample([0, 1], 1); % 0 for tails, 1 for heads
        if resA == 1 % A wins if heads
            sumA = sumA + 1;
            flag = 1; % End the game
        else
            % Person B rolls a die
            resB = randsample(6, 1); % Random number between 1 and 6
            if ismember(resB, [1, 2, 3, 4]) % B wins if result is 1, 2, 3, or 4
                sumB = sumB + 1;
                flag = 1; % End the game
            end
        end
    end
end

% Calculate probabilities
probAwin = sumA / num_simulations;
probBwin = sumB / num_simulations;

% Display results
fprintf("Probability that A wins the game: %f\n", probAwin);
fprintf("Probability that B wins the game: %f\n", probBwin);



  