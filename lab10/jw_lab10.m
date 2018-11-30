%% Joe Webster
% Lydia De Wolfe | Dr. Yijia Liu
% Lab 10 
%

% fake a corrupted signal
n    = 5;
xcor = randn(n,1);

% the delta parameter
delta = 10;

% the sparse identity matrix
I = speye(n);

% a vector of all 1s
e = ones(n,1);

% the sparse D matrix
D = spdiags( [-e,e], [0,1], n-1, n );

% A is just I stacked on top of delta D
A = [ I; delta*D ];

% b is xcor stacked on top of n-1 zeros
b = [ xcor; zeros(n-1,1) ];

% make sure the pieces look right
disp('A = ')
disp(A)

disp('full(A) = ')
disp(full(A))

disp('b = ')
disp(b)


%% Part 1

% generate the noisy signal
n = 500;
t = linspace(0,1,n)';
x = sin( 3*pi*t ).*cos(pi/2*t);
rng(1);
xcor = x + 0.2*randn(n,1);

% the delta parameter
delta = 1;

% TASK: Define the matrix A1

% TASK: Define the vector b1

% find the solution
if exist('A1','var') & exist('b1','var')
    y1 = A1\b1;
    % make sure that A is a sparse matrix
    if ~issparse(A1)
       error('Error: ''A1'' needs to be a sparse matrix.'); 
    end
else
    warning( 'Not all variables are defined.' );
end


% plot the data
figure(1);
plot( t, xcor, 'Color', [.6,.6,1] );
hold on;
plot( t, x, 'k', 'LineWidth', 2 );
if exist('y1','var')
    plot( t, y1, 'r', 'LineWidth', 2 );
    legend( 'corrupted', 'original', 'reconstructed' );
else
    legend( 'corrupted', 'original' );
end
hold off;
xlabel('time');
ylabel('amplitude');

%% Part 2: Another small example
%
%  Starting small to make sure the matrices and vectors look right.

% fake a corrupted signal
n    = 5;
xcor = randn(n,1);

% the delta parameter
delta = 10;

% the sparse identity matrix
I = speye(n);

% a vector of all 1s
e = ones(n,1);

% TASK: the sparse D2 matrix

% A is just I stacked on top of D
A = [ I; delta*D2 ];

% b is xcor stacked on top of n-2 zeros
b = [ xcor; zeros(n-2,1) ];

% make sure the pieces look right
disp('A = ')
disp(A)

disp('full(A) = ')
disp(full(A))

disp('b = ')
disp(b)

%% Part 3

% generate the signal again
n = 500;
t = linspace(0,1,n)';
x = sin( 3*pi*t ).*cos(pi/2*t);
rng(1);
xcor = x + 0.2*randn(n,1);

% the delta parameter
delta = 1;

% TASK: Define the matrix A3

% TASK: Define the vector b3

% TASK: Define the vector y3

for v={ 'A3', 'b3', 'y3' }
   if ~exist(char(v),'var')
       warning( sprintf('variable ''%s'' is not defined.', char(v) ) );
   end
end

% make sure that A is a sparse matrix
if exist('A3', 'var') & ~issparse(A3)
   error('Error: ''A3'' needs to be a sparse matrix.'); 
end


% plot the data
figure(1);
plot( t, xcor, 'Color', [.6,.6,1] );
hold on;
plot( t, x, 'k', 'LineWidth', 2 );
if exist('y3','var')
    plot( t, y3, 'r', 'LineWidth', 2 );
    legend( 'corrupted', 'original', 'reconstructed' );
else
    legend( 'corrupted', 'original' );
end
hold off;
xlabel('time');
ylabel('amplitude');
