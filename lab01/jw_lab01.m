% Lydia Tamara De Wolf
% Joseph Webster
% Lecture Section: Dr. Liu, M W, 8:30 - 9:20  

%% basic operations with matrices
% Problem 1
A=[1 2 -10 4; 3 4 5 -6; 3 3 -2 5];
B=[3 3 4 2];

% Problem 2
lengthA = length(A);
lengthB = length(B);
% Q1: length(X) returns the length of vector X.  It is equivalent to MAX(SIZE(X)) for non-empty arrays and 0 for empty ones.

% Problem 3
C=[A; B];

% Problem 4
D=C(2:4,3:4);

% Problem 5
EqualSpaced=0:pi/10:2*pi;
EqualSpaced1=linspace(0,2*pi,21);

% Problem 6
%% Max, min, sum and mean
maxcolA=max(A);
mincolA=min(A);

% Problem 7
maxrowA=max(A,[],2);
minrowA=min(A,[],2);

maxA=max(maxcolA);
minA=min(mincolA);

% Problem 8
meancolA=mean(A);
meanrowA=mean(A,2);
sumcolA=sum(A);
sumrowA=sum(A,2);
meanA=mean(meancolA);
sumA=sum(sumcolA);

% Q2: Mean() calculates the mean value of a column; Sum() calculates the sum of a column.

% Problem 9
%% Matrix addition/subtraction, and multiplication
F=randi([-4 4],5,3);
G=randi([-4 4],5,3);

% Problem 10
ScMultF=0.4*F;
SumFG=F+G;
DiffFG=F-G;
ElProdFG=F.*G;

% Q3: The .* operator multiplies each index of F by the matching index of G. So ElProdFG(i, j) = F(i, j) * G(i, j).

% Problem 11
sizeF=size(F);
sizeA=size(A);

% Q4: Yes, we can multiply F and A in that order. The number of columns of F are equivalent to the number of rows in A. (5x3)*(3x4) = (5x4)

% Problem 12
H=F*A;

% Q5: The dimensions of H are the number of rows in F by the number of columns in A. So H is a 5x4 matrix.

% Problem 13
eye33=eye(3,3);

% Problem 14
zeros53=zeros(5,3);
ones42=ones(4,2);

% Q6: Zeros() returns a matrix full of zeros with a size of (m, n); Ones() returns a matrix full of 1's with a size of (m, n).

% Problem 15
S=diag([1 2 7]);

% Problem 16
R=rand(6,6);
diagR=diag(R);

% Problem 17
diag121=spdiags([-ones(10,1) 2*ones(10,1) -ones(10,1)], [-1 0 1], 10, 10);
full(diag121);

% Q7: "spdiags()" creates a sparse matrix. In this case, it creates a matrix where there are 3 main diagonals at the main diagonal (K = 0, with a row full of -1), diagonal above the main one (K > 0 or in this case, K = 1 with a row full of 2), and diagonal below the main one (K < 0 or in this case, K = -1 with a row full of -1). Only non-zeros are stored, so we use "full()" to fill in the remaining indicees of the sparse matrix with zeros.
