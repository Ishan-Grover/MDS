clc;
clear all;

sim = 85000;  % Number of simulations
fav = 0;

for i = 1:sim
    % Generate a deck of 52 cards (numbered 1 to 52)
    deck = 1:52;
    
    % Shuffle the deck and deal 5 cards
    hand = randsample(deck, 5, false);
    
    % Spades are numbered from 1 to 13 in this representation
    % Check if all 5 cards are spades
    if all(hand <= 13)
        fav = fav + 1;  % Count this as a favorable outcome
    end
end

% Probability of event B (all cards are spades)
prob = fav / sim;

% Since P(A|B) should be 1, we do not need to adjust further
fprintf('Probability of P(A | B) is approximately %f\n', prob);
