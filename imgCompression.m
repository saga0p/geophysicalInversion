A = imread('qw.jfif');
A = rgb2gray(A);
%imshow(A)
title(['Original (',sprintf('Rank %d)',rank(double(A)))])

[U1,S1,V1] = svdsketch(double(A),1e-2);
Anew1 = uint8(U1*S1*V1');
%imshow(uint8(Anew1))
title(sprintf('Rank %d approximation',size(S1,1)))

[U2,S2,V2] = svdsketch(double(A),1e-1);
Anew2 = uint8(U2*S2*V2');
%imshow(Anew2)
title(sprintf('Rank %d approximation',size(S2,1)))

[U3,S3,V3,apxErr] = svdsketch(double(A),1e-1,'MaxSubspaceDimension',15);

Anew3 = uint8(U3*S3*V3');
%imshow(Anew3)
title(sprintf('Rank %d approximation',size(S3,1)))

tiledlayout(2,2,'TileSpacing','Compact')
nexttile
imshow(A)
title('Original')
nexttile
imshow(Anew1)
title(sprintf('Rank %d approximation',size(S1,1)))
nexttile
imshow(Anew2)
title(sprintf('Rank %d approximation',size(S2,1)))
nexttile
imshow(Anew3)
title(sprintf('Rank %d approximation',size(S3,1)))
