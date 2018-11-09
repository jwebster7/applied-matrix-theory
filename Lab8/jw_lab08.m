% Author: Joe Webster
% Lydia De Wolfe | Dr. Liu
% Lab 8
%% Part 1
%

% define the vector x
x_part1 = [ 1; 3 ];

% define the target vector
b = [ 2.5; 1 ];

% define the e1 and e2 vectors
e1 = [ 1; 0 ]; e2 = [ 0; 1 ];

% define two vectors for the span
v1 = [ 1; -2 ]; v2 = [ -1; -1 ];

% define A with columns v1 and v2
A = [ v1, v2 ];

% set up the plot
f = figure(1);
pos = get(f,'Position');
fig_h = pos(4);
fig_w = pos(3);
pos(1) = pos(1) - (2.25*fig_h-fig_w)/2;
pos(3) = 2.25*fig_h;
set(f,'Position',pos);

% draw the original coordinate system
bbc = 6;
subplot(1,2,1);
draw_coords(e1,e2,bbc);
draw_vec(e1, 'red', bbc);
draw_vec(e2, 'blue', bbc);
draw_vec(x_part1, 'magenta', bbc);

% draw the new coordinate system
subplot(1,2,2);
draw_coords(A*e1,A*e2,bbc);
draw_vec(A*e1, 'red', bbc);
draw_vec(A*e2, 'blue', bbc);
draw_vec(b, [0.5,0.5,0.5], bbc );
draw_vec(A*x_part1, 'magenta', bbc);

fprintf('\n\n************************************************************\n');
fprintf('* Part 1\n');
fprintf('************************************************************\n');

fprintf( '\n  error in Ax-b = %e\n', norm(A*x_part1-b) );
fprintf('\n\n************************************************************\n');

%% Part 2
%

% Q1: B isn't equal to Ax

% define the vectors x1 and x2
x1_part2 = [ 1; 3 ];
x2_part2 = [ 2; -1 ];

% define the target vector
b_part2 = [ 2.5; 1 ];

% define the e1 and e2 vectors
e1 = [ 1; 0 ]; e2 = [ 0; 1 ];

% define two vectors for the span
v1 = [ 1; -2 ]; v2 = [ -0.25; 0.5 ];

% define A with columns v1 and v2
A = [ v1, v2 ];

% set up the plot
f = figure(1);
pos = get(f,'Position');
fig_h = pos(4);
fig_w = pos(3);
pos(1) = pos(1) - (2.25*fig_h-fig_w)/2;
pos(3) = 2.25*fig_h;
set(f,'Position',pos);

% draw the original coordinate system
bbc = 6;
subplot(1,2,1);
draw_coords(e1,e2,bbc);
draw_vec(e1, 'red', bbc);
draw_vec(e2, 'blue', bbc);
draw_vec(x1_part2, 'magenta', bbc);
draw_vec(x2_part2, 'green', bbc);

% draw the new coordinate system
subplot(1,2,1);
draw_coords(A*e1,A*e2,bbc);
draw_vec(A*e1, 'red', bbc);
draw_vec(A*e2, 'blue', bbc);
draw_vec(b_part2, [0.5,0.5,0.5], bbc );
draw_vec(A*x1_part2, 'magenta', bbc);
draw_vec(A*x2_part2, 'green', bbc);

fprintf('\n\n************************************************************\n');
fprintf('* Part 2\n');
fprintf('************************************************************\n');
if b_part2(1) ~= 2
   fprintf( '\n***** WARNING ***** b''s first component needs to be 2!\n' );
end
if x1_part2(2) ~= 0
   fprintf( '\n***** WARNING ***** x1''s second component needs to be 0!\n' );
end
if x2_part2(1) ~= 0
   fprintf( '\n***** WARNING ***** x2''s first component needs to be 0!\n' );
end

fprintf( '\n  error in A*x1-b = %e\n', norm(A*x1_part2-b_part2) );
fprintf( '  error in A*x2-b = %e\n', norm(A*x2_part2-b_part2) );

%% Part 3
%

% define the vector x
%x_part3 = [ 1; 1 ];  % first figure
x_part3 = [ 1; 1 ]; % second figure

% define the e1 and e2 vectors
e1 = [ 1; 0 ]; e2 = [ 0; 1 ];

% define two vectors for the span
v1 = [ 1; -2 ]; v2 = [ -1; -1 ];

% define A with columns v1 and v2
A = [ v1, v2 ];

% set up the plot
f = figure(1);
pos = get(f,'Position');
fig_h = pos(4);
fig_w = pos(3);
pos(1) = pos(1) - (2.25*fig_h-fig_w)/2;
pos(3) = 2.25*fig_h;
set(f,'Position',pos);

% draw the original coordinate system
bbc = 6;
subplot(1,2,1);
draw_coords(e1,e2,bbc);
draw_vec(e1, 'red', bbc);
draw_vec(e2, 'blue', bbc);
draw_vec(x_part3, 'magenta', bbc);

% draw the new coordinate system
subplot(1,2,2);
draw_coords(A*e1,A*e2,bbc);
draw_vec(A*e1, 'red', bbc);
draw_vec(A*e2, 'blue', bbc);
draw_vec(x_part3, [0.5,0.5,0.5], bbc);
draw_vec(A*x_part3, 'magenta', bbc);

fprintf('\n\n************************************************************\n');
fprintf('* Part 3\n');
fprintf('************************************************************\n');

if x_part3(1) > 0 
    fprintf( '\n***** WARNING ***** x''s first component needs to be negative!\n' );
end
if x_part3(2) ~= 2
    fprintf( '\n***** WARNING ***** x''s second component needs to be 2!\n' );
end
fprintf( '\n  error in current guess = %e\n', norm(A*x_part3-sqrt(3)*x_part3) );

fprintf('\n\n************************************************************\n');
