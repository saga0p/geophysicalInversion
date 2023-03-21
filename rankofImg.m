A = imread('black.jfif');
A = rgb2gray(A);
imshow(A)
title(['Original (',sprintf('Rank %d)',rank(double(A)))])
