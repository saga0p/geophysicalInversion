A = imread('black.jfif');
A = rgb2gray(A);
imshow(A)
title(['Original (',sprintf('Rank %d)',rank(double(A)))])

//adding a homogeneous solid image below the original image , then computing the rank
//the final rank increases by 1 
// B=ones(100,299);
// C=[A;B];
// imshow(C)
// A=C;
// title(['Original (',sprintf('Rank %d)',rank(double(A)))])
