A = [1 5 1; -2 1 0; 3 2 -5];
[LA,UA]=lu(A);
%Q1: Yes LA stores the lower triangle. 
[L,U,P]=lu(A);
%Q2: Yes, L stores the lower triangle with 1's at (1,1), (2,2) and (3,3)
%Q3: If you multiply a permutation matrix by its ' matrix you get the identity
inv_LU = U\(L\P);
inv_A = inv(A);
inv_err = inv_LU - inv_A;
%Q4: No, because of rounding errors in inv_LU.

b = [14; 0; -8];
Pb = P* b;
%Q5: Pb is a permutation of b since we multiplied it by the Permute matrix
y = L\Pb;
x = U\y;
z = A\b;
xz_err = x - z;