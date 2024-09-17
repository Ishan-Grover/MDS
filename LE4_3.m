clc;
clear all;

% Define a range of x values for plotting
% We go slightly beyond the interval (0,1) to make sure edges are handled properly
x = linspace(-0.1, 1.1, 1000);

% (a) Compute and plot the Probability Density Function (p.d.f.)
% p.d.f. is defined as f(x) = 2x for 0 < x < 1, otherwise 0
pdf_x = 2 * x; % Compute 2x for all x
pdf_x(x <= 0 | x >= 1) = 0; % Set values to 0 outside the interval (0,1)

% Create a figure for plotting
figure;

% Plot the p.d.f. using a bar plot
subplot(2,1,1); % Create a subplot in the top half of the figure
plot(x, pdf_x, 'b', 'LineWidth', 2); % Plot p.d.f. with blue line
title('Probability Density Function (p.d.f.)'); % Title of the plot
xlabel('x'); % x-axis label
ylabel('f(x)'); % y-axis label
grid on; % Add grid lines to the plot

% (b) Compute and plot the Cumulative Distribution Function (c.d.f.)
% c.d.f. is defined as F(x) = x^2 for 0 < x < 1, otherwise 0 or 1
cdf_x = x.^2; % Compute x^2 for all x
cdf_x(x <= 0) = 0; % Set values to 0 for x <= 0
cdf_x(x >= 1) = 1; % Set values to 1 for x >= 1

% Plot the c.d.f. using stairs plot
subplot(2,1,2); % Create a subplot in the bottom half of the figure
plot(x, cdf_x, 'r', 'LineWidth', 2); % Plot c.d.f. with red line
title('Cumulative Distribution Function (c.d.f.)'); % Title of the plot
xlabel('x'); % x-axis label
ylabel('F(x)'); % y-axis label
grid on; % Add grid lines to the plot

% (c) Find the quantiles (0.25, 0.50, 0.75) of the c.d.f.
% Quantiles are found by solving F(x) = q where q is the quantile
quantiles = [0.25, 0.50, 0.75]; % Define the quantiles to find
quantile_values = sqrt(quantiles); % Solve x^2 = q, so x = sqrt(q)

% Display the quantiles
fprintf('Quantiles of the c.d.f.:\n');
fprintf('0.25 Quantile: %f\n', quantile_values(1)); % Print the 0.25 quantile
fprintf('0.50 Quantile: %f\n', quantile_values(2)); % Print the 0.50 quantile
fprintf('0.75 Quantile: %f\n', quantile_values(3)); % Print the 0.75 quantile
