% Joe Webster
% Lydia De Wolfe | Yijia Liu
% Lab 11

% Problem 1
t=linspace(0,2*pi,100);
X=[cos(t);sin(t)];
figure(1);
plot(X(1,:),X(2,:),'b');
axis equal

% Problem 2
A = [2 1;-1 1];
AX = A*X;
figure(2);
plot(AX(1,:),AX(2,:),'b');
axis equal

% Problem 3
[U,S,V] = svd(A)

% Problem 4
figure(1);
hold on;
quiver(0,0,V(1,1),V(2,1),0,'r');
quiver(0,0,V(1,2),V(2,2),0,'g');
hold off;

% Problem 5
figure(2);
hold on;
quiver(0,0,S(1,1)*U(1,1),S(1,1)*U(2,1),0,'r');
quiver(0,0,S(2,2)*U(1,2),S(2,2)*U(2,2),0,'g');
hold off;

% Problem 6
%% (start a new cell)
Img = double(imread('TarantulaNebula.png'));
figure(3);
image(Img);
colormap(gray(256));

% Problem 7
[UImg, SImg, VImg] = svd(Img);

% Problem 8
figure(4);
semilogy(diag(SImg));

% Problem 9
%% (start a new cell)
k = 59;

% compressed image
C = UImg(:,1:k);
D = VImg(:,1:k)*SImg(1:k,1:k);

% compression percentage
pct = 1 - (numel(C)+numel(D))/numel(Img);
figure(5);
image(C*D');
colormap(gray(256));
title( sprintf( '%.2f%% compression', 100*pct ) );

figure(6);
image(Img);
colormap(gray(256));
title( 'Original' );
