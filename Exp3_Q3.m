clc; 
clear all;

simul = 10000; % Number of simulations
b = 5; % Initial number of blue balls
c = 5; % Initial number of cyan balls
d = 20; % Number of balls added after each draw
countSecondCyan = 0; % Counter for the number of times the second ball is cyan
countBothCyan = 0; % Counter for the number of times both the first and second balls are cyan

for i = 1:simul
    % Initialize the urn with 'B' for blue and 'C' for cyan balls
    urn = [repmat('B', 1, b) repmat('C', 1, c)];
    
    % Draw the first ball
    firstBallIndex = randi(length(urn)); % Randomly select an index
    firstBallColor = urn(firstBallIndex); % Determine the color of the first ball
    
    % Add 'd' more balls of the same color to the urn
    urn = [urn repmat(firstBallColor, 1, d)];
    
    % Draw the second ball
    secondBallIndex = randi(length(urn)); % Randomly select an index
    secondBallColor = urn(secondBallIndex); % Determine the color of the second ball
    
    % Count the events of interest
    if secondBallColor == 'C'
        countSecondCyan = countSecondCyan + 1; % Increment count for second ball cyan
        if firstBallColor == 'C'
            countBothCyan = countBothCyan + 1; % Increment count for both balls cyan
        end
    end
end

% Calculate probabilities
probSecondcyan = countSecondCyan / simul; % Probability that the second ball is cyan
probbothCyanAndSecondCyan = countBothCyan / countSecondCyan; % P(First cyan | Second cyan)

% Display results
fprintf('Probability that the second ball is cyan: %f\n', probSecondcyan);
fprintf('Conditional probability that the first ball is cyan given the second is cyan: %f\n', probbothCyanAndSecondCyan);

