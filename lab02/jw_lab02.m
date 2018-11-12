% Lydia Tamara De Wolf
% Joseph Webster
% Lecture Section: Dr. Liu, M W, 8:30 - 9:20

% Problem 1
A = magic(5);

% Problem 2
B = [1;3;2;-1;4];

% Problem 3
M = [A, B];

% Problem 4
rank_A = rank(A);
rank_M = rank(M);

% Q1: Yes, the system with matrix M is consistent because there exists no non-zero values in 'b' of the matrix M = A|b where any row of A is all zeros

% Problem 5
rref_M = rref(M);

% Problem 6
C = rand(7, 7);

% Problem 7
D = rand(1,7);

% Problem 8
transpose_D = transpose(D);

% Q2: Transpose() returns a matrix Bnxm, where the original is Amxn 

% Problem 9
N = [C, transpose_D];

% Problem 10
rref_N = rref(N);

% Problem 11
figure;
x = [0:0.1:5];
y1 = (3-x)/2;
y2 = x;
plot(x,y1,'red');
hold on;
plot(x,y2,'blue');
grid off;

% Q3: figure creates a figure window

% Q4: plot plots the lines with the associated color (line_1, line_2, color)

% Q5: keeps the graph from resetting

% Q6: shows/hides the grid on the graph

% Q7: yes it has a unique solution: x = 1, y = 1

% Problem 12
figure;
[x,y] = meshgrid(-5:0.1:5,-5:0.1:5);
z1 = 4-2*x-y;
z2 = -x+y-1;
z3 = 3*x+2*y-6;
surf(x,y,z1);
hold on;
surf(x,y,z2);
hold on;
surf(x,y,z3);

% Q8: displays a grid in 2D/3D
% Q9: Plots a parametric surfice

% Problem 13
inf_sol = [1 1 1 1; 1 1 1 1; 1 1 1 1];
figure;
[x,y]=meshgrid(-5:0.1:5,-5:0.1:5);
z1 = 1-x-y;
z2 = 1-x-y;
z3 = 1-x-y;
surf(x,y,z1);
hold on;
surf(x,y,z2);
hold on;
surf(x,y,z3);

no_sol = [1 1 1 1; 1 1 1 2; 1 1 1 3];
figure;
[x,y] = meshgrid(-5:0.1:5,-5:0.1:5);
z1 = 1-x-y;
z2 = 2-x-y;
z3 = 3-x-y;
surf(x,y,z1);
hold on;
surf(x,y,z2);
hold on;
surf(x,y,z3);

uni_sol = [1 0 0 1; 0 1 0 1; 0 0 1 1]
figure;
[x,y] = meshgrid(-5:0.1:5,-5:0.1:5);
z1 = 1-x;
z2 = 1-y;
z3 = 1;
surf(x,y,z1);
hold on;
surf(x,y,z2);
hold on;
surf(x,y,z3);