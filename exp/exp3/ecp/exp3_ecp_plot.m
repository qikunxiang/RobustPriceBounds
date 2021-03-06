load('exp/exp3/exp3.mat');
dat1 = load('exp/exp3/rst/ecp_set1.mat');
dat2 = load('exp/exp3/rst/ecp_set2.mat');

xx = 0:0.1:1;

figure('Position', [100,100,500,250]);
[ha, pos] = tight_subplot(1, 1, [0.15, 0.15], [0.13, 0.07], [0.08, 0.02]);
hold on;
sl = plot(xx, price_bounds(402:412, 2), ...
    'LineStyle', ':', 'Color', 'k', 'LineWidth', 1);
su = plot(xx, price_bounds(402:412, 1), ...
    'LineStyle', '-', 'Color', 'k', 'LineWidth', 1);
rl1 = plot(xx, dat1.out_bounds(:, 2), 'LineStyle', ':', ...
    'Color', 'b', 'LineWidth', 1);
ru1 = plot(xx, dat1.out_bounds(:, 1), 'LineStyle', '-', ...
    'Color', 'b', 'LineWidth', 1);
rl2 = plot(xx, dat2.out_bounds(:, 2), 'LineStyle', ':', ...
    'Color', 'r', 'LineWidth', 1);
ru2 = plot(xx, dat2.out_bounds(:, 1), 'LineStyle', '-', ...
    'Color', 'r', 'LineWidth', 1);
legend([sl, su, rl1, ru1, rl2, ru2], ...
    'simulated bid price', 'simulated ask price', ...
    'LB (V+B+S)', 'UB (V+B+S)', ...
    'LB (V+B+S+R)', 'UB (V+B+S+R)', ...
    'Location', 'northeast');
legend boxoff
xlabel('strike');
ylabel('price');
title('ECP');

