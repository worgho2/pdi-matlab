% hello
clear all, close all, clc
a = [-3 0; 0.25 63.6; 0.5 270.9]
%Trunca entre [0 255] e os não inteiros
%são arredondados para o inteiro mais próximo
b = uint8(a)
%Conversões sobre uma imagem de entrada uint8
%im2double
%https://www.mathworks.com/help/matlab/ref/im2double.html
%I2 = im2double(I) converts the image I to double precision.
%I can be a grayscale intensity image, a truecolor image, or a binary
%image. im2double rescales the output from integer data types to the range
%[0, 1].
%Para o MATLAB, uma imagem 'double precision' está na faixa [0 1].
%Como a imagem de entrada é uint8, a im2double faz o 'rescaling' para
%adaptar para a faixa [0 1]: 0->0, 255->1, apenas dividindo todos
%os valores por 255.
c = im2double(b)
%Adapta para a faixa [0 255]: 0->0, 255->255
d = im2uint8(b)
%Convert matrix to grayscale image
%https://www.mathworks.com/help/images/ref/mat2gray.html
%minimo(b)->0, maximo(b)->1. Isto é chamado de 'normalização' ou 'ajuste
%de contraste'. Uma vez que o mínimo em b é 0 e o máximo em b é 255, o
%resultado é o mesmo que do im2double.
g = mat2gray(b)
bd = double(b) %para fazer operações sobre 'b' em double precision
g2 = ((bd-min(bd(:))) / (max(bd(:))-min(bd(:))))*1 %igual ao mat2gray(b)