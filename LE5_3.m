% Define the number of trials and the probabilities of success
n = 20; % Number of trials
p_values = [0.2, 0.5, 0.7]; % Different probabilities of success

% Create a new figure for plotting
figure;

% Loop over each probability value
for i = 1:length(p_values)
    % Extract the current probability of success
    p = p_values(i);
    
    % Define the range of possible number of successes
    x = 0:n;
    
    % Compute the PMF (Probability Mass Function) for the current p
    pmf = binopdf(x, n, p);
    
    % Compute the CDF (Cumulative Distribution Function) for the current p
    cdf = binocdf(x, n, p);
    
    % Create subplot for PMF
    subplot(2, length(p_values), i);
    % Plot the PMF as a bar graph
    bar(x, pmf, 'FaceColor', [0.2, 0.6, 0.8]);
    % Set title for the PMF plot
    title(['PMF with p = ', num2str(p)]);
    % Label x-axis
    xlabel('Number of Successes');
    % Label y-axis
    ylabel('Probability');
    % Add a grid for better visualization
    grid on;
    
    % Create subplot for CDF
    subplot(2, length(p_values), i + length(p_values));
    % Plot the CDF as a step function (stairs plot)
    stairs(x, cdf, 'LineWidth', 2, 'Color', [0.8, 0.3, 0.3]);
    % Set title for the CDF plot
    title(['CDF with p = ', num2str(p)]);
    % Label x-axis
    xlabel('Number of Successes');
    % Label y-axis
    ylabel('Cumulative Probability');
    % Add a grid for better visualization
    grid on;
end

% Add a super title for the entire figure
sgtitle('Binomial Distribution with n = 20');
