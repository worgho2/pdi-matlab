% graysUint8 [script]

clear all; close all; clc

v = 0:1:255;

v = uint8(v);
figure, imshow(v), title('v')

v2 = repmat(v, 5, 1);
figure, imshow(v2), title('v2')