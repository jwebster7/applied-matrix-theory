% Joe Webster
% Lydia De Wolfe | Yijia Liu
% Lab 3

% Problem 1.
ImJPG = imread('baboon.jpg');
imshow(ImJPG);

% Problem 2.
[m,n,l] = size(ImJPG);

% Problem 3.
redChannel = ImJPG(:,:,1);
greenChannel = ImJPG(:,:,2);
blueChannel = ImJPG(:,:,3);
figure;
imshow(redChannel)
figure;
imshow(greenChannel)
figure;
imshow(blueChannel)

% Problem 4.
GrayMatrix=[1/3 1/3 1/3; 1/3 1/3 1/3; 1/3 1/3 1/3];
for i = 1:m
    for j = 1:n
    PixelColor = reshape(double(ImJPG(i,j,:)),3,1);
    ImJPG_Gray(i,j,:) = uint8(GrayMatrix*PixelColor);
    end;
end;
figure;
imshow(ImJPG_Gray)

% Q1: double returns a double precision value for the input.uint8

%Problem 5.
SepiaMatrix=[0.393 0.769 0.189; 0.349 0.686 0.168; 0.272 0.534 0.131];
for i = 1:m
    for j = 1:n
    PixelColor = reshape(double(ImJPG(i,j,:)),3,1);
    ImJPG_Sepia(i,j,:) = uint8(SepiaMatrix*PixelColor);
    end;
end;

%Problem 6.
RedMatrix=[1 0 0; 0 0 0; 0 0 0];
for i = 1:m
    for j = 1:n
    PixelColor = reshape(double(ImJPG(i,j,:)),3,1);
    ImJPG_Red(i,j,:) = uint8(RedMatrix*PixelColor);
    end;
end;
figure;
imshow(ImJPG_Red)

% Q2: Deletes values of blue and green and leaves only red.

%Problem 7.
DelRedMat=[0 0 0; 0 1 0; 0 0 1];
for i = 1:m
    for j = 1:n
    PixelColor = reshape(double(ImJPG(i,j,:)),3,1);
    ImJPG_DeleteRed(i,j,:) = uint8(RedMatrix*PixelColor);
    end;
end;
figure;
imshow(ImJPG_Red)

% Problem 8.
PermuteMatrix=[0 0 0; 0 1 0; 1 0 0];
for i = 1:m
    for j = 1:n
    PixelColor = reshape(double(ImJPG(i,j,:)),3,1);
    ImJPG_Permute(i,j,:) = uint8(PermuteMatrix*PixelColor);
    end;
end;
figure;
imshow(ImJPG_Permute)

% Problem 9.
SaturateMatrix=[0.5 0 0; 0 2 0; 0 0 1];
for i = 1:m
    for j = 1:n
    PixelColor = reshape(double(ImJPG(i,j,:)),3,1);
    ImJPG_Saturate(i,j,:) = uint8(SaturateMatrix*PixelColor);
    end;
end;
figure;
imshow(ImJPG_Saturate)

% Q3: Halfs the red, doubles the green, and leaves the blue alone. 

%Problem 10.
ImJPG_Invert = 255-ImJPG;
figure;
imshow(ImJPG_Invert);
