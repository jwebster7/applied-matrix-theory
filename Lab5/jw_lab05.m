% Author: Joe Webster
% Instructor(s): Lydia De Wolfe | Dr. Liu
% Lab 5
% M W F | 8:30 - 9:30
%%
% Timing Multiplications in Matlab

% dimensions to test over
mul_n = [ 100, 200, 400, 800, 1600 ];

% vector to gather results
mul_time = zeros(size(mul_n));

% loop over dimensions
for i=1:length(mul_n)
    
    % get the dimension
    n = mul_n(i);

    % variable for accumulating total time
    accum = 0;

    % create two random n-by-n matrices
    A = randn(n,n);
    B = randn(n,n);

    % do several tests, accumulating the total time
    n_tests = 10;
    for test=1:n_tests
        tic;
        C = A*B;
        accum = accum + toc;
    end
    
    % add the average time to the end of the results vector
    mul_time(i) = accum/n_tests;

end

% output the results
fprintf( '|     n | avg. time |\n' );
fprintf( '+-------+-----------+\n' );
for i=1:length(mul_n)
    fprintf( '| %5d | %9.3e |\n', mul_n(i), mul_time(i) );
end
fprintf('\n\n');

%Q1: The time increases by about a factor of 100-500
%%
% Comparing the Methods

% matrix dimension
n = 200;

% form a random matrix
Q = orth(randn(n,n));
d = logspace(0,-10,n);
A = Q*diag(d)*Q';

% generate a random solution
x = randn(n,1);

% generate the right-hand side
b = A*x;

% solve with rref
tic; 
S = rref([A b]);
x_rref=S(:,n+1);
rref_time = toc;
tic;
x_inv = inv(A)*b;
inv_time = toc;
tic;
x_div = A\b;
div_time = toc;


%
% print the results in a table
%
fprintf '| method |   time   |   error   | residual  |\n'
fprintf '+--------+----------+-----------+-----------+\n'

% output the rref results
fprintf '|  rref  |'
fprintf( ' %8.5f | %9.3e | %9.3e |\n', rref_time, norm(x_rref-x)/norm(x), norm(A*x_rref-b)/norm(b) );

fprintf '| inv(A) |'
if exist('x_inv', 'var')
    fprintf( ' %8.5f | %9.3e | %9.3e |\n', inv_time, norm(x_inv-x)/norm(x), norm(A*x_inv-b)/norm(b) );
else
    fprintf( '       not yet implemented        |\n' );
end

fprintf '|  A\\b   |'
if exist('x_div','var')
    fprintf( ' %8.5f | %9.3e | %9.3e |\n', div_time, norm(x_div-x)/norm(x), norm(A*x_div-b)/norm(b) );
else
    fprintf( '       not yet implemented        |\n' );
end
fprintf( '\n' );

%%
% Methods for Solving Linear Systems
% define A1 and b1 here
A1 = [1 3 -2; 0 1 -1; 2 1 2];
b1 = [ 1 ; -1 ; 10];
M1 = [ A1 b1 ];
S1 = rref(M1);
x1_rref = S1(:,4);
x1_inv = inv(A1)*b1;
x1_div = A1\b1;

%Q2: A\b was the fastest, inv(A) was the second fastest, rref took the longest 
%Q3: rref had least amount of error, A\b had the second least amount of error rref, inv(A) had biggest error
%Q4: A\b had smallest, rref was close to A\b, and inv(A) had the most
%Q5: A\b since it has the lowest time/res error and a low error rate