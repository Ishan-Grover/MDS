clc;
clear all;

simul = 1000; % Number of simulations
switch_wins = 0; % Counter for the number of wins when switching

for i = 1:simul
    % Randomly place the prize behind one of the doors
    prize_door = randi(3); % Randomly select a door for the prize (1, 2, or 3)
    
    % Contestant always chooses the first door
    contestant_choice = 1;
    
    % Host opens a door revealing a goat
    % Host reveals one of the doors that is neither the contestant's choice nor the prize door
    possible_reveal = setdiff([1, 2, 3], [contestant_choice, prize_door]);
    if numel(possible_reveal) > 1
        % If there are two doors to choose from, randomly pick one
        revealed_door = randsample(possible_reveal, 1);
    else
        % Otherwise, choose the only available door
        revealed_door = possible_reveal;
    end
    
    % The contestant switches their choice
    % After revealing, switch to the remaining unopened door
    switched_choice = setdiff([1, 2, 3], [contestant_choice, revealed_door]);
    
    % Check if the switch results in a win
    if switched_choice == prize_door
        switch_wins = switch_wins + 1;
    end
end

% Probability of winning by switching
prob_switch_wins = switch_wins / simul;

% Display the probability
fprintf('Probability of winning by switching: %f\n', prob_switch_wins);
