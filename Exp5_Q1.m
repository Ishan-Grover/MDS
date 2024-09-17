clc;
clear all;

num_simulations = 5000; % Number of simulations
num_tickets = 52; % Number of tickets sold
num_seats = 50; % Number of seats on the flight
boarding_probability = 0.95; % Probability of a ticket holder boarding

% Initialize the counter for successful simulations
successful_simulations = 0;

% Run the simulations
for i = 1:num_simulations
    % Generate boarding status for each of the 52 ticket holders
    boarders = rand(1, num_tickets) < boarding_probability; % True if boards, false otherwise
    
    % Count the number of boarders
    num_boarders = sum(boarders);
    
    % Check if the number of boarders is within the seat limit
    if num_boarders <= num_seats
        successful_simulations = successful_simulations + 1;
    end
end

% Calculate the probability of all boarders getting a seat
probability = successful_simulations / num_simulations;

% Display the result
fprintf('The probability that every person who turns up will get a seat is %.4f\n', probability);
