% Author: Joe Webster
% Lydia De Wolfe | Dr. Liu
% Lab 7
clear all;
close all;
clc;

% Problem 1
x = [-2.1 -1.3 0.1 0.5 1.4 2.0];
y = [2.2 5.1 -1.0 0.1 0.6 1.8];

% Problem 3
n = length(x);
A = zeros(n,n);
for i=1:n
    for j=1:n
        A(i,j) = x(i)^(6-j)
    end
end

% Problem 4
p = A\y'

% error check
err = max(abs(polyval(p,x)-y));
fprintf('max error in polyval = %e\n', err);

% Problem 6
x1 = linspace(-2.1, 2.0, 101);

% Problem 7
y1 = polyval(p, x1);
y2 = interp1(x, y,x1, 'linear')

% Problem 8
y3 = interp1(x,y,x1, 'cubic')

% Problem 9
y4 = interp1(x,y,x1, 'spline')

% Problem 10
figure
plot(x1, y1, 'k');
hold on
plot(x1, y2, 'b');
plot(x1, y3, 'g');
plot(x1, y4,  'r');
plot(x, y, 'ko');
