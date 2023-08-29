% logicalIndexing [script]

clear all; close all; clc

c =  imread('42049.jpg'); % 8 bits por pixel
                          % grayscale [0...255]
orig = c;

mantes = min(c(:));
Mantes = max(c(:));

%Logical indexing
cL = c < 40;
c(cL) = 40;
cL = c > 100;
c(cL) = 100;

figure, imshow(orig), title('orig')
figure, imshow(c), title('c')

mdepois = min(c(:));
Mdepois = max(c(:));

imwrite(c, '42049_40-100.png');
