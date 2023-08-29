% submatriz [script]

clear all; close all; clc
g = imread('42049.jpg');
figure, imshow(g)

%canto superior esquerdo: 10,50
%canto inferior direito: 30,300
crop = g(10:30,50:300);
figure, imshow(crop)

imwrite(crop, 'submatriz.png');

g2 = g;
g2(10:30,50:300) = 0;
figure, imshow(g2)