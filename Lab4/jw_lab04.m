% Joe Webster
% Lydia D. Wolfe | Dr. Yijia Liu
% Lab Assignment 4

% load indices from data file
I = load('global-net.dat');

% create the adjacency matrix
A = sparse( I(:,1), I(:,2), 1 );

% print the size of A
fprintf( 'A is %d x %d\n', size(A) );

% define nnz_A, numel_A and frac_nz_A here
nnz_A = nnz(A); 
numel_A = numel(A); 
frac_nz_A = nnz_A/numel_A;

%%
% Analyzing Degree

% compute the degree vector
deg = sum(A,2);

% sort the degree vector (smallest to largest)
sorted_deg = sort(deg);

% plot the degree vector
semilogy( sorted_deg, 'LineWidth', 2 );

% define mhk_ind, par_ind, deg_mhk and deg_par here
mhk_ind = 1937;
par_ind = 2343;
deg_mhk = deg(mhk_ind);
deg_par = deg(par_ind);
%%
% Reachable Cities

% define A2 and A3 here
A2 = A*A;
A3 = A*A2;

% define mhk_3_hop and par_3_hop here
B = A+A2+A3;
mhk_3_hop = nnz(B(mhk_ind,:));
par_3_hop = nnz(B(par_ind,:));
frac_nz_A2 = par_3_hop/mhk_3_hop;